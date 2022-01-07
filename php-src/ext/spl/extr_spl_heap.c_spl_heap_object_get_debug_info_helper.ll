; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_heap.c_spl_heap_object_get_debug_info_helper.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_heap.c_spl_heap_object_get_debug_info_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@zval_add_ref = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"isCorrupted\00", align 1
@SPL_HEAP_CORRUPTED = common dso_local global i32 0, align 4
@spl_ce_SplPriorityQueue = common dso_local global i32* null, align 8
@SPL_PQUEUE_EXTR_BOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"heap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @spl_heap_object_get_debug_info_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @spl_heap_object_get_debug_info_helper(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.TYPE_5__* @spl_heap_from_obj(i32* %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load i32*, i32** %6, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = call i32 @rebuild_object_properties(%struct.TYPE_7__* %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @zend_hash_num_elements(i32 %32)
  %34 = add nsw i64 %33, 1
  %35 = call i32* @zend_new_array(i64 %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @zval_add_ref, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @zend_hash_copy(i32* %36, i32 %40, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32* @spl_gen_private_prop_name(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  store i32* %45, i32** %10, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ZVAL_LONG(i32* %8, i32 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @zend_hash_update(i32* %50, i32* %51, i32* %8)
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @zend_string_release_ex(i32* %53, i32 0)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32* @spl_gen_private_prop_name(i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  store i32* %56, i32** %10, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SPL_HEAP_CORRUPTED, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @ZVAL_BOOL(i32* %8, i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @zend_hash_update(i32* %65, i32* %66, i32* %8)
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @zend_string_release_ex(i32* %68, i32 0)
  %70 = call i32 @array_init(i32* %9)
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %108, %28
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %71
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** @spl_ce_SplPriorityQueue, align 8
  %82 = icmp eq i32* %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i8* @spl_heap_elem(%struct.TYPE_6__* %86, i32 %87)
  %89 = bitcast i8* %88 to i32*
  store i32* %89, i32** %13, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* @SPL_PQUEUE_EXTR_BOTH, align 4
  %92 = call i32 @spl_pqueue_extract_helper(i32* %14, i32* %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @add_index_zval(i32* %9, i32 %93, i32* %14)
  br label %107

95:                                               ; preds = %79
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i8* @spl_heap_elem(%struct.TYPE_6__* %98, i32 %99)
  %101 = bitcast i8* %100 to i32*
  store i32* %101, i32** %15, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @add_index_zval(i32* %9, i32 %102, i32* %103)
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @Z_TRY_ADDREF_P(i32* %105)
  br label %107

107:                                              ; preds = %95, %83
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %71

111:                                              ; preds = %71
  %112 = load i32*, i32** %4, align 8
  %113 = call i32* @spl_gen_private_prop_name(i32* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32* %113, i32** %10, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @zend_hash_update(i32* %114, i32* %115, i32* %9)
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @zend_string_release_ex(i32* %117, i32 0)
  %119 = load i32*, i32** %11, align 8
  ret i32* %119
}

declare dso_local %struct.TYPE_5__* @spl_heap_from_obj(i32*) #1

declare dso_local i32 @rebuild_object_properties(%struct.TYPE_7__*) #1

declare dso_local i32* @zend_new_array(i64) #1

declare dso_local i64 @zend_hash_num_elements(i32) #1

declare dso_local i32 @zend_hash_copy(i32*, i32, i32) #1

declare dso_local i32* @spl_gen_private_prop_name(i32*, i8*, i32) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @zend_hash_update(i32*, i32*, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i8* @spl_heap_elem(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @spl_pqueue_extract_helper(i32*, i32*, i32) #1

declare dso_local i32 @add_index_zval(i32*, i32, i32*) #1

declare dso_local i32 @Z_TRY_ADDREF_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
