
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; } ;
typedef TYPE_1__ RAnal ;


 char* strdup (char const*) ;

__attribute__((used)) static char *get_reg_profile(RAnal *anal) {
 const char *p = ((void*)0);
 switch (anal->bits) {
 case 32: p =
  "=PC	pc\n"
  "=SP	sp\n"
  "=LR	ra\n"
  "=BP	s0\n"

  "gpr	pc	.32	0	0\n"



  "gpr	ra	.32	4	0\n"
  "gpr	sp	.32	8	0\n"
  "gpr	gp	.32	12	0\n"
  "gpr	tp	.32	16	0\n"
  "gpr	t0	.32	20	0\n"
  "gpr	t1	.32	24	0\n"
  "gpr	t2	.32	28	0\n"
  "gpr	s0	.32	32	0\n"
  "gpr	s1	.32	36	0\n"
  "gpr	a0	.32	40	0\n"
  "gpr	a1	.32	44	0\n"
  "gpr	a2	.32	48	0\n"
  "gpr	a3	.32	52	0\n"
  "gpr	a4	.32	56	0\n"
  "gpr	a5	.32	60	0\n"
  "gpr	a6	.32	64	0\n"
  "gpr	a7	.32	68	0\n"
  "gpr	s2	.32	72	0\n"
  "gpr	s3	.32	76	0\n"
  "gpr	s4	.32	80	0\n"
  "gpr	s5	.32	84	0\n"
  "gpr	s6	.32	88	0\n"
  "gpr	s7	.32	92	0\n"
  "gpr	s8	.32	96	0\n"
  "gpr	s9	.32	100	0\n"
  "gpr	s10	.32	104	0\n"
  "gpr	s11	.32	108	0\n"
  "gpr	t3	.32	112	0\n"
  "gpr	t4	.32	116	0\n"
  "gpr	t5	.32	120	0\n"
  "gpr	t6	.32	124	0\n"


  "gpr	ft0	.64	128	0\n"
  "gpr	ft1	.64	136	0\n"
  "gpr	ft2	.64	144	0\n"
  "gpr	ft3	.64	152	0\n"
  "gpr	ft4	.64	160	0\n"
  "gpr	ft5	.64	168	0\n"
  "gpr	ft6	.64	176	0\n"
  "gpr	ft7	.64	184	0\n"
  "gpr	fs0	.64	192	0\n"
  "gpr	fs1	.64	200	0\n"
  "gpr	fa0	.64	208	0\n"
  "gpr	fa1	.64	216	0\n"
  "gpr	fa2	.64	224	0\n"
  "gpr	fa3	.64	232	0\n"
  "gpr	fa4	.64	240	0\n"
  "gpr	fa5	.64	248	0\n"
  "gpr	fa6	.64	256	0\n"
  "gpr	fa7	.64	264	0\n"
  "gpr	fs2	.64	272	0\n"
  "gpr	fs3	.64	280	0\n"
  "gpr	fs4	.64	288	0\n"
  "gpr	fs5	.64	296	0\n"
  "gpr	fs6	.64	304	0\n"
  "gpr	fs7	.64	312	0\n"
  "gpr	fs8	.64	320	0\n"
  "gpr	fs9	.64	328	0\n"
  "gpr	fs10	.64	336	0\n"
  "gpr	fs11	.64	344	0\n"
  "gpr	ft8	.64	352	0\n"
  "gpr	ft9	.64	360	0\n"
  "gpr	ft10	.64	368	0\n"
  "gpr	ft11	.64	376	0\n"
  "gpr	fcsr	.32	384	0\n"
  "flg	nx	.1	3072	0\n"
  "flg	uf	.1	3073	0\n"
  "flg	of	.1	3074	0\n"
  "flg	dz	.1	3075	0\n"
  "flg	nv	.1	3076	0\n"
  "flg	frm	.3	3077	0\n"
  ;

  break;
 case 64: p =
  "=PC	pc\n"
  "=SP	sp\n"
  "=LR	ra\n"
  "=BP	s0\n"

  "gpr	pc	.64	0	0\n"



  "gpr	ra	.64	8	0\n"
  "gpr	sp	.64	16	0\n"
  "gpr	gp	.64	24	0\n"
  "gpr	tp	.64	32	0\n"
  "gpr	t0	.64	40	0\n"
  "gpr	t1	.64	48	0\n"
  "gpr	t2	.64	56	0\n"
  "gpr	s0	.64	64	0\n"
  "gpr	s1	.64	72	0\n"
  "gpr	a0	.64	80	0\n"
  "gpr	a1	.64	88	0\n"
  "gpr	a2	.64	96	0\n"
  "gpr	a3	.64	104	0\n"
  "gpr	a4	.64	112	0\n"
  "gpr	a5	.64	120	0\n"
  "gpr	a6	.64	128	0\n"
  "gpr	a7	.64	136	0\n"
  "gpr	s2	.64	144	0\n"
  "gpr	s3	.64	152	0\n"
  "gpr	s4	.64	160	0\n"
  "gpr	s5	.64	168	0\n"
  "gpr	s6	.64	176	0\n"
  "gpr	s7	.64	184	0\n"
  "gpr	s8	.64	192	0\n"
  "gpr	s9	.64	200	0\n"
  "gpr	s10	.64	208	0\n"
  "gpr	s11	.64	216	0\n"
  "gpr	t3	.64	224	0\n"
  "gpr	t4	.64	232	0\n"
  "gpr	t5	.64	240	0\n"
  "gpr	t6	.64	248	0\n"

  "gpr	ft0	.64	256	0\n"
  "gpr	ft1	.64	264	0\n"
  "gpr	ft2	.64	272	0\n"
  "gpr	ft3	.64	280	0\n"
  "gpr	ft4	.64	288	0\n"
  "gpr	ft5	.64	296	0\n"
  "gpr	ft6	.64	304	0\n"
  "gpr	ft7	.64	312	0\n"
  "gpr	fs0	.64	320	0\n"
  "gpr	fs1	.64	328	0\n"
  "gpr	fa0	.64	336	0\n"
  "gpr	fa1	.64	344	0\n"
  "gpr	fa2	.64	352	0\n"
  "gpr	fa3	.64	360	0\n"
  "gpr	fa4	.64	368	0\n"
  "gpr	fa5	.64	376	0\n"
  "gpr	fa6	.64	384	0\n"
  "gpr	fa7	.64	392	0\n"
  "gpr	fs2	.64	400	0\n"
  "gpr	fs3	.64	408	0\n"
  "gpr	fs4	.64	416	0\n"
  "gpr	fs5	.64	424	0\n"
  "gpr	fs6	.64	432	0\n"
  "gpr	fs7	.64	440	0\n"
  "gpr	fs8	.64	448	0\n"
  "gpr	fs9	.64	456	0\n"
  "gpr	fs10	.64	464	0\n"
  "gpr	fs11	.64	472	0\n"
  "gpr	ft8	.64	480	0\n"
  "gpr	ft9	.64	488	0\n"
  "gpr	ft10	.64	496	0\n"
  "gpr	ft11	.64	504	0\n"
  "gpr	fcsr	.32	512	0\n"
  "flg	nx	.1	4096	0\n"
  "flg	uf	.1	4097	0\n"
  "flg	of	.1	4098	0\n"
  "flg	dz	.1	4099	0\n"
  "flg	nv	.1	4100	0\n"
  "flg	frm	.3	4101	0\n"
  ;

  break;
 }
 return (p && *p)? strdup (p): ((void*)0);
}
