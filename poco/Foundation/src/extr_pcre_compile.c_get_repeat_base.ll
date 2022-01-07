; ModuleID = '/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_get_repeat_base.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_get_repeat_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_TYPEPOSUPTO = common dso_local global i64 0, align 8
@OP_TYPESTAR = common dso_local global i64 0, align 8
@OP_NOTSTARI = common dso_local global i64 0, align 8
@OP_NOTSTAR = common dso_local global i64 0, align 8
@OP_STARI = common dso_local global i64 0, align 8
@OP_STAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @get_repeat_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_repeat_base(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @OP_TYPEPOSUPTO, align 8
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  br label %42

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @OP_TYPESTAR, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i64, i64* @OP_TYPESTAR, align 8
  br label %40

14:                                               ; preds = %8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @OP_NOTSTARI, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @OP_NOTSTARI, align 8
  br label %38

20:                                               ; preds = %14
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @OP_NOTSTAR, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @OP_NOTSTAR, align 8
  br label %36

26:                                               ; preds = %20
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @OP_STARI, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @OP_STARI, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @OP_STAR, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  br label %36

36:                                               ; preds = %34, %24
  %37 = phi i64 [ %25, %24 ], [ %35, %34 ]
  br label %38

38:                                               ; preds = %36, %18
  %39 = phi i64 [ %19, %18 ], [ %37, %36 ]
  br label %40

40:                                               ; preds = %38, %12
  %41 = phi i64 [ %13, %12 ], [ %39, %38 ]
  br label %42

42:                                               ; preds = %40, %6
  %43 = phi i64 [ %7, %6 ], [ %41, %40 ]
  ret i64 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
