; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_gdb.c_r_debug_gdb_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_gdb.c_r_debug_gdb_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@desc = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [629 x i8] c"=PC\09eip\0A=SP\09esp\0A=BP\09ebp\0A=A0\09eax\0A=A1\09ebx\0A=A2\09ecx\0A=A3\09edx\0A=SN\09oeax\0Agpr\09eax\09.32\090\090\0Agpr\09ecx\09.32\094\090\0Agpr\09edx\09.32\098\090\0Agpr\09ebx\09.32\0912\090\0Agpr\09esp\09.32\0916\090\0Agpr\09ebp\09.32\0920\090\0Agpr\09esi\09.32\0924\090\0Agpr\09edi\09.32\0928\090\0Agpr\09eip\09.32\0932\090\0Agpr\09eflags\09.32\0936\090\0Aseg\09cs\09.32\0940\090\0Aseg\09ss\09.32\0944\090\0Aseg\09ds\09.32\0948\090\0Aseg\09es\09.32\0952\090\0Aseg\09fs\09.32\0956\090\0Aseg\09gs\09.32\0960\090\0Afpu\09st0\09.80\0964\090\0Afpu\09st1\09.80\0974\090\0Afpu\09st2\09.80\0984\090\0Afpu\09st3\09.80\0994\090\0Afpu\09st4\09.80\09104\090\0Afpu\09st5\09.80\09114\090\0Afpu\09st6\09.80\09124\090\0Afpu\09st7\09.80\09134\090\0Agpr\09fctrl\09.32\09144\090\0Agpr\09fstat\09.32\09148\090\0Agpr\09ftag\09.32\09152\090\0Agpr\09fiseg\09.32\09156\090\0Agpr\09fioff\09.32\09160\090\0Agpr\09foseg\09.32\09164\090\0Agpr\09fooff\09.32\09168\090\0Agpr\09fop\09.32\09172\090\0A\00", align 1
@.str.1 = private unnamed_addr constant [798 x i8] c"=PC\09rip\0A=SP\09rsp\0A=BP\09rbp\0A=A0\09rax\0A=A1\09rbx\0A=A2\09rcx\0A=A3\09rdx\0A=SN\09orax\0Agpr\09fake\09.64\09795\090\0Agpr\09rax\09.64\090\090\0Agpr\09rbx\09.64\098\090\0Agpr\09rcx\09.64\0916\090\0Agpr\09rdx\09.64\0924\090\0Agpr\09rsi\09.64\0932\090\0Agpr\09rdi\09.64\0940\090\0Agpr\09rbp\09.64\0948\090\0Agpr\09rsp\09.64\0956\090\0Agpr\09r8\09.64\0964\090\0Agpr\09r9\09.64\0972\090\0Agpr\09r10\09.64\0980\090\0Agpr\09r11\09.64\0988\090\0Agpr\09r12\09.64\0996\090\0Agpr\09r13\09.64\09104\090\0Agpr\09r14\09.64\09112\090\0Agpr\09r15\09.64\09120\090\0Agpr\09rip\09.64\09128\090\0Agpr\09eflags\09.32\09136\090\0Aseg\09cs\09.32\09140\090\0Aseg\09ss\09.32\09144\090\0Aseg\09ds\09.32\09148\090\0Aseg\09es\09.32\09152\090\0Aseg\09fs\09.32\09156\090\0Aseg\09gs\09.32\09160\090\0Afpu\09st0\09.80\09164\090\0Afpu\09st1\09.80\09174\090\0Afpu\09st2\09.80\09184\090\0Afpu\09st3\09.80\09194\090\0Afpu\09st4\09.80\09204\090\0Afpu\09st5\09.80\09214\090\0Afpu\09st6\09.80\09224\090\0Afpu\09st7\09.80\09234\090\0Agpr\09fctrl\09.32\09244\090\0Agpr\09fstat\09.32\09248\090\0Agpr\09ftag\09.32\09252\090\0Agpr\09fiseg\09.32\09256\090\0Agpr\09fioff\09.32\09260\090\0Agpr\09foseg\09.32\09264\090\0Agpr\09fooff\09.32\09268\090\0Agpr\09fop\09.32\09272\090\0A\00", align 1
@.str.2 = private unnamed_addr constant [323 x i8] c"=PC\09eip\0A=SP\09esp\0A=BP\09ebp\0A=A0\09eax\0A=A1\09ebx\0A=A2\09ecx\0A=A3\09edi\0Agpr\09eax\09.32\090\090\0Agpr\09ecx\09.32\094\090\0Agpr\09edx\09.32\098\090\0Agpr\09ebx\09.32\0912\090\0Agpr\09esp\09.32\0916\090\0Agpr\09ebp\09.32\0920\090\0Agpr\09esi\09.32\0924\090\0Agpr\09edi\09.32\0928\090\0Agpr\09eip\09.32\0932\090\0Agpr\09eflags\09.32\0936\090\0Aseg\09cs\09.32\0940\090\0Aseg\09ss\09.32\0944\090\0Aseg\09ds\09.32\0948\090\0Aseg\09es\09.32\0952\090\0Aseg\09fs\09.32\0956\090\0Aseg\09gs\09.32\0960\090\0A\00", align 1
@.str.3 = private unnamed_addr constant [674 x i8] c"=PC\09pc\0A=SP\09sp\0A=BP\09x29\0A=A0\09x0\0A=A1\09x1\0A=A2\09x2\0A=A3\09x3\0A=ZF\09zf\0A=SF\09nf\0A=OF\09vf\0A=CF\09cf\0A=SN\09x8\0Agpr\09x0\09.64\090\090\0Agpr\09x1\09.64\098\090\0Agpr\09x2\09.64\0916\090\0Agpr\09x3\09.64\0924\090\0Agpr\09x4\09.64\0932\090\0Agpr\09x5\09.64\0940\090\0Agpr\09x6\09.64\0948\090\0Agpr\09x7\09.64\0956\090\0Agpr\09x8\09.64\0964\090\0Agpr\09x9\09.64\0972\090\0Agpr\09x10\09.64\0980\090\0Agpr\09x11\09.64\0988\090\0Agpr\09x12\09.64\0996\090\0Agpr\09x13\09.64\09104\090\0Agpr\09x14\09.64\09112\090\0Agpr\09x15\09.64\09120\090\0Agpr\09x16\09.64\09128\090\0Agpr\09x17\09.64\09136\090\0Agpr\09x18\09.64\09144\090\0Agpr\09x19\09.64\09152\090\0Agpr\09x20\09.64\09160\090\0Agpr\09x21\09.64\09168\090\0Agpr\09x22\09.64\09176\090\0Agpr\09x23\09.64\09184\090\0Agpr\09x24\09.64\09192\090\0Agpr\09x25\09.64\09200\090\0Agpr\09x26\09.64\09208\090\0Agpr\09x27\09.64\09216\090\0Agpr\09x28\09.64\09224\090\0Agpr\09x29\09.64\09232\090\0Agpr\09x30\09.64\09240\090\0Agpr\09sp\09.64\09248\090\0Agpr\09pc\09.64\09256\090\0Agpr\09pstate\09.64\09264\090\0A\00", align 1
@.str.4 = private unnamed_addr constant [950 x i8] c"=PC\09pc\0A=SP\09sp\0A=A0\09r0\0A=A1\09r1\0A=A2\09r2\0A=A3\09r3\0Agpr\09r0\09.32\090\090\0Agpr\09r1\09.32\094\090\0Agpr\09r2\09.32\098\090\0Agpr\09r3\09.32\0912\090\0Agpr\09r4\09.32\0916\090\0Agpr\09r5\09.32\0920\090\0Agpr\09r6\09.32\0924\090\0Agpr\09r7\09.32\0928\090\0Agpr\09r8\09.32\0932\090\0Agpr\09r9\09.32\0936\090\0Agpr\09r10\09.32\0940\090\0Agpr\09r11\09.32\0944\090\0Agpr\09r12\09.32\0948\090\0Agpr\09sp\09.32\0952\090\0Agpr\09lr\09.32\0956\090\0Agpr\09pc\09.32\0960\090\0Agpr\09r13\09.32\0952\090\0Agpr\09r14\09.32\0956\090\0Agpr\09r15\09.32\0960\090\0Agpr\09cpsr\09.96\0964\090\0Ammx\09d0\09.64\0968\090\0Ammx\09d1\09.64\0976\090\0Ammx\09d2\09.64\0984\090\0Ammx\09d3\09.64\0992\090\0Ammx\09d4\09.64\09100\090\0Ammx\09d5\09.64\09108\090\0Ammx\09d6\09.64\09116\090\0Ammx\09d7\09.64\09124\090\0Ammx\09d8\09.64\09132\090\0Ammx\09d9\09.64\09140\090\0Ammx\09d10\09.64\09148\090\0Ammx\09d11\09.64\09156\090\0Ammx\09d12\09.64\09164\090\0Ammx\09d13\09.64\09172\090\0Ammx\09d14\09.64\09180\090\0Ammx\09d15\09.64\09188\090\0Ammx\09d16\09.64\09196\090\0Ammx\09d17\09.64\09204\090\0Ammx\09d18\09.64\09212\090\0Ammx\09d19\09.64\09220\090\0Ammx\09d20\09.64\09228\090\0Ammx\09d21\09.64\09236\090\0Ammx\09d22\09.64\09244\090\0Ammx\09d23\09.64\09252\090\0Ammx\09d24\09.64\09260\090\0Ammx\09d25\09.64\09268\090\0Ammx\09d26\09.64\09276\090\0Ammx\09d27\09.64\09284\090\0Ammx\09d28\09.64\09292\090\0Ammx\09d29\09.64\09300\090\0Ammx\09d30\09.64\09308\090\0Ammx\09d31\09.64\09316\090\0Ammx\09fpscr\09.32\09324\090\0A\00", align 1
@.str.5 = private unnamed_addr constant [393 x i8] c"=PC    pc\0A=SP    r15\0A=BP    r14\0Agpr\09r0\09.32\090\090\0Agpr\09r1\09.32\094\090\0Agpr\09r2\09.32\098\090\0Agpr\09r3\09.32\0912\090\0Agpr\09r4\09.32\0916\090\0Agpr\09r5\09.32\0920\090\0Agpr\09r6\09.32\0924\090\0Agpr\09r7\09.32\0928\090\0Agpr\09r8\09.32\0932\090\0Agpr\09r9\09.32\0936\090\0Agpr\09r10\09.32\0940\090\0Agpr\09r11\09.32\0944\090\0Agpr\09r12\09.32\0948\090\0Agpr\09r13\09.32\0952\090\0Agpr\09r14\09.32\0956\090\0Agpr\09r15\09.32\0960\090\0Agpr\09pc\09.32\0964\090\0Agpr\09pr\09.32\0968\090\0Agpr\09sr\09.32\0972\090\0Agpr\09gbr\09.32\0976\090\0Agpr\09mach\09.32\0980\090\0Agpr\09macl\09.32\0984\090\0A\00", align 1
@.str.6 = private unnamed_addr constant [686 x i8] c"=PC    PC\0A=SP    sp\0A=BP    gp\0Agpr\09r0\09.32\090\090\0Agpr\09r1\09.32\094\090\0Agpr\09r2\09.32\098\090\0Agpr\09r3\09.32\0912\090\0Agpr\09r4\09.32\0916\090\0Agpr\09r5\09.32\0920\090\0Agpr\09r6\09.32\0924\090\0Agpr\09r7\09.32\0928\090\0Agpr\09r8\09.32\0932\090\0Agpr\09r9\09.32\0936\090\0Agpr\09r10\09.32\0940\090\0Agpr\09r11\09.32\0944\090\0Agpr\09r12\09.32\0948\090\0Agpr\09r13\09.32\0952\090\0Agpr\09r14\09.32\0956\090\0Agpr\09r15\09.32\0960\090\0Agpr\09r16\09.32\0964\090\0Agpr\09r17\09.32\0968\090\0Agpr\09r18\09.32\0972\090\0Agpr\09r19\09.32\0976\090\0Agpr\09r20\09.32\0980\090\0Agpr\09r21\09.32\0984\090\0Agpr\09r22\09.32\0988\090\0Agpr\09r23\09.32\0992\090\0Agpr\09r24\09.32\0996\090\0Agpr\09r25\09.32\09100\090\0Agpr\09gp\09.32\09104\090\0Agpr\09fp\09.32\09108\090\0Agpr\09sp\09.32\09112\090\0Agpr\09ra\09.32\09116\090\0Agpr\09ea\09.32\09120\090\0Agpr\09ba\09.32\09124\090\0Agpr\09PC\09.32\09128\090\0Agpr\09EID\09.32\09132\090\0Agpr\09EBA\09.32\09136\090\0Agpr\09DEBA\09.32\09140\090\0Agpr\09IE\09.32\09144\090\0Agpr\09IM\09.32\09148\090\0Agpr\09IP\09.32\09152\090\0A\00", align 1
@.str.7 = private unnamed_addr constant [1277 x i8] c"=PC    pc\0A=SP    sp\0A=BP    gp\0Agpr\09zero\09.32\090\090\0Agpr\09at\09.32\094\090\0Agpr\09v0\09.32\098\090\0Agpr\09v1\09.32\0912\090\0Agpr\09a0\09.32\0916\090\0Agpr\09a1\09.32\0920\090\0Agpr\09a2\09.32\0924\090\0Agpr\09a3\09.32\0928\090\0Agpr\09t0\09.32\0932\090\0Agpr\09t1\09.32\0936\090\0Agpr\09t2\09.32\0940\090\0Agpr\09t3\09.32\0944\090\0Agpr\09t4\09.32\0948\090\0Agpr\09t5\09.32\0952\090\0Agpr\09t6\09.32\0956\090\0Agpr\09t7\09.32\0960\090\0Agpr\09s0\09.32\0964\090\0Agpr\09s1\09.32\0968\090\0Agpr\09s2\09.32\0972\090\0Agpr\09s3\09.32\0976\090\0Agpr\09s4\09.32\0980\090\0Agpr\09s5\09.32\0984\090\0Agpr\09s6\09.32\0988\090\0Agpr\09s7\09.32\0992\090\0Agpr\09t8\09.32\0996\090\0Agpr\09t9\09.32\09100\090\0Agpr\09k0\09.32\09104\090\0Agpr\09k1\09.32\09108\090\0Agpr\09gp\09.32\09112\090\0Agpr\09sp\09.32\09116\090\0Agpr\09s8\09.32\09120\090\0Agpr\09ra\09.32\09124\090\0Agpr\09sr\09.32\09128\090\0Agpr\09lo\09.32\09132\090\0Agpr\09hi\09.32\09134\090\0Agpr\09bad\09.32\09140\090\0Agpr\09cause\09.32\09144\090\0Agpr\09pc\09.32\09148\090\0Agpr\09f0\09.32\09152\090\0Agpr\09f1\09.32\09156\090\0Agpr\09f2\09.32\09160\090\0Agpr\09f3\09.32\09164\090\0Agpr\09f4\09.32\09168\090\0Agpr\09f5\09.32\09172\090\0Agpr\09f6\09.32\09176\090\0Agpr\09f7\09.32\09180\090\0Agpr\09f8\09.32\09184\090\0Agpr\09f9\09.32\09188\090\0Agpr\09f10\09.32\09192\090\0Agpr\09f11\09.32\09196\090\0Agpr\09f12\09.32\09200\090\0Agpr\09f13\09.32\09204\090\0Agpr\09f14\09.32\09208\090\0Agpr\09f15\09.32\09212\090\0Agpr\09f16\09.32\09216\090\0Agpr\09f17\09.32\09220\090\0Agpr\09f18\09.32\09224\090\0Agpr\09f19\09.32\09228\090\0Agpr\09f20\09.32\09232\090\0Agpr\09f21\09.32\09236\090\0Agpr\09f22\09.32\09240\090\0Agpr\09f23\09.32\09244\090\0Agpr\09f24\09.32\09248\090\0Agpr\09f25\09.32\09252\090\0Agpr\09f26\09.32\09256\090\0Agpr\09f27\09.32\09260\090\0Agpr\09f28\09.32\09264\090\0Agpr\09f29\09.32\09268\090\0Agpr\09f30\09.32\09272\090\0Agpr\09f31\09.32\09276\090\0Agpr\09fsr\09.32\09280\090\0Agpr\09fir\09.32\09284\090\0Agpr\09unknw\09.32\09288\090\0A\00", align 1
@.str.8 = private unnamed_addr constant [579 x i8] c"=PC    pc\0A=SP    sp\0Agpr\09r0\09.8\090\090\0Agpr\09r1\09.8\091\090\0Agpr\09r2\09.8\092\090\0Agpr\09r3\09.8\093\090\0Agpr\09r4\09.8\094\090\0Agpr\09r5\09.8\095\090\0Agpr\09r6\09.8\096\090\0Agpr\09r7\09.8\097\090\0Agpr\09r8\09.8\098\090\0Agpr\09r9\09.8\099\090\0Agpr\09r10\09.8\0910\090\0Agpr\09r11\09.8\0911\090\0Agpr\09r12\09.8\0912\090\0Agpr\09r13\09.8\0913\090\0Agpr\09r14\09.8\0914\090\0Agpr\09r15\09.8\0915\090\0Agpr\09r16\09.8\0916\090\0Agpr\09r17\09.8\0917\090\0Agpr\09r18\09.8\0918\090\0Agpr\09r19\09.8\0919\090\0Agpr\09r20\09.8\0920\090\0Agpr\09r21\09.8\0921\090\0Agpr\09r22\09.8\0922\090\0Agpr\09r23\09.8\0923\090\0Agpr\09r24\09.8\0924\090\0Agpr\09r25\09.8\0925\090\0Agpr\09r26\09.8\0926\090\0Agpr\09r27\09.8\0927\090\0Agpr\09r28\09.8\0928\090\0Agpr\09r29\09.8\0929\090\0Agpr\09r30\09.8\0930\090\0Agpr\09r31\09.8\0931\090\0Agpr\09sreg\09.8\0932\090\0Agpr\09sp\09.16\0933\090\0Agpr\09pc2\09.32\0934\090\0Agpr\09pc\09.32\0935\090\0A\00", align 1
@.str.9 = private unnamed_addr constant [688 x i8] c"=PC    pc\0A=SP    sp\0Agpr\09r0\09.32\090\090\0Agpr\09r1\09.32\094\090\0Agpr\09r2\09.32\098\090\0Agpr\09sp\09.32\0912\090\0Agpr\09gp\09.32\0916\090\0Agpr\09r5\09.32\0920\090\0Agpr\09r6\09.32\0924\090\0Agpr\09r7\09.32\0928\090\0Agpr\09r8\09.32\0932\090\0Agpr\09r9\09.32\0936\090\0Agpr\09r10\09.32\0940\090\0Agpr\09r11\09.32\0944\090\0Agpr\09r12\09.32\0948\090\0Agpr\09r13\09.32\0952\090\0Agpr\09r14\09.32\0956\090\0Agpr\09r15\09.32\0960\090\0Agpr\09r16\09.32\0964\090\0Agpr\09r17\09.32\0968\090\0Agpr\09r18\09.32\0972\090\0Agpr\09r19\09.32\0976\090\0Agpr\09r20\09.32\0980\090\0Agpr\09r21\09.32\0984\090\0Agpr\09r22\09.32\0988\090\0Agpr\09r23\09.32\0992\090\0Agpr\09r24\09.32\0996\090\0Agpr\09r25\09.32\09100\090\0Agpr\09r26\09.32\09104\090\0Agpr\09r27\09.32\09108\090\0Agpr\09r28\09.32\09112\090\0Agpr\09r29\09.32\09116\090\0Agpr\09ep\09.32\09120\090\0Agpr\09lp\09.32\09124\090\0Agpr\09eipc\09.32\09128\090\0Agpr\09eipsw\09.32\09132\090\0Agpr\09fepc\09.32\09136\090\0Agpr\09fepsw\09.32\09140\090\0Agpr\09ecr\09.32\09144\090\0Agpr\09psw\09.32\09148\090\0Agpr\09pc\09.32\09256\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_9__*)* @r_debug_gdb_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_debug_gdb_reg_profile(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @r_sys_arch_id(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = call i32 @check_connection(%struct.TYPE_9__* %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @desc, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @desc, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @desc, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @desc, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @strdup(i8* %35)
  store i8* %36, i8** %2, align 8
  br label %76

37:                                               ; preds = %25, %19, %1
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %75 [
    i32 128, label %39
    i32 134, label %58
    i32 130, label %65
    i32 132, label %67
    i32 131, label %69
    i32 133, label %71
    i32 129, label %73
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %39
  %46 = call i8* @strdup(i8* getelementptr inbounds ([629 x i8], [629 x i8]* @.str, i64 0, i64 0))
  store i8* %46, i8** %2, align 8
  br label %76

47:                                               ; preds = %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 64
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i8* @strdup(i8* getelementptr inbounds ([798 x i8], [798 x i8]* @.str.1, i64 0, i64 0))
  store i8* %55, i8** %2, align 8
  br label %76

56:                                               ; preds = %47
  %57 = call i8* @strdup(i8* getelementptr inbounds ([323 x i8], [323 x i8]* @.str.2, i64 0, i64 0))
  store i8* %57, i8** %2, align 8
  br label %76

58:                                               ; preds = %37
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 64
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i8* @strdup(i8* getelementptr inbounds ([674 x i8], [674 x i8]* @.str.3, i64 0, i64 0))
  store i8* %62, i8** %2, align 8
  br label %76

63:                                               ; preds = %58
  %64 = call i8* @strdup(i8* getelementptr inbounds ([950 x i8], [950 x i8]* @.str.4, i64 0, i64 0))
  store i8* %64, i8** %2, align 8
  br label %76

65:                                               ; preds = %37
  %66 = call i8* @strdup(i8* getelementptr inbounds ([393 x i8], [393 x i8]* @.str.5, i64 0, i64 0))
  store i8* %66, i8** %2, align 8
  br label %76

67:                                               ; preds = %37
  %68 = call i8* @strdup(i8* getelementptr inbounds ([686 x i8], [686 x i8]* @.str.6, i64 0, i64 0))
  store i8* %68, i8** %2, align 8
  br label %76

69:                                               ; preds = %37
  %70 = call i8* @strdup(i8* getelementptr inbounds ([1277 x i8], [1277 x i8]* @.str.7, i64 0, i64 0))
  store i8* %70, i8** %2, align 8
  br label %76

71:                                               ; preds = %37
  %72 = call i8* @strdup(i8* getelementptr inbounds ([579 x i8], [579 x i8]* @.str.8, i64 0, i64 0))
  store i8* %72, i8** %2, align 8
  br label %76

73:                                               ; preds = %37
  %74 = call i8* @strdup(i8* getelementptr inbounds ([688 x i8], [688 x i8]* @.str.9, i64 0, i64 0))
  store i8* %74, i8** %2, align 8
  br label %76

75:                                               ; preds = %37
  store i8* null, i8** %2, align 8
  br label %76

76:                                               ; preds = %75, %73, %71, %69, %67, %65, %63, %61, %56, %54, %45, %31
  %77 = load i8*, i8** %2, align 8
  ret i8* %77
}

declare dso_local i32 @r_sys_arch_id(i32) #1

declare dso_local i32 @check_connection(%struct.TYPE_9__*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
