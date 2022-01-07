; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_next_marker.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_next_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@M_EOI = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"corrupt JPEG data: %zu extraneous bytes before marker\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @php_next_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_next_marker(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @php_stream_getc(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = icmp ne i32 %16, 255
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @EOF, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @M_EOI, align 4
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %18
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %10, align 8
  br label %14

27:                                               ; preds = %14
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @E_WARNING, align 4
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @php_error_docref(i32* null, i32 %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %30, %27
  br label %35

35:                                               ; preds = %34, %3
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %46, %35
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @php_stream_getc(i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @EOF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @M_EOI, align 4
  store i32 %42, i32* %4, align 4
  br label %56

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 255
  br i1 %48, label %36, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @M_EOI, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %52, %41, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @php_stream_getc(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
