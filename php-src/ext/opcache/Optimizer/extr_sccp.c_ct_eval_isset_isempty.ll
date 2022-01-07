; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_isset_isempty.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_isset_isempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEND_ISEMPTY = common dso_local global i32 0, align 4
@IS_NULL = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@IS_FALSE = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @ct_eval_isset_isempty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_eval_isset_isempty(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @ZEND_ISEMPTY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @Z_TYPE_P(i32* %18)
  %20 = load i64, i64* @IS_NULL, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi i1 [ false, %13 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @ZVAL_BOOL(i32* %14, i32 %24)
  %26 = load i32, i32* @SUCCESS, align 4
  store i32 %26, i32* %4, align 4
  br label %50

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @ZVAL_TRUE(i32* %31)
  %33 = load i32, i32* @SUCCESS, align 4
  store i32 %33, i32* %4, align 4
  br label %50

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @ct_eval_bool_cast(i32* %8, i32* %35)
  %37 = load i32, i32* @SUCCESS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @Z_TYPE(i32 %41)
  %43 = load i64, i64* @IS_FALSE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ZVAL_BOOL(i32* %40, i32 %45)
  %47 = load i32, i32* @SUCCESS, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %34
  %49 = load i32, i32* @FAILURE, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %39, %30, %22
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @ZVAL_TRUE(i32*) #1

declare dso_local i32 @ct_eval_bool_cast(i32*, i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
