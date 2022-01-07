; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_cond_cs2r2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_cond_cs2r2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_CC_AL = common dso_local global i32 0, align 4
@R_ANAL_COND_AL = common dso_local global i32 0, align 4
@R_ANAL_COND_EQ = common dso_local global i32 0, align 4
@R_ANAL_COND_NE = common dso_local global i32 0, align 4
@R_ANAL_COND_HS = common dso_local global i32 0, align 4
@R_ANAL_COND_LO = common dso_local global i32 0, align 4
@R_ANAL_COND_MI = common dso_local global i32 0, align 4
@R_ANAL_COND_PL = common dso_local global i32 0, align 4
@R_ANAL_COND_VS = common dso_local global i32 0, align 4
@R_ANAL_COND_VC = common dso_local global i32 0, align 4
@R_ANAL_COND_HI = common dso_local global i32 0, align 4
@R_ANAL_COND_LS = common dso_local global i32 0, align 4
@R_ANAL_COND_GE = common dso_local global i32 0, align 4
@R_ANAL_COND_LT = common dso_local global i32 0, align 4
@R_ANAL_COND_GT = common dso_local global i32 0, align 4
@R_ANAL_COND_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cond_cs2r2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cond_cs2r2(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @ARM_CC_AL, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @R_ANAL_COND_AL, align 4
  store i32 %10, i32* %2, align 4
  br label %42

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  switch i32 %12, label %41 [
    i32 141, label %13
    i32 131, label %15
    i32 137, label %17
    i32 135, label %19
    i32 132, label %21
    i32 130, label %23
    i32 128, label %25
    i32 129, label %27
    i32 138, label %29
    i32 134, label %31
    i32 140, label %33
    i32 133, label %35
    i32 139, label %37
    i32 136, label %39
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @R_ANAL_COND_EQ, align 4
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %11
  %16 = load i32, i32* @R_ANAL_COND_NE, align 4
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %11
  %18 = load i32, i32* @R_ANAL_COND_HS, align 4
  store i32 %18, i32* %2, align 4
  br label %41

19:                                               ; preds = %11
  %20 = load i32, i32* @R_ANAL_COND_LO, align 4
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %11
  %22 = load i32, i32* @R_ANAL_COND_MI, align 4
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %11
  %24 = load i32, i32* @R_ANAL_COND_PL, align 4
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %11
  %26 = load i32, i32* @R_ANAL_COND_VS, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %11
  %28 = load i32, i32* @R_ANAL_COND_VC, align 4
  store i32 %28, i32* %2, align 4
  br label %41

29:                                               ; preds = %11
  %30 = load i32, i32* @R_ANAL_COND_HI, align 4
  store i32 %30, i32* %2, align 4
  br label %41

31:                                               ; preds = %11
  %32 = load i32, i32* @R_ANAL_COND_LS, align 4
  store i32 %32, i32* %2, align 4
  br label %41

33:                                               ; preds = %11
  %34 = load i32, i32* @R_ANAL_COND_GE, align 4
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %11
  %36 = load i32, i32* @R_ANAL_COND_LT, align 4
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %11
  %38 = load i32, i32* @R_ANAL_COND_GT, align 4
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %11
  %40 = load i32, i32* @R_ANAL_COND_LE, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %11, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13
  br label %42

42:                                               ; preds = %41, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
