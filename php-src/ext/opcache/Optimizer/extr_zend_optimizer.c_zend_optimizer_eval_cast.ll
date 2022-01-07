; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_zend_optimizer_eval_cast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_zend_optimizer_eval_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_optimizer_eval_cast(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %53 [
    i32 130, label %9
    i32 128, label %13
    i32 131, label %19
    i32 132, label %25
    i32 129, label %31
    i32 133, label %46
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ZVAL_NULL(i32* %10)
  %12 = load i32, i32* @SUCCESS, align 4
  store i32 %12, i32* %4, align 4
  br label %55

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @zval_is_true(i32* %15)
  %17 = call i32 @ZVAL_BOOL(i32* %14, i32 %16)
  %18 = load i32, i32* @SUCCESS, align 4
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @zval_get_long(i32* %21)
  %23 = call i32 @ZVAL_LONG(i32* %20, i32 %22)
  %24 = load i32, i32* @SUCCESS, align 4
  store i32 %24, i32* %4, align 4
  br label %55

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @zval_get_double(i32* %27)
  %29 = call i32 @ZVAL_DOUBLE(i32* %26, i32 %28)
  %30 = load i32, i32* @SUCCESS, align 4
  store i32 %30, i32* %4, align 4
  br label %55

31:                                               ; preds = %3
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @Z_TYPE_P(i32* %32)
  %34 = icmp ne i32 %33, 133
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @Z_TYPE_P(i32* %36)
  %38 = icmp ne i32 %37, 132
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @zval_get_string(i32* %41)
  %43 = call i32 @ZVAL_STR(i32* %40, i32 %42)
  %44 = load i32, i32* @SUCCESS, align 4
  store i32 %44, i32* %4, align 4
  br label %55

45:                                               ; preds = %35, %31
  br label %53

46:                                               ; preds = %3
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @ZVAL_COPY(i32* %47, i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @convert_to_array(i32* %50)
  %52 = load i32, i32* @SUCCESS, align 4
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %3, %45
  %54 = load i32, i32* @FAILURE, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %46, %39, %25, %19, %13, %9
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

declare dso_local i32 @zval_is_true(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @zval_get_long(i32*) #1

declare dso_local i32 @ZVAL_DOUBLE(i32*, i32) #1

declare dso_local i32 @zval_get_double(i32*) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @ZVAL_STR(i32*, i32) #1

declare dso_local i32 @zval_get_string(i32*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i32 @convert_to_array(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
