; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_mod_opt_error.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_mod_opt_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64* }

@const_nan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @numeric_mod_opt_error(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @NUMERIC_IS_NAN(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @NUMERIC_IS_NAN(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  %25 = call i32* @make_result(i32* @const_nan)
  store i32* %25, i32** %4, align 8
  br label %51

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @init_var_from_num(i32* %27, %struct.TYPE_9__* %9)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @init_var_from_num(i32* %29, %struct.TYPE_9__* %10)
  %31 = call i32 @init_var(%struct.TYPE_9__* %11)
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %34
  %45 = load i32*, i32** %7, align 8
  store i32 1, i32* %45, align 4
  store i32* null, i32** %4, align 8
  br label %51

46:                                               ; preds = %38, %26
  %47 = call i32 @mod_var(%struct.TYPE_9__* %9, %struct.TYPE_9__* %10, %struct.TYPE_9__* %11)
  %48 = call i32* @make_result_opt_error(%struct.TYPE_9__* %11, i32* null)
  store i32* %48, i32** %8, align 8
  %49 = call i32 @free_var(%struct.TYPE_9__* %11)
  %50 = load i32*, i32** %8, align 8
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %46, %44, %24
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i64 @NUMERIC_IS_NAN(i32*) #1

declare dso_local i32* @make_result(i32*) #1

declare dso_local i32 @init_var_from_num(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @init_var(%struct.TYPE_9__*) #1

declare dso_local i32 @mod_var(%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32* @make_result_opt_error(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @free_var(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
