
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ FACILITY_JSCRIPT ;
 scalar_t__ HRESULT_FACILITY (int ) ;

__attribute__((used)) static inline BOOL is_jscript_error(HRESULT hres)
{
    return HRESULT_FACILITY(hres) == FACILITY_JSCRIPT;
}
