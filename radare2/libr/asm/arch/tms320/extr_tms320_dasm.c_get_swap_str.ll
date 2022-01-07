; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_get_swap_str.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_get_swap_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"swap ac0, ac2\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"swap ac1, ac3\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"swap t0, t2\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"swap t1, t3\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"swap ar0, ar2\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"swap ar1, ar3\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"swap ar4, t0\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"swap ar5, t1\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"swap ar6, t2\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"swap ar7, t3\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"swapp ac0, ac2\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"swapp t0, t2\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"swapp ar0, ar2\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"swapp ar4, t0\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"swapp ar6, t2\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"swap4 ar4, t0\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"swap ar0, ar1\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_swap_str(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %24 [
    i32 0, label %7
    i32 1, label %8
    i32 4, label %9
    i32 5, label %10
    i32 8, label %11
    i32 9, label %12
    i32 12, label %13
    i32 13, label %14
    i32 14, label %15
    i32 15, label %16
    i32 16, label %17
    i32 20, label %18
    i32 24, label %19
    i32 28, label %20
    i32 30, label %21
    i32 44, label %22
    i32 56, label %23
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %25

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %25

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %25

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %25

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %25

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %25

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %25

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %25

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %25

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %25

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %25

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %25

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %25

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %25

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %25

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %25

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %25

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
