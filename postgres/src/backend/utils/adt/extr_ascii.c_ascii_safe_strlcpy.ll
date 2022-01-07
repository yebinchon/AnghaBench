; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ascii.c_ascii_safe_strlcpy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ascii.c_ascii_safe_strlcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ascii_safe_strlcpy(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %58

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %53, %11
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %6, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  %19 = load i8, i8* %17, align 1
  store i8 %19, i8* %7, align 1
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %56

24:                                               ; preds = %16
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sle i32 32, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sle i32 %30, 127
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8, i8* %7, align 1
  %34 = load i8*, i8** %4, align 8
  store i8 %33, i8* %34, align 1
  br label %53

35:                                               ; preds = %28, %24
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 13
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %39, %35
  %48 = load i8, i8* %7, align 1
  %49 = load i8*, i8** %4, align 8
  store i8 %48, i8* %49, align 1
  br label %52

50:                                               ; preds = %43
  %51 = load i8*, i8** %4, align 8
  store i8 63, i8* %51, align 1
  br label %52

52:                                               ; preds = %50, %47
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %4, align 8
  br label %12

56:                                               ; preds = %23, %12
  %57 = load i8*, i8** %4, align 8
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %56, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
