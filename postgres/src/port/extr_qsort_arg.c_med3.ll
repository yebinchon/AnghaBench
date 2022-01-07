; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_qsort_arg.c_med3.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_qsort_arg.c_med3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i64 (i8*, i8*, i8*)*, i8*)* @med3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @med3(i8* %0, i8* %1, i8* %2, i64 (i8*, i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64 (i8*, i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 (i8*, i8*, i8*)* %3, i64 (i8*, i8*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = call i64 %11(i8* %12, i8* %13, i8* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %5
  %18 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i64 %18(i8* %19, i8* %20, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  br label %39

26:                                               ; preds = %17
  %27 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 %27(i8* %28, i8* %29, i8* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i8*, i8** %8, align 8
  br label %37

35:                                               ; preds = %26
  %36 = load i8*, i8** %6, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i8* [ %34, %33 ], [ %36, %35 ]
  br label %39

39:                                               ; preds = %37, %24
  %40 = phi i8* [ %25, %24 ], [ %38, %37 ]
  br label %65

41:                                               ; preds = %5
  %42 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 %42(i8* %43, i8* %44, i8* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i8*, i8** %7, align 8
  br label %63

50:                                               ; preds = %41
  %51 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %9, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i64 %51(i8* %52, i8* %53, i8* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i8*, i8** %6, align 8
  br label %61

59:                                               ; preds = %50
  %60 = load i8*, i8** %8, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i8* [ %58, %57 ], [ %60, %59 ]
  br label %63

63:                                               ; preds = %61, %48
  %64 = phi i8* [ %49, %48 ], [ %62, %61 ]
  br label %65

65:                                               ; preds = %63, %39
  %66 = phi i8* [ %40, %39 ], [ %64, %63 ]
  ret i8* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
