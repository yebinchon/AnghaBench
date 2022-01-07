
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned short uintVal; char cVal; short iVal; unsigned short uiVal; int lVal; long long llVal; unsigned long long ullVal; float fltVal; } ;
struct TYPE_7__ {void* vt; TYPE_1__ n3; } ;
struct TYPE_8__ {TYPE_2__ n2; } ;
struct TYPE_9__ {TYPE_3__ n1; } ;
typedef TYPE_4__ VARIANT ;


 int FIXME (char*,unsigned short) ;






 unsigned short LF_NUMERIC ;
 void* VT_EMPTY ;
 void* VT_I1 ;
 void* VT_I2 ;
 void* VT_I4 ;
 void* VT_I8 ;
 void* VT_R4 ;
 void* VT_R8 ;
 void* VT_UI2 ;
 void* VT_UI4 ;
 void* VT_UI8 ;
 void* VT_UINT ;

__attribute__((used)) static int leaf_as_variant(VARIANT* v, const unsigned short int* leaf)
{
    unsigned short int type = *leaf++;
    int length = 2;

    if (type < LF_NUMERIC)
    {
        v->n1.n2.vt = VT_UINT;
        v->n1.n2.n3.uintVal = type;
    }
    else
    {
        switch (type)
        {
        case 144:
            length += 1;
            v->n1.n2.vt = VT_I1;
            v->n1.n2.n3.cVal = *(const char*)leaf;
            break;

        case 132:
            length += 2;
            v->n1.n2.vt = VT_I2;
            v->n1.n2.n3.iVal = *(const short*)leaf;
            break;

        case 129:
            length += 2;
            v->n1.n2.vt = VT_UI2;
            v->n1.n2.n3.uiVal = *leaf;
            break;

        case 139:
            length += 4;
            v->n1.n2.vt = VT_I4;
            v->n1.n2.n3.lVal = *(const int*)leaf;
            break;

        case 131:
            length += 4;
            v->n1.n2.vt = VT_UI4;
            v->n1.n2.n3.uiVal = *(const unsigned int*)leaf;
            break;

        case 138:
            length += 8;
            v->n1.n2.vt = VT_I8;
            v->n1.n2.n3.llVal = *(const long long int*)leaf;
            break;

        case 130:
            length += 8;
            v->n1.n2.vt = VT_UI8;
            v->n1.n2.n3.ullVal = *(const long long unsigned int*)leaf;
            break;

        case 136:
            length += 4;
            v->n1.n2.vt = VT_R4;
            v->n1.n2.n3.fltVal = *(const float*)leaf;
            break;

        case 135:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 6;
            v->n1.n2.vt = VT_EMPTY;
            break;

        case 134:
            length += 8;
            v->n1.n2.vt = VT_R8;
            v->n1.n2.n3.fltVal = *(const double*)leaf;
            break;

        case 133:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 10;
            v->n1.n2.vt = VT_EMPTY;
            break;

        case 137:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 16;
            v->n1.n2.vt = VT_EMPTY;
            break;

        case 142:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 4;
            v->n1.n2.vt = VT_EMPTY;
            break;

        case 141:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 8;
            v->n1.n2.vt = VT_EMPTY;
            break;

        case 140:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 10;
            v->n1.n2.vt = VT_EMPTY;
            break;

        case 143:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 16;
            v->n1.n2.vt = VT_EMPTY;
            break;

        case 128:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 2 + *leaf;
            v->n1.n2.vt = VT_EMPTY;
            break;

        default:
     FIXME("Unknown numeric leaf type %04x\n", type);
            v->n1.n2.vt = VT_EMPTY;
            break;
        }
    }

    return length;
}
