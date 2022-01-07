; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/transliterator/extr_transliterator_class.c_Transliterator_clone_obj.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/transliterator/extr_transliterator_class.c_Transliterator_clone_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* (i32)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32*, i32 }

@Transliterator_ce_ptr = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Could not clone transliterator\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Cloning unconstructed transliterator.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_17__*)* @Transliterator_clone_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @Transliterator_clone_obj(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %9 = call i32 @intl_error_reset(i32* null)
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = call %struct.TYPE_18__* @php_intl_transliterator_fetch_object(%struct.TYPE_17__* %10)
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %3, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = call i32* @INTL_DATA_ERROR_P(%struct.TYPE_18__* %12)
  %14 = call i32 @intl_error_reset(i32* %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Transliterator_ce_ptr, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__* (i32)*, %struct.TYPE_17__* (i32)** %16, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_17__* %17(i32 %20)
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %5, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = call %struct.TYPE_18__* @php_intl_transliterator_fetch_object(%struct.TYPE_17__* %22)
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %4, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = call i32 @zend_objects_clone_members(i32* %25, i32* %27)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %79

33:                                               ; preds = %1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = call i32 @TRANSLITERATOR_ERROR_CODE_P(%struct.TYPE_18__* %37)
  %39 = call i32* @utrans_clone(i32* %36, i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = call i32 @TRANSLITERATOR_ERROR_CODE(%struct.TYPE_18__* %40)
  %42 = call i64 @U_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %57

45:                                               ; preds = %33
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = call i32 @ZVAL_OBJ(i32* %6, %struct.TYPE_17__* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = call i32 @TRANSLITERATOR_ERROR_CODE_P(%struct.TYPE_18__* %49)
  %51 = call i32 @transliterator_object_construct(i32* %6, i32* %48, i32 %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %53 = call i32 @TRANSLITERATOR_ERROR_CODE(%struct.TYPE_18__* %52)
  %54 = call i64 @U_FAILURE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = call i32 @transliterator_object_destroy(%struct.TYPE_18__* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = call i32 @INTL_DATA_ERROR_CODE(%struct.TYPE_18__* %64)
  %66 = call i32 @intl_error_set_code(i32* null, i32 %65)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %68 = call i32 @TRANSLITERATOR_ERROR_P(%struct.TYPE_18__* %67)
  %69 = call i32 @intl_errors_set_custom_msg(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 0)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %71 = call i32 @TRANSLITERATOR_ERROR_P(%struct.TYPE_18__* %70)
  %72 = call i32* @intl_error_get_message(i32 %71)
  store i32* %72, i32** %8, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @ZSTR_VAL(i32* %73)
  %75 = call i32 @zend_throw_error(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @zend_string_free(i32* %76)
  br label %78

78:                                               ; preds = %63, %45
  br label %82

79:                                               ; preds = %1
  %80 = load i32, i32* @E_WARNING, align 4
  %81 = call i32 @php_error_docref(i32* null, i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %78
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %83
}

declare dso_local i32 @intl_error_reset(i32*) #1

declare dso_local %struct.TYPE_18__* @php_intl_transliterator_fetch_object(%struct.TYPE_17__*) #1

declare dso_local i32* @INTL_DATA_ERROR_P(%struct.TYPE_18__*) #1

declare dso_local i32 @zend_objects_clone_members(i32*, i32*) #1

declare dso_local i32* @utrans_clone(i32*, i32) #1

declare dso_local i32 @TRANSLITERATOR_ERROR_CODE_P(%struct.TYPE_18__*) #1

declare dso_local i64 @U_FAILURE(i32) #1

declare dso_local i32 @TRANSLITERATOR_ERROR_CODE(%struct.TYPE_18__*) #1

declare dso_local i32 @ZVAL_OBJ(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @transliterator_object_construct(i32*, i32*, i32) #1

declare dso_local i32 @transliterator_object_destroy(%struct.TYPE_18__*) #1

declare dso_local i32 @intl_error_set_code(i32*, i32) #1

declare dso_local i32 @INTL_DATA_ERROR_CODE(%struct.TYPE_18__*) #1

declare dso_local i32 @intl_errors_set_custom_msg(i32, i8*, i32) #1

declare dso_local i32 @TRANSLITERATOR_ERROR_P(%struct.TYPE_18__*) #1

declare dso_local i32* @intl_error_get_message(i32) #1

declare dso_local i32 @zend_throw_error(i32*, i8*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_free(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
