; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_qnx.c_r_debug_qnx_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_qnx.c_r_debug_qnx_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [259 x i8] c"=PC\09eip\0A=SP\09esp\0A=BP\09ebp\0A=A0\09eax\0A=A1\09ebx\0A=A2\09ecx\0A=A3\09edi\0Agpr\09eax\09.32\090\090\0Agpr\09ecx\09.32\094\090\0Agpr\09edx\09.32\098\090\0Agpr\09ebx\09.32\0912\090\0Agpr\09esp\09.32\0916\090\0Agpr\09ebp\09.32\0920\090\0Agpr\09esi\09.32\0924\090\0Agpr\09edi\09.32\0928\090\0Agpr\09eip\09.32\0932\090\0Agpr\09eflags\09.32\0936\090\0Aseg\09cs\09.32\0940\090\0Aseg\09ss\09.32\0944\090\0A\00", align 1
@.str.1 = private unnamed_addr constant [952 x i8] c"=PC\09r15\0A=SP\09r14\0A=A0\09r0\0A=A1\09r1\0A=A2\09r2\0A=A3\09r3\0Agpr\09r0\09.32\090\090\0Agpr\09r1\09.32\094\090\0Agpr\09r2\09.32\098\090\0Agpr\09r3\09.32\0912\090\0Agpr\09r4\09.32\0916\090\0Agpr\09r5\09.32\0920\090\0Agpr\09r6\09.32\0924\090\0Agpr\09r7\09.32\0928\090\0Agpr\09r8\09.32\0932\090\0Agpr\09r9\09.32\0936\090\0Agpr\09r10\09.32\0940\090\0Agpr\09r11\09.32\0944\090\0Agpr\09r12\09.32\0948\090\0Agpr\09sp\09.32\0952\090\0Agpr\09lr\09.32\0956\090\0Agpr\09pc\09.32\0960\090\0Agpr\09r13\09.32\0952\090\0Agpr\09r14\09.32\0956\090\0Agpr\09r15\09.32\0960\090\0Agpr\09cpsr\09.96\0964\090\0Ammx\09d0\09.64\0968\090\0Ammx\09d1\09.64\0976\090\0Ammx\09d2\09.64\0984\090\0Ammx\09d3\09.64\0992\090\0Ammx\09d4\09.64\09100\090\0Ammx\09d5\09.64\09108\090\0Ammx\09d6\09.64\09116\090\0Ammx\09d7\09.64\09124\090\0Ammx\09d8\09.64\09132\090\0Ammx\09d9\09.64\09140\090\0Ammx\09d10\09.64\09148\090\0Ammx\09d11\09.64\09156\090\0Ammx\09d12\09.64\09164\090\0Ammx\09d13\09.64\09172\090\0Ammx\09d14\09.64\09180\090\0Ammx\09d15\09.64\09188\090\0Ammx\09d16\09.64\09196\090\0Ammx\09d17\09.64\09204\090\0Ammx\09d18\09.64\09212\090\0Ammx\09d19\09.64\09220\090\0Ammx\09d20\09.64\09228\090\0Ammx\09d21\09.64\09236\090\0Ammx\09d22\09.64\09244\090\0Ammx\09d23\09.64\09252\090\0Ammx\09d24\09.64\09260\090\0Ammx\09d25\09.64\09268\090\0Ammx\09d26\09.64\09276\090\0Ammx\09d27\09.64\09284\090\0Ammx\09d28\09.64\09292\090\0Ammx\09d29\09.64\09300\090\0Ammx\09d30\09.64\09308\090\0Ammx\09d31\09.64\09316\090\0Ammx\09fpscr\09.32\09324\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*)* @r_debug_qnx_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_debug_qnx_reg_profile(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @r_sys_arch_id(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %24 [
    i32 128, label %16
    i32 129, label %18
  ]

16:                                               ; preds = %1
  %17 = call i8* @strdup(i8* getelementptr inbounds ([259 x i8], [259 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %2, align 8
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i8* @strdup(i8* getelementptr inbounds ([952 x i8], [952 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %2, align 8
  br label %25

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %1
  store i8* null, i8** %2, align 8
  br label %25

25:                                               ; preds = %24, %21, %16
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

declare dso_local i32 @r_sys_arch_id(i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
