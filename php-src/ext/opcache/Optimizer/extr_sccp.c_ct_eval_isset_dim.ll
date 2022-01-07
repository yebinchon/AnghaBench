; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_isset_dim.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_isset_dim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_ARRAY = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@ZEND_ISEMPTY = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @ct_eval_isset_dim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_eval_isset_dim(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i64 @Z_TYPE_P(i32* %11)
  %13 = load i64, i64* @IS_ARRAY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @IS_PARTIAL_ARRAY(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %15, %4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @fetch_array_elem(i32** %10, i32* %20, i32* %21)
  %23 = load i64, i64* @FAILURE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* @FAILURE, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %62

28:                                               ; preds = %19
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @IS_PARTIAL_ARRAY(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32*, i32** %10, align 8
  %37 = call i64 @IS_BOT(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %32
  %40 = load i64, i64* @FAILURE, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %62

42:                                               ; preds = %35, %28
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @ct_eval_isset_isempty(i32* %43, i32 %44, i32* %45)
  store i32 %46, i32* %5, align 4
  br label %62

47:                                               ; preds = %15
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @Z_TYPE_P(i32* %48)
  %50 = load i64, i64* @IS_STRING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* @FAILURE, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %62

55:                                               ; preds = %47
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ZEND_ISEMPTY, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @ZVAL_BOOL(i32* %56, i32 %59)
  %61 = load i32, i32* @SUCCESS, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %55, %52, %42, %39, %25
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @IS_PARTIAL_ARRAY(i32*) #1

declare dso_local i64 @fetch_array_elem(i32**, i32*, i32*) #1

declare dso_local i64 @IS_BOT(i32*) #1

declare dso_local i32 @ct_eval_isset_isempty(i32*, i32, i32*) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
