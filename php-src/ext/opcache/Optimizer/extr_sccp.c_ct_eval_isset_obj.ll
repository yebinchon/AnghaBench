; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_isset_obj.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_isset_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAILURE = common dso_local global i64 0, align 8
@ZEND_ISEMPTY = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @ct_eval_isset_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_eval_isset_obj(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
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
  %12 = call i64 @IS_PARTIAL_OBJECT(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i64 @fetch_obj_prop(i32** %10, i32* %15, i32* %16)
  %18 = load i64, i64* @FAILURE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i64, i64* @FAILURE, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %45

23:                                               ; preds = %14
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** %10, align 8
  %28 = call i64 @IS_BOT(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %23
  %31 = load i64, i64* @FAILURE, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @ct_eval_isset_isempty(i32* %34, i32 %35, i32* %36)
  store i32 %37, i32* %5, align 4
  br label %45

38:                                               ; preds = %4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ZEND_ISEMPTY, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @ZVAL_BOOL(i32* %39, i32 %42)
  %44 = load i32, i32* @SUCCESS, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %33, %30, %20
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @IS_PARTIAL_OBJECT(i32*) #1

declare dso_local i64 @fetch_obj_prop(i32**, i32*, i32*) #1

declare dso_local i64 @IS_BOT(i32*) #1

declare dso_local i32 @ct_eval_isset_isempty(i32*, i32, i32*) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
