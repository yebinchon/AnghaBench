; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_cond_x862r2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_cond_x862r2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_ANAL_COND_EQ = common dso_local global i32 0, align 4
@R_ANAL_COND_NE = common dso_local global i32 0, align 4
@R_ANAL_COND_LT = common dso_local global i32 0, align 4
@R_ANAL_COND_LE = common dso_local global i32 0, align 4
@R_ANAL_COND_GT = common dso_local global i32 0, align 4
@R_ANAL_COND_GE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cond_x862r2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cond_x862r2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %18 [
    i32 140, label %5
    i32 134, label %7
    i32 143, label %9
    i32 136, label %9
    i32 142, label %11
    i32 135, label %11
    i32 138, label %13
    i32 145, label %13
    i32 144, label %15
    i32 128, label %17
    i32 131, label %17
    i32 130, label %17
    i32 133, label %17
    i32 137, label %17
    i32 129, label %17
    i32 132, label %17
    i32 141, label %17
    i32 139, label %17
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @R_ANAL_COND_EQ, align 4
  store i32 %6, i32* %2, align 4
  br label %19

7:                                                ; preds = %1
  %8 = load i32, i32* @R_ANAL_COND_NE, align 4
  store i32 %8, i32* %2, align 4
  br label %19

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @R_ANAL_COND_LT, align 4
  store i32 %10, i32* %2, align 4
  br label %19

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @R_ANAL_COND_LE, align 4
  store i32 %12, i32* %2, align 4
  br label %19

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @R_ANAL_COND_GT, align 4
  store i32 %14, i32* %2, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @R_ANAL_COND_GE, align 4
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %18

18:                                               ; preds = %1, %17
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %15, %13, %11, %9, %7, %5
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
