
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int BitmapOrPath ;


 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int bitmapquals ;
 int bitmapselectivity ;

__attribute__((used)) static void
_outBitmapOrPath(StringInfo str, const BitmapOrPath *node)
{
 WRITE_NODE_TYPE("BITMAPORPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(bitmapquals);
 WRITE_FLOAT_FIELD(bitmapselectivity, "%.4f");
}
