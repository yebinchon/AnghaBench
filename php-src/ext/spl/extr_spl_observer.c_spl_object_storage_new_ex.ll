; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_observer.c_spl_object_storage_new_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_observer.c_spl_object_storage_new_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_24__ = type { %struct.TYPE_22__, %struct.TYPE_25__*, i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_23__* }

@spl_object_storage_dtor = common dso_local global i32 0, align 4
@spl_handler_SplObjectStorage = common dso_local global i32 0, align 4
@spl_ce_SplObjectStorage = common dso_local global %struct.TYPE_23__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"gethash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_23__*, %struct.TYPE_22__*)* @spl_object_storage_new_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @spl_object_storage_new_ex(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** %6, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %10 = call i64 @zend_object_properties_size(%struct.TYPE_23__* %9)
  %11 = add i64 32, %10
  %12 = call %struct.TYPE_24__* @emalloc(i64 %11)
  store %struct.TYPE_24__* %12, %struct.TYPE_24__** %5, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = call i32 @memset(%struct.TYPE_24__* %13, i32 0, i32 28)
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %20 = call i32 @zend_object_std_init(%struct.TYPE_22__* %18, %struct.TYPE_23__* %19)
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %24 = call i32 @object_properties_init(%struct.TYPE_22__* %22, %struct.TYPE_23__* %23)
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %27 = load i32, i32* @spl_object_storage_dtor, align 4
  %28 = call i32 @zend_hash_init(i32* %26, i32 0, i32* null, i32 %27, i32 0)
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  store i32* @spl_handler_SplObjectStorage, i32** %31, align 8
  br label %32

32:                                               ; preds = %62, %2
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = icmp ne %struct.TYPE_23__* %33, null
  br i1 %34, label %35, label %66

35:                                               ; preds = %32
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** @spl_ce_SplObjectStorage, align 8
  %38 = icmp eq %struct.TYPE_23__* %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** @spl_ce_SplObjectStorage, align 8
  %42 = icmp ne %struct.TYPE_23__* %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = call %struct.TYPE_25__* @zend_hash_str_find_ptr(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 1
  store %struct.TYPE_25__* %46, %struct.TYPE_25__** %48, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %53, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** @spl_ce_SplObjectStorage, align 8
  %56 = icmp eq %struct.TYPE_23__* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %59, align 8
  br label %60

60:                                               ; preds = %57, %43
  br label %61

61:                                               ; preds = %60, %39
  br label %66

62:                                               ; preds = %35
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %64, align 8
  store %struct.TYPE_23__* %65, %struct.TYPE_23__** %6, align 8
  br label %32

66:                                               ; preds = %61, %32
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = icmp ne %struct.TYPE_22__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %71 = call %struct.TYPE_24__* @spl_object_storage_from_obj(%struct.TYPE_22__* %70)
  store %struct.TYPE_24__* %71, %struct.TYPE_24__** %7, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %74 = call i32 @spl_object_storage_addall(%struct.TYPE_24__* %72, %struct.TYPE_24__* %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  ret %struct.TYPE_22__* %77
}

declare dso_local %struct.TYPE_24__* @emalloc(i64) #1

declare dso_local i64 @zend_object_properties_size(%struct.TYPE_23__*) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @zend_object_std_init(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @object_properties_init(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_25__* @zend_hash_str_find_ptr(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_24__* @spl_object_storage_from_obj(%struct.TYPE_22__*) #1

declare dso_local i32 @spl_object_storage_addall(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
