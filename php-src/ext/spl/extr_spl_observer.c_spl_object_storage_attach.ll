; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_observer.c_spl_object_storage_attach.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_observer.c_spl_object_storage_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64 }

@FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @spl_object_storage_attach(%struct.TYPE_19__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @spl_object_storage_get_hash(%struct.TYPE_17__* %10, %struct.TYPE_19__* %11, i32* %12)
  %14 = load i64, i64* @FAILURE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = call %struct.TYPE_18__* @spl_object_storage_get(%struct.TYPE_19__* %18, %struct.TYPE_17__* %10)
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %8, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %21 = icmp ne %struct.TYPE_18__* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = call i32 @zval_ptr_dtor(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @ZVAL_COPY(i32* %30, i32* %31)
  br label %37

33:                                               ; preds = %22
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = call i32 @ZVAL_NULL(i32* %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = call i32 @spl_object_storage_free_hash(%struct.TYPE_19__* %38, %struct.TYPE_17__* %10)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %4, align 8
  br label %74

41:                                               ; preds = %17
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ZVAL_COPY(i32* %42, i32* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @ZVAL_COPY(i32* %48, i32* %49)
  br label %54

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %53 = call i32 @ZVAL_NULL(i32* %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.TYPE_18__* @zend_hash_update_mem(i32* %60, i64 %62, %struct.TYPE_18__* %9, i32 8)
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %8, align 8
  br label %70

64:                                               ; preds = %54
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.TYPE_18__* @zend_hash_index_update_mem(i32* %66, i32 %68, %struct.TYPE_18__* %9, i32 8)
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %8, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = call i32 @spl_object_storage_free_hash(%struct.TYPE_19__* %71, %struct.TYPE_17__* %10)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %73, %struct.TYPE_18__** %4, align 8
  br label %74

74:                                               ; preds = %70, %37, %16
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  ret %struct.TYPE_18__* %75
}

declare dso_local i64 @spl_object_storage_get_hash(%struct.TYPE_17__*, %struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_18__* @spl_object_storage_get(%struct.TYPE_19__*, %struct.TYPE_17__*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @spl_object_storage_free_hash(%struct.TYPE_19__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @zend_hash_update_mem(i32*, i64, %struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_18__* @zend_hash_index_update_mem(i32*, i32, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
