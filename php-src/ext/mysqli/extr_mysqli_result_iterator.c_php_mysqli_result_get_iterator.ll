; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_result_iterator.c_php_mysqli_result_get_iterator.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_result_iterator.c_php_mysqli_result_get_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32 }

@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"An iterator cannot be used with foreach by reference\00", align 1
@php_mysqli_result_iterator_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @php_mysqli_result_get_iterator(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @E_ERROR, align 4
  %12 = call i32 @zend_error(i32 %11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %3
  %14 = call %struct.TYPE_7__* @ecalloc(i32 1, i32 32)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = call i32 @zend_iterator_init(%struct.TYPE_6__* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @Z_ADDREF_P(i32* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @Z_OBJ_P(i32* %23)
  %25 = call i32 @ZVAL_OBJ(i32* %22, i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32* @php_mysqli_result_iterator_funcs, i32** %28, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @Z_MYSQLI_P(i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  ret %struct.TYPE_6__* %36
}

declare dso_local i32 @zend_error(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @ecalloc(i32, i32) #1

declare dso_local i32 @zend_iterator_init(%struct.TYPE_6__*) #1

declare dso_local i32 @Z_ADDREF_P(i32*) #1

declare dso_local i32 @ZVAL_OBJ(i32*, i32) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i32 @Z_MYSQLI_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
