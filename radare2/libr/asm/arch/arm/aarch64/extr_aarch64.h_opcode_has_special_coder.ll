; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64.h_opcode_has_special_coder.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64.h_opcode_has_special_coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@F_SF = common dso_local global i32 0, align 4
@F_LSE_SZ = common dso_local global i32 0, align 4
@F_SIZEQ = common dso_local global i32 0, align 4
@F_FPTYPE = common dso_local global i32 0, align 4
@F_SSIZE = common dso_local global i32 0, align 4
@F_T = common dso_local global i32 0, align 4
@F_GPRSIZE_IN_Q = common dso_local global i32 0, align 4
@F_LDS_SIZE = common dso_local global i32 0, align 4
@F_MISC = common dso_local global i32 0, align 4
@F_N = common dso_local global i32 0, align 4
@F_COND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @opcode_has_special_coder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opcode_has_special_coder(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @F_SF, align 4
  %7 = load i32, i32* @F_LSE_SZ, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @F_SIZEQ, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @F_FPTYPE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @F_SSIZE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @F_T, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @F_GPRSIZE_IN_Q, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @F_LDS_SIZE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @F_MISC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @F_N, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @F_COND, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %5, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @TRUE, align 4
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @FALSE, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
