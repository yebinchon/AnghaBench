; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_call_graph.c_zend_build_call_graph.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_call_graph.c_zend_build_call_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32** }

@zend_op_array_calc = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@zend_op_array_collect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_build_call_graph(i32** %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @zend_op_array_calc, align 4
  %13 = call i64 @zend_foreach_op_array(%struct.TYPE_4__* %10, i32* %11, i32 %12)
  %14 = load i64, i64* @SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @FAILURE, align 4
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load i32**, i32*** %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @zend_arena_calloc(i32** %19, i64 %22, i32 8)
  %24 = inttoptr i64 %23 to i32**
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32** %24, i32*** %26, align 8
  %27 = load i32**, i32*** %5, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @zend_arena_calloc(i32** %27, i64 %30, i32 4)
  %32 = inttoptr i64 %31 to i32*
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @zend_op_array_collect, align 4
  %40 = call i64 @zend_foreach_op_array(%struct.TYPE_4__* %37, i32* %38, i32 %39)
  %41 = load i64, i64* @SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %18
  %44 = load i32, i32* @FAILURE, align 4
  store i32 %44, i32* %4, align 4
  br label %48

45:                                               ; preds = %18
  %46 = load i64, i64* @SUCCESS, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %43, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @zend_foreach_op_array(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @zend_arena_calloc(i32**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
