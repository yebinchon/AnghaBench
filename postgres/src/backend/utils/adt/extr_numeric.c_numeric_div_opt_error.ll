; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_div_opt_error.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_div_opt_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64* }

@const_nan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @numeric_div_opt_error(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @NUMERIC_IS_NAN(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @NUMERIC_IS_NAN(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17
  %26 = call i32* @make_result(i32* @const_nan)
  store i32* %26, i32** %4, align 8
  br label %55

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @init_var_from_num(i32* %28, %struct.TYPE_11__* %8)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @init_var_from_num(i32* %30, %struct.TYPE_11__* %9)
  %32 = call i32 @init_var(%struct.TYPE_11__* %10)
  %33 = call i32 @select_div_scale(%struct.TYPE_11__* %8, %struct.TYPE_11__* %9)
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %36
  %47 = load i32*, i32** %7, align 8
  store i32 1, i32* %47, align 4
  store i32* null, i32** %4, align 8
  br label %55

48:                                               ; preds = %40, %27
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @div_var(%struct.TYPE_11__* %8, %struct.TYPE_11__* %9, %struct.TYPE_11__* %10, i32 %49, i32 1)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32* @make_result_opt_error(%struct.TYPE_11__* %10, i32* %51)
  store i32* %52, i32** %11, align 8
  %53 = call i32 @free_var(%struct.TYPE_11__* %10)
  %54 = load i32*, i32** %11, align 8
  store i32* %54, i32** %4, align 8
  br label %55

55:                                               ; preds = %48, %46, %25
  %56 = load i32*, i32** %4, align 8
  ret i32* %56
}

declare dso_local i64 @NUMERIC_IS_NAN(i32*) #1

declare dso_local i32* @make_result(i32*) #1

declare dso_local i32 @init_var_from_num(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @init_var(%struct.TYPE_11__*) #1

declare dso_local i32 @select_div_scale(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @div_var(%struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32* @make_result_opt_error(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @free_var(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
