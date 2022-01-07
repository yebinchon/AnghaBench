; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_formatPGVersionNumber.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_formatPGVersionNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @formatPGVersionNumber(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 100000
  br i1 %10, label %11, label %29

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, 10000
  %19 = load i32, i32* %5, align 4
  %20 = srem i32 %19, 10000
  %21 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %15, i64 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  br label %28

22:                                               ; preds = %11
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %25, 10000
  %27 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %14
  br label %53

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %35, 10000
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 %37, 100
  %39 = srem i32 %38, 100
  %40 = load i32, i32* %5, align 4
  %41 = srem i32 %40, 100
  %42 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %39, i32 %41)
  br label %52

43:                                               ; preds = %29
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sdiv i32 %46, 10000
  %48 = load i32, i32* %5, align 4
  %49 = sdiv i32 %48, 100
  %50 = srem i32 %49, 100
  %51 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %44, i64 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %32
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i8*, i8** %7, align 8
  ret i8* %54
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
