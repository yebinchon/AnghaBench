; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_filter_it_fetch.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_filter_it_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_13__*)* }
%struct.TYPE_11__ = type { i32 }

@SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@IS_UNDEF = common dso_local global i64 0, align 8
@exception = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*)* @spl_filter_it_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spl_filter_it_fetch(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  br label %6

6:                                                ; preds = %35, %2
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = call i64 @spl_dual_it_fetch(%struct.TYPE_12__* %7, i32 1)
  %9 = load i64, i64* @SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %6
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @Z_OBJ_P(i32* %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @zend_call_method_with_0_params(i32 %13, i32 %17, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %5)
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @Z_TYPE(i32 %19)
  %21 = load i64, i64* @IS_UNDEF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = call i64 @zend_is_true(i32* %5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @zval_ptr_dtor(i32* %5)
  br label %52

28:                                               ; preds = %23
  %29 = call i32 @zval_ptr_dtor(i32* %5)
  br label %30

30:                                               ; preds = %28, %11
  %31 = load i32, i32* @exception, align 4
  %32 = call i64 @EG(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %52

35:                                               ; preds = %30
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = call i32 %43(%struct.TYPE_13__* %47)
  br label %6

49:                                               ; preds = %6
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = call i32 @spl_dual_it_free(%struct.TYPE_12__* %50)
  br label %52

52:                                               ; preds = %49, %34, %26
  ret void
}

declare dso_local i64 @spl_dual_it_fetch(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @zend_call_method_with_0_params(i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i64 @zend_is_true(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i64 @EG(i32) #1

declare dso_local i32 @spl_dual_it_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
