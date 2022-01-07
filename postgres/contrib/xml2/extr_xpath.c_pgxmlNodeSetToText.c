
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* xmlNodeSetPtr ;
typedef int xmlChar ;
typedef TYPE_2__* xmlBufferPtr ;
struct TYPE_13__ {int doc; } ;
struct TYPE_12__ {int content; } ;
struct TYPE_11__ {int nodeNr; TYPE_3__** nodeTab; } ;


 TYPE_2__* xmlBufferCreate () ;
 int xmlBufferFree (TYPE_2__*) ;
 int xmlBufferWriteCHAR (TYPE_2__*,int *) ;
 int xmlBufferWriteChar (TYPE_2__*,char*) ;
 int xmlNodeDump (TYPE_2__*,int ,TYPE_3__*,int,int ) ;
 int * xmlStrdup (int ) ;
 scalar_t__ xmlStrlen (int *) ;
 int * xmlXPathCastNodeToString (TYPE_3__*) ;

__attribute__((used)) static xmlChar *
pgxmlNodeSetToText(xmlNodeSetPtr nodeset,
       xmlChar *toptagname,
       xmlChar *septagname,
       xmlChar *plainsep)
{
 xmlBufferPtr buf;
 xmlChar *result;
 int i;

 buf = xmlBufferCreate();

 if ((toptagname != ((void*)0)) && (xmlStrlen(toptagname) > 0))
 {
  xmlBufferWriteChar(buf, "<");
  xmlBufferWriteCHAR(buf, toptagname);
  xmlBufferWriteChar(buf, ">");
 }
 if (nodeset != ((void*)0))
 {
  for (i = 0; i < nodeset->nodeNr; i++)
  {
   if (plainsep != ((void*)0))
   {
    xmlBufferWriteCHAR(buf,
           xmlXPathCastNodeToString(nodeset->nodeTab[i]));


    if (i < (nodeset->nodeNr) - 1)
     xmlBufferWriteChar(buf, (char *) plainsep);
   }
   else
   {
    if ((septagname != ((void*)0)) && (xmlStrlen(septagname) > 0))
    {
     xmlBufferWriteChar(buf, "<");
     xmlBufferWriteCHAR(buf, septagname);
     xmlBufferWriteChar(buf, ">");
    }
    xmlNodeDump(buf,
       nodeset->nodeTab[i]->doc,
       nodeset->nodeTab[i],
       1, 0);

    if ((septagname != ((void*)0)) && (xmlStrlen(septagname) > 0))
    {
     xmlBufferWriteChar(buf, "</");
     xmlBufferWriteCHAR(buf, septagname);
     xmlBufferWriteChar(buf, ">");
    }
   }
  }
 }

 if ((toptagname != ((void*)0)) && (xmlStrlen(toptagname) > 0))
 {
  xmlBufferWriteChar(buf, "</");
  xmlBufferWriteCHAR(buf, toptagname);
  xmlBufferWriteChar(buf, ">");
 }
 result = xmlStrdup(buf->content);
 xmlBufferFree(buf);
 return result;
}
