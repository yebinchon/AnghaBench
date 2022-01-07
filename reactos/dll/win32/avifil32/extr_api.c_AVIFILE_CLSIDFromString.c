
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCSTR ;
typedef int* LPCLSID ;
typedef int INT ;
typedef int HRESULT ;
typedef int CLSID ;
typedef int BYTE ;


 int CO_E_CLASSSTRING ;
 int S_OK ;
 int TRACE (char*,int const*,int*) ;
 int lstrlenA (scalar_t__) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static HRESULT AVIFILE_CLSIDFromString(LPCSTR idstr, LPCLSID id)
{
  BYTE const *s;
  BYTE *p;
  INT i;
  BYTE table[256];

  if (!idstr) {
    memset(id, 0, sizeof(CLSID));
    return S_OK;
  }


  if (lstrlenA(idstr) != 38)
    return CO_E_CLASSSTRING;

  s = (BYTE const*)idstr;
  if ((s[0]!='{') || (s[9]!='-') || (s[14]!='-') || (s[19]!='-') ||
      (s[24]!='-') || (s[37]!='}'))
    return CO_E_CLASSSTRING;

  for (i = 1; i < 37; i++) {
    if ((i == 9) || (i == 14) || (i == 19) || (i == 24))
      continue;
    if (!(((s[i] >= '0') && (s[i] <= '9')) ||
        ((s[i] >= 'a') && (s[i] <= 'f')) ||
        ((s[i] >= 'A') && (s[i] <= 'F')))
       )
      return CO_E_CLASSSTRING;
  }

  TRACE("%s -> %p\n", s, id);


  memset(table, 0, 256);

  for (i = 0; i < 10; i++)
    table['0' + i] = i;

  for (i = 0; i < 6; i++) {
    table['A' + i] = i+10;
    table['a' + i] = i+10;
  }


  p = (BYTE *) id;

  s++;
  for (i = 0; i < 4; i++) {
    p[3 - i] = table[*s]<<4 | table[*(s+1)];
    s += 2;
  }
  p += 4;
  s++;

  for (i = 0; i < 2; i++) {
    p[1-i] = table[*s]<<4 | table[*(s+1)];
    s += 2;
  }
  p += 2;
  s++;

  for (i = 0; i < 2; i++) {
    p[1-i] = table[*s]<<4 | table[*(s+1)];
    s += 2;
  }
  p += 2;
  s++;


  for (i = 0; i < 2; i++) {
    *p++ = table[*s]<<4 | table[*(s+1)];
    s += 2;
  }
  s++;

  for (i = 0; i < 6; i++) {
    *p++ = table[*s]<<4 | table[*(s+1)];
    s += 2;
  }

  return S_OK;
}
