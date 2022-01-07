; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_fetch_dim.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_ct_eval_fetch_dim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_ARRAY = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @ct_eval_fetch_dim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_eval_fetch_dim(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i64 @Z_TYPE_P(i32* %12)
  %14 = load i64, i64* @IS_ARRAY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @IS_PARTIAL_ARRAY(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %16, %4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @fetch_array_elem(i32** %10, i32* %21, i32* %22)
  %24 = load i64, i64* @SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @IS_BOT(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @ZVAL_COPY(i32* %34, i32* %35)
  %37 = load i64, i64* @SUCCESS, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %79

39:                                               ; preds = %29, %26, %20
  br label %76

40:                                               ; preds = %16
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %40
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @Z_TYPE_P(i32* %44)
  %46 = load i64, i64* @IS_STRING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @zval_to_string_offset(i64* %11, i32* %49)
  %51 = load i64, i64* @FAILURE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i64, i64* @FAILURE, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %79

56:                                               ; preds = %48
  %57 = load i64, i64* %11, align 8
  %58 = icmp uge i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i64, i64* %11, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @Z_STRLEN_P(i32* %61)
  %63 = icmp ult i64 %60, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32* @Z_STRVAL_P(i32* %66)
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = call i32 @zend_string_init(i32* %69, i32 1, i32 0)
  %71 = call i32 @ZVAL_STR(i32* %65, i32 %70)
  %72 = load i64, i64* @SUCCESS, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %79

74:                                               ; preds = %59, %56
  br label %75

75:                                               ; preds = %74, %43, %40
  br label %76

76:                                               ; preds = %75, %39
  %77 = load i64, i64* @FAILURE, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %64, %53, %33
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @IS_PARTIAL_ARRAY(i32*) #1

declare dso_local i64 @fetch_array_elem(i32**, i32*, i32*) #1

declare dso_local i32 @IS_BOT(i32*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i64 @zval_to_string_offset(i64*, i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @ZVAL_STR(i32*, i32) #1

declare dso_local i32 @zend_string_init(i32*, i32, i32) #1

declare dso_local i32* @Z_STRVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
