; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_heap.c_spl_pqueue_get_iterator.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_heap.c_spl_pqueue_get_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i32, i32* }
%struct.TYPE_11__ = type { i32 }

@spl_ce_RuntimeException = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"An iterator cannot be used with foreach by reference\00", align 1
@spl_pqueue_it_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @spl_pqueue_get_iterator(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = call %struct.TYPE_11__* @Z_SPLHEAP_P(i32* %10)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @spl_ce_RuntimeException, align 4
  %16 = call i32 @zend_throw_exception(i32 %15, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %51

17:                                               ; preds = %3
  %18 = call %struct.TYPE_12__* @emalloc(i32 40)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = bitcast %struct.TYPE_12__* %19 to %struct.TYPE_10__*
  %21 = call i32 @zend_iterator_init(%struct.TYPE_10__* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @Z_ADDREF_P(i32* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @Z_OBJ_P(i32* %28)
  %30 = call i32 @ZVAL_OBJ(i32* %27, i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32* @spl_pqueue_it_funcs, i32** %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  store i32* %35, i32** %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = call i32 @ZVAL_UNDEF(i32* %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %4, align 8
  br label %51

51:                                               ; preds = %17, %14
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %52
}

declare dso_local %struct.TYPE_11__* @Z_SPLHEAP_P(i32*) #1

declare dso_local i32 @zend_throw_exception(i32, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @emalloc(i32) #1

declare dso_local i32 @zend_iterator_init(%struct.TYPE_10__*) #1

declare dso_local i32 @Z_ADDREF_P(i32*) #1

declare dso_local i32 @ZVAL_OBJ(i32*, i32) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
