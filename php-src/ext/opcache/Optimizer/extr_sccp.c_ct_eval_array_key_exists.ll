; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_array_key_exists.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_array_key_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_ARRAY = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i64 0, align 8
@IS_LONG = common dso_local global i64 0, align 8
@IS_NULL = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ct_eval_array_key_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_eval_array_key_exists(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i64 @Z_TYPE_P(i32* %9)
  %11 = load i64, i64* @IS_ARRAY, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @IS_PARTIAL_ARRAY(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @FAILURE, align 4
  store i32 %18, i32* %4, align 4
  br label %64

19:                                               ; preds = %13, %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @Z_TYPE_P(i32* %20)
  %22 = load i64, i64* @IS_STRING, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @Z_TYPE_P(i32* %25)
  %27 = load i64, i64* @IS_LONG, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @Z_TYPE_P(i32* %30)
  %32 = load i64, i64* @IS_NULL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @FAILURE, align 4
  store i32 %35, i32* %4, align 4
  br label %64

36:                                               ; preds = %29, %24, %19
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @fetch_array_elem(i32** %8, i32* %37, i32* %38)
  %40 = load i32, i32* @FAILURE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @FAILURE, align 4
  store i32 %43, i32* %4, align 4
  br label %64

44:                                               ; preds = %36
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @IS_PARTIAL_ARRAY(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @IS_BOT(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %48
  %56 = load i32, i32* @FAILURE, align 4
  store i32 %56, i32* %4, align 4
  br label %64

57:                                               ; preds = %51, %44
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @ZVAL_BOOL(i32* %58, i32 %61)
  %63 = load i32, i32* @SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %55, %42, %34, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @IS_PARTIAL_ARRAY(i32*) #1

declare dso_local i32 @fetch_array_elem(i32**, i32*, i32*) #1

declare dso_local i64 @IS_BOT(i32*) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
