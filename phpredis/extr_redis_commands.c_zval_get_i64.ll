; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_commands.c_zval_get_i64.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_commands.c_zval_get_i64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*)* @zval_get_i64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zval_get_i64(i32* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @Z_TYPE_P(i32* %8)
  %10 = icmp eq i64 %9, 128
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @Z_LVAL_P(i32* %12)
  %14 = load i64*, i64** %5, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i32, i32* @SUCCESS, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @Z_TYPE_P(i32* %17)
  %19 = icmp eq i64 %18, 129
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @Z_DVAL_P(i32* %21)
  %23 = load i64*, i64** %5, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i32, i32* @SUCCESS, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %16
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @Z_TYPE_P(i32* %26)
  %28 = load i64, i64* @IS_STRING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @Z_STRVAL_P(i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @Z_STRLEN_P(i32* %33)
  %35 = call i32 @is_numeric_string(i32 %32, i32 %34, i64* %6, double* %7, i32 1)
  switch i32 %35, label %45 [
    i32 128, label %36
    i32 129, label %40
  ]

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = load i64*, i64** %5, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* @SUCCESS, align 4
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %30
  %41 = load double, double* %7, align 8
  %42 = fptosi double %41 to i64
  %43 = load i64*, i64** %5, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @SUCCESS, align 4
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %25
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* @FAILURE, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %40, %36, %20, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @Z_LVAL_P(i32*) #1

declare dso_local i64 @Z_DVAL_P(i32*) #1

declare dso_local i32 @is_numeric_string(i32, i32, i64*, double*, i32) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
