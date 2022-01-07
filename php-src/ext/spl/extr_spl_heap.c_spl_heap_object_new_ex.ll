; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_heap.c_spl_heap_object_new_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_heap.c_spl_heap_object_new_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_29__ = type { %struct.TYPE_27__, %struct.TYPE_26__*, %struct.TYPE_24__*, i8*, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_28__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_28__* }

@spl_ce_SplPriorityQueue = common dso_local global %struct.TYPE_28__* null, align 8
@spl_ptr_pqueue_elem_cmp = common dso_local global i32 0, align 4
@spl_ptr_heap_pqueue_elem_ctor = common dso_local global i32 0, align 4
@spl_ptr_heap_pqueue_elem_dtor = common dso_local global i32 0, align 4
@spl_handler_SplPriorityQueue = common dso_local global i32 0, align 4
@SPL_PQUEUE_EXTR_DATA = common dso_local global i32 0, align 4
@spl_ce_SplMinHeap = common dso_local global %struct.TYPE_28__* null, align 8
@spl_ce_SplMaxHeap = common dso_local global %struct.TYPE_28__* null, align 8
@spl_ce_SplHeap = common dso_local global %struct.TYPE_28__* null, align 8
@spl_ptr_heap_zval_min_cmp = common dso_local global i32 0, align 4
@spl_ptr_heap_zval_max_cmp = common dso_local global i32 0, align 4
@spl_ptr_heap_zval_ctor = common dso_local global i32 0, align 4
@spl_ptr_heap_zval_dtor = common dso_local global i32 0, align 4
@spl_handler_SplHeap = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Internal compiler error, Class is not child of SplHeap\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_27__* (%struct.TYPE_28__*, %struct.TYPE_27__*, i32)* @spl_heap_object_new_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_27__* @spl_heap_object_new_ex(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_28__* %12, %struct.TYPE_28__** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %14 = call %struct.TYPE_29__* @zend_object_alloc(i32 40, %struct.TYPE_28__* %13)
  store %struct.TYPE_29__* %14, %struct.TYPE_29__** %8, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %18 = call i32 @zend_object_std_init(%struct.TYPE_27__* %16, %struct.TYPE_28__* %17)
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %22 = call i32 @object_properties_init(%struct.TYPE_27__* %20, %struct.TYPE_28__* %21)
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %24 = icmp ne %struct.TYPE_27__* %23, null
  br i1 %24, label %25, label %73

25:                                               ; preds = %3
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %27 = call %struct.TYPE_29__* @spl_heap_from_obj(%struct.TYPE_27__* %26)
  store %struct.TYPE_29__* %27, %struct.TYPE_29__** %11, align 8
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %25
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @spl_ptr_heap_clone(i8* %45)
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  br label %55

49:                                               ; preds = %25
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %62, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 2
  store %struct.TYPE_24__* %63, %struct.TYPE_24__** %65, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %67, align 8
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 1
  store %struct.TYPE_26__* %68, %struct.TYPE_26__** %70, align 8
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 0
  store %struct.TYPE_27__* %72, %struct.TYPE_27__** %4, align 8
  br label %177

73:                                               ; preds = %3
  br label %74

74:                                               ; preds = %124, %73
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %76 = icmp ne %struct.TYPE_28__* %75, null
  br i1 %76, label %77, label %128

77:                                               ; preds = %74
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** @spl_ce_SplPriorityQueue, align 8
  %80 = icmp eq %struct.TYPE_28__* %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i32, i32* @spl_ptr_pqueue_elem_cmp, align 4
  %83 = load i32, i32* @spl_ptr_heap_pqueue_elem_ctor, align 4
  %84 = load i32, i32* @spl_ptr_heap_pqueue_elem_dtor, align 4
  %85 = call i8* @spl_ptr_heap_init(i32 %82, i32 %83, i32 %84, i32 4)
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  store i32* @spl_handler_SplPriorityQueue, i32** %90, align 8
  %91 = load i32, i32* @SPL_PQUEUE_EXTR_DATA, align 4
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  br label %128

94:                                               ; preds = %77
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** @spl_ce_SplMinHeap, align 8
  %97 = icmp eq %struct.TYPE_28__* %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** @spl_ce_SplMaxHeap, align 8
  %101 = icmp eq %struct.TYPE_28__* %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** @spl_ce_SplHeap, align 8
  %105 = icmp eq %struct.TYPE_28__* %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %102, %98, %94
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** @spl_ce_SplMinHeap, align 8
  %109 = icmp eq %struct.TYPE_28__* %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @spl_ptr_heap_zval_min_cmp, align 4
  br label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @spl_ptr_heap_zval_max_cmp, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = load i32, i32* @spl_ptr_heap_zval_ctor, align 4
  %117 = load i32, i32* @spl_ptr_heap_zval_dtor, align 4
  %118 = call i8* @spl_ptr_heap_init(i32 %115, i32 %116, i32 %117, i32 4)
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  store i32* @spl_handler_SplHeap, i32** %123, align 8
  br label %128

124:                                              ; preds = %102
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %126, align 8
  store %struct.TYPE_28__* %127, %struct.TYPE_28__** %9, align 8
  store i32 1, i32* %10, align 4
  br label %74

128:                                              ; preds = %114, %81, %74
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %130 = icmp ne %struct.TYPE_28__* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* @E_COMPILE_ERROR, align 4
  %133 = call i32 @php_error_docref(i32* null, i32 %132, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %174

137:                                              ; preds = %134
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = call i8* @zend_hash_str_find_ptr(i32* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %141 = bitcast i8* %140 to %struct.TYPE_24__*
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 2
  store %struct.TYPE_24__* %141, %struct.TYPE_24__** %143, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %148, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %151 = icmp eq %struct.TYPE_28__* %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %137
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %154, align 8
  br label %155

155:                                              ; preds = %152, %137
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 0
  %158 = call i8* @zend_hash_str_find_ptr(i32* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %159 = bitcast i8* %158 to %struct.TYPE_26__*
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 1
  store %struct.TYPE_26__* %159, %struct.TYPE_26__** %161, align 8
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %166, align 8
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %169 = icmp eq %struct.TYPE_28__* %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %155
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 1
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %172, align 8
  br label %173

173:                                              ; preds = %170, %155
  br label %174

174:                                              ; preds = %173, %134
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 0
  store %struct.TYPE_27__* %176, %struct.TYPE_27__** %4, align 8
  br label %177

177:                                              ; preds = %174, %55
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  ret %struct.TYPE_27__* %178
}

declare dso_local %struct.TYPE_29__* @zend_object_alloc(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @zend_object_std_init(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @object_properties_init(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @spl_heap_from_obj(%struct.TYPE_27__*) #1

declare dso_local i8* @spl_ptr_heap_clone(i8*) #1

declare dso_local i8* @spl_ptr_heap_init(i32, i32, i32, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i8* @zend_hash_str_find_ptr(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
