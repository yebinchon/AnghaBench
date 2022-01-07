; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_write_dimension_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_write_dimension_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"offsetSet\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Modification of ArrayObject during sorting is prohibited\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Illegal offset type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, i32*, i32*)* @spl_array_write_dimension_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spl_array_write_dimension_ex(i32 %0, %struct.TYPE_8__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = call %struct.TYPE_9__* @spl_array_from_obj(%struct.TYPE_8__* %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 @ZVAL_NULL(i32* %12)
  store i32* %12, i32** %7, align 8
  br label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @SEPARATE_ARG_IF_REF(i32* %28)
  br label %30

30:                                               ; preds = %27, %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @zend_call_method_with_2_params(%struct.TYPE_8__* %31, i32 %34, i64* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32* %37, i32* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @zval_ptr_dtor(i32* %40)
  br label %105

42:                                               ; preds = %17, %4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @E_WARNING, align 4
  %49 = call i32 @zend_error(i32 %48, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %105

50:                                               ; preds = %42
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @Z_TRY_ADDREF_P(i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = call i32* @spl_array_get_hash_table(%struct.TYPE_9__* %56)
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @zend_hash_next_index_insert(i32* %58, i32* %59)
  br label %105

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %97, %61
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @Z_TYPE_P(i32* %63)
  switch i32 %64, label %100 [
    i32 129, label %65
    i32 135, label %73
    i32 130, label %76
    i32 134, label %79
    i32 128, label %80
    i32 133, label %81
    i32 132, label %91
    i32 131, label %97
  ]

65:                                               ; preds = %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = call i32* @spl_array_get_hash_table(%struct.TYPE_9__* %66)
  store i32* %67, i32** %11, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @Z_STR_P(i32* %69)
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @zend_symtable_update_ind(i32* %68, i32 %70, i32* %71)
  br label %105

73:                                               ; preds = %62
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @Z_DVAL_P(i32* %74)
  store i32 %75, i32* %10, align 4
  br label %84

76:                                               ; preds = %62
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @Z_RES_HANDLE_P(i32* %77)
  store i32 %78, i32* %10, align 4
  br label %84

79:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  br label %84

80:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %84

81:                                               ; preds = %62
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @Z_LVAL_P(i32* %82)
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %81, %80, %79, %76, %73
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %86 = call i32* @spl_array_get_hash_table(%struct.TYPE_9__* %85)
  store i32* %86, i32** %11, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @zend_hash_index_update(i32* %87, i32 %88, i32* %89)
  br label %105

91:                                               ; preds = %62
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %93 = call i32* @spl_array_get_hash_table(%struct.TYPE_9__* %92)
  store i32* %93, i32** %11, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @zend_hash_next_index_insert(i32* %94, i32* %95)
  br label %105

97:                                               ; preds = %62
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @ZVAL_DEREF(i32* %98)
  br label %62

100:                                              ; preds = %62
  %101 = load i32, i32* @E_WARNING, align 4
  %102 = call i32 @zend_error(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @zval_ptr_dtor(i32* %103)
  br label %105

105:                                              ; preds = %100, %91, %84, %65, %55, %47, %30
  ret void
}

declare dso_local %struct.TYPE_9__* @spl_array_from_obj(%struct.TYPE_8__*) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @SEPARATE_ARG_IF_REF(i32*) #1

declare dso_local i32 @zend_call_method_with_2_params(%struct.TYPE_8__*, i32, i64*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @zend_error(i32, i8*) #1

declare dso_local i32 @Z_TRY_ADDREF_P(i32*) #1

declare dso_local i32* @spl_array_get_hash_table(%struct.TYPE_9__*) #1

declare dso_local i32 @zend_hash_next_index_insert(i32*, i32*) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @zend_symtable_update_ind(i32*, i32, i32*) #1

declare dso_local i32 @Z_STR_P(i32*) #1

declare dso_local i32 @Z_DVAL_P(i32*) #1

declare dso_local i32 @Z_RES_HANDLE_P(i32*) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32 @zend_hash_index_update(i32*, i32, i32*) #1

declare dso_local i32 @ZVAL_DEREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
