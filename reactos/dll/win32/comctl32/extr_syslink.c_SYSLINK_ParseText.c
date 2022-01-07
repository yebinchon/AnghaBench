
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_10__ {int * szUrl; int * szID; int state; } ;
struct TYPE_11__ {TYPE_1__ Link; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
struct TYPE_12__ {char BreakChar; int Style; } ;
typedef TYPE_3__ SYSLINK_INFO ;
typedef scalar_t__ SL_ITEM_TYPE ;
typedef TYPE_4__* PDOC_ITEM ;
typedef char* LPCWSTR ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (char const*) ;
 void* Alloc (int) ;
 int ERR (char*) ;
 scalar_t__ FALSE ;
 int LIS_ENABLED ;
 scalar_t__ L_MAX_URL_LENGTH ;
 scalar_t__ MAX_LINKID_TEXT ;
 TYPE_4__* SYSLINK_AppendDocItem (TYPE_3__*,char*,int,scalar_t__,TYPE_4__*) ;
 int TRACE (char*,TYPE_3__*,int ) ;
 scalar_t__ TRUE ;
 int WS_DISABLED ;
 int debugstr_w (char*) ;
 int lstrcpynW (int *,char*,int) ;
 int min (int,scalar_t__) ;
 scalar_t__ slLink ;
 scalar_t__ slText ;
 scalar_t__ strlenW (char*) ;
 int strncmpiW (char*,char const*,int ) ;

__attribute__((used)) static UINT SYSLINK_ParseText (SYSLINK_INFO *infoPtr, LPCWSTR Text)
{
    static const WCHAR SL_LINKOPEN[] = { '<','a' };
    static const WCHAR SL_HREF[] = { 'h','r','e','f','=','\"' };
    static const WCHAR SL_ID[] = { 'i','d','=','\"' };
    static const WCHAR SL_LINKCLOSE[] = { '<','/','a','>' };
    LPCWSTR current, textstart = ((void*)0), linktext = ((void*)0), firsttag = ((void*)0);
    int taglen = 0, textlen = 0, linklen = 0, docitems = 0;
    PDOC_ITEM Last = ((void*)0);
    SL_ITEM_TYPE CurrentType = slText;
    LPCWSTR lpID, lpUrl;
    UINT lenId, lenUrl;

    TRACE("(%p %s)\n", infoPtr, debugstr_w(Text));

    for(current = Text; *current != 0;)
    {
        if(*current == '<')
        {
            if(!strncmpiW(current, SL_LINKOPEN, ARRAY_SIZE(SL_LINKOPEN)) && (CurrentType == slText))
            {
                BOOL ValidParam = FALSE, ValidLink = FALSE;

                if(*(current + 2) == '>')
                {

                    taglen = 3;
                    ValidLink = TRUE;
                    ValidParam = TRUE;
                    firsttag = current;
                    linklen = 0;
                    lpID = ((void*)0);
                    lpUrl = ((void*)0);
                }
                else if(*(current + 2) == infoPtr->BreakChar)
                {

                    LPCWSTR *CurrentParameter = ((void*)0), tmp;
                    UINT *CurrentParameterLen = ((void*)0);

                    taglen = 3;
                    tmp = current + taglen;
                    lpID = ((void*)0);
                    lpUrl = ((void*)0);

CheckParameter:

                    if(!strncmpiW(tmp, SL_HREF, ARRAY_SIZE(SL_HREF)))
                    {
                        taglen += 6;
                        ValidParam = TRUE;
                        CurrentParameter = &lpUrl;
                        CurrentParameterLen = &lenUrl;
                    }
                    else if(!strncmpiW(tmp, SL_ID, ARRAY_SIZE(SL_ID)))
                    {
                        taglen += 4;
                        ValidParam = TRUE;
                        CurrentParameter = &lpID;
                        CurrentParameterLen = &lenId;
                    }
                    else
                    {
                        ValidParam = FALSE;
                    }

                    if(ValidParam)
                    {


                        ValidParam = FALSE;
                        *CurrentParameter = current + taglen;
                        *CurrentParameterLen = 0;

                        for(tmp = *CurrentParameter; *tmp != 0; tmp++)
                        {
                            taglen++;
                            if(*tmp == '\"')
                            {
                                ValidParam = TRUE;
                                tmp++;
                                break;
                            }
                            (*CurrentParameterLen)++;
                        }
                    }
                    if(ValidParam)
                    {




                        if(*tmp == infoPtr->BreakChar)
                        {

                            taglen++;
                            tmp++;
                            goto CheckParameter;
                        }
                        else if(*tmp == '>')
                        {

                            ValidLink = TRUE;
                            taglen++;
                        }
                    }
                }

                if(ValidLink && ValidParam)
                {


                    CurrentType = slLink;
                    linktext = current + taglen;
                    linklen = 0;
                    firsttag = current;
                }
                else
                {
                    taglen = 1;
                    lpID = ((void*)0);
                    lpUrl = ((void*)0);
                    if(textstart == ((void*)0))
                    {
                        textstart = current;
                    }
                }
            }
            else if(!strncmpiW(current, SL_LINKCLOSE, ARRAY_SIZE(SL_LINKCLOSE)) && (CurrentType == slLink) && firsttag)
            {

                if(textstart != ((void*)0) && textlen > 0 && firsttag > textstart)
                {
                    Last = SYSLINK_AppendDocItem(infoPtr, textstart, firsttag - textstart, slText, Last);
                    if(Last == ((void*)0))
                    {
                        ERR("Unable to create new document item!\n");
                        return docitems;
                    }
                    docitems++;
                    textstart = ((void*)0);
                    textlen = 0;
                }


                current += 4;
                if(linktext != ((void*)0) && linklen > 0)
                {
                    Last = SYSLINK_AppendDocItem(infoPtr, linktext, linklen, slLink, Last);
                    if(Last == ((void*)0))
                    {
                        ERR("Unable to create new document item!\n");
                        return docitems;
                    }
                    docitems++;
                    if(CurrentType == slLink)
                    {
                        int nc;

                        if(!(infoPtr->Style & WS_DISABLED))
                        {
                            Last->u.Link.state |= LIS_ENABLED;
                        }

                        if(lpID != ((void*)0))
                        {
                            nc = min(lenId, strlenW(lpID));
                            nc = min(nc, MAX_LINKID_TEXT - 1);
                            Last->u.Link.szID = Alloc((nc + 1) * sizeof(WCHAR));
                            if(Last->u.Link.szID != ((void*)0))
                            {
                                lstrcpynW(Last->u.Link.szID, lpID, nc + 1);
                            }
                        }
                        else
                            Last->u.Link.szID = ((void*)0);
                        if(lpUrl != ((void*)0))
                        {
                            nc = min(lenUrl, strlenW(lpUrl));
                            nc = min(nc, L_MAX_URL_LENGTH - 1);
                            Last->u.Link.szUrl = Alloc((nc + 1) * sizeof(WCHAR));
                            if(Last->u.Link.szUrl != ((void*)0))
                            {
                                lstrcpynW(Last->u.Link.szUrl, lpUrl, nc + 1);
                            }
                        }
                        else
                            Last->u.Link.szUrl = ((void*)0);
                    }
                    linktext = ((void*)0);
                }
                CurrentType = slText;
                firsttag = ((void*)0);
                textstart = ((void*)0);
                continue;
            }
            else
            {

                taglen = 1;
                linklen++;
                if(CurrentType == slText && textstart == ((void*)0))
                {
                    textstart = current;
                }
            }

            textlen += taglen;
            current += taglen;
        }
        else
        {
            textlen++;
            linklen++;


            if(textstart == ((void*)0) && CurrentType == slText)
            {
                textstart = current;
            }

            current++;
        }
    }

    if(textstart != ((void*)0) && textlen > 0)
    {
        Last = SYSLINK_AppendDocItem(infoPtr, textstart, textlen, CurrentType, Last);
        if(Last == ((void*)0))
        {
            ERR("Unable to create new document item!\n");
            return docitems;
        }
        if(CurrentType == slLink)
        {
            int nc;

            if(!(infoPtr->Style & WS_DISABLED))
            {
                Last->u.Link.state |= LIS_ENABLED;
            }

            if(lpID != ((void*)0))
            {
                nc = min(lenId, strlenW(lpID));
                nc = min(nc, MAX_LINKID_TEXT - 1);
                Last->u.Link.szID = Alloc((nc + 1) * sizeof(WCHAR));
                if(Last->u.Link.szID != ((void*)0))
                {
                    lstrcpynW(Last->u.Link.szID, lpID, nc + 1);
                }
            }
            else
                Last->u.Link.szID = ((void*)0);
            if(lpUrl != ((void*)0))
            {
                nc = min(lenUrl, strlenW(lpUrl));
                nc = min(nc, L_MAX_URL_LENGTH - 1);
                Last->u.Link.szUrl = Alloc((nc + 1) * sizeof(WCHAR));
                if(Last->u.Link.szUrl != ((void*)0))
                {
                    lstrcpynW(Last->u.Link.szUrl, lpUrl, nc + 1);
                }
            }
            else
                Last->u.Link.szUrl = ((void*)0);
        }
        docitems++;
    }

    if(linktext != ((void*)0) && linklen > 0)
    {

        Last = SYSLINK_AppendDocItem(infoPtr, linktext, linklen, slText, Last);
        if(Last == ((void*)0))
        {
            ERR("Unable to create new document item!\n");
            return docitems;
        }
        docitems++;
    }

    return docitems;
}
