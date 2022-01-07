; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_trace.c_fpm_trace_get_strz.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_trace.c_fpm_trace_get_strz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZEOF_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_trace_get_strz(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  store i64 %11, i64* %9, align 8
  %12 = bitcast i64* %9 to i8*
  store i8* %12, i8** %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @SIZEOF_LONG, align 8
  %15 = srem i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %9, align 8
  %20 = sub nsw i64 %19, %18
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %60, %3
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @fpm_trace_get_long(i64 %23, i64* %9)
  %25 = icmp sgt i64 0, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %64

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @SIZEOF_LONG, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  store i8 %51, i8* %52, align 1
  br label %56

54:                                               ; preds = %38, %33
  %55 = load i8*, i8** %5, align 8
  store i8 0, i8* %55, align 1
  store i32 0, i32* %4, align 4
  br label %64

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %28

59:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* @SIZEOF_LONG, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %7, align 8
  br label %22

64:                                               ; preds = %54, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @fpm_trace_get_long(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
