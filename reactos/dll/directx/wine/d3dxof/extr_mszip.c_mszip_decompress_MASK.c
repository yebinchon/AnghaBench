#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* inbuf; char* outbuf; void* hfdi; } ;
typedef  TYPE_1__ fdi_decomp_state ;
struct TYPE_5__ {int /*<<< orphan*/  pfnfree; int /*<<< orphan*/  pfnalloc; } ;
typedef  TYPE_2__ FDI_Int ;

/* Variables and functions */
 unsigned int CAB_BLOCKMAX ; 
 unsigned int CAB_INPUTMAX ; 
 int DECR_DATAFORMAT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,char*,char*) ; 
 int FUNC2 (unsigned int,unsigned int,TYPE_1__*) ; 
 int /*<<< orphan*/  fdi_alloc ; 
 int /*<<< orphan*/  fdi_free ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 

int FUNC4(unsigned int inlen, unsigned int outlen, char* inbuffer, char* outbuffer)
{
  int ret;
  fdi_decomp_state decomp_state;
  FDI_Int fdi;

  FUNC1("(%u, %u, %p, %p)\n", inlen, outlen, inbuffer, outbuffer);

  if ((inlen > CAB_INPUTMAX) || (outlen > CAB_BLOCKMAX))
  {
    FUNC0("Big file not supported yet (inlen = %u, outlen = %u)\n", inlen, outlen);
    return DECR_DATAFORMAT;
  }

  fdi.pfnalloc = fdi_alloc;
  fdi.pfnfree = fdi_free;
  decomp_state.hfdi = (void*)&fdi;

  FUNC3(decomp_state.inbuf, inbuffer, inlen);

  ret = FUNC2(inlen, outlen, &decomp_state);

  FUNC3(outbuffer, decomp_state.outbuf, outlen);

  return ret;
}