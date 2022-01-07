; ModuleID = '/home/carl/AnghaBench/php-src/ext/json/extr_json_encoder.c_php_json_encode_serializable_object.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/json/extr_json_encoder.c_php_json_encode_serializable_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@PHP_JSON_ERROR_RECURSION = common dso_local global i32 0, align 4
@PHP_JSON_PARTIAL_OUTPUT_ON_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"jsonSerialize\00", align 1
@IS_UNDEF = common dso_local global i64 0, align 8
@exception = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed calling %s::jsonSerialize()\00", align 1
@IS_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_8__*)* @php_json_encode_serializable_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_json_encode_serializable_object(i32* %0, i32* %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.TYPE_7__* @Z_OBJCE_P(i32* %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %10, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @Z_OBJPROP_P(i32* %17)
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load i32*, i32** %11, align 8
  %23 = call i64 @GC_IS_RECURSIVE(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32, i32* @PHP_JSON_ERROR_RECURSION, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PHP_JSON_PARTIAL_OUTPUT_ON_ERROR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @smart_str_appendl(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load i32, i32* @FAILURE, align 4
  store i32 %37, i32* %5, align 4
  br label %121

38:                                               ; preds = %21, %4
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @PHP_JSON_HASH_PROTECT_RECURSION(i32* %39)
  %41 = call i32 @ZVAL_STRING(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @FAILURE, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @call_user_function(i32* null, i32* %43, i32* %13, i32* %12, i32 0, i32* null)
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @Z_TYPE(i32 %47)
  %49 = load i64, i64* @IS_UNDEF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %46, %38
  %52 = load i32, i32* @exception, align 4
  %53 = call i64 @EG(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ZSTR_VAL(i32 %58)
  %60 = call i32 @zend_throw_exception_ex(i32* null, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %51
  %62 = call i32 @zval_ptr_dtor(i32* %13)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PHP_JSON_PARTIAL_OUTPUT_ON_ERROR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @smart_str_appendl(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @PHP_JSON_HASH_UNPROTECT_RECURSION(i32* %71)
  %73 = load i32, i32* @FAILURE, align 4
  store i32 %73, i32* %5, align 4
  br label %121

74:                                               ; preds = %46
  %75 = load i32, i32* @exception, align 4
  %76 = call i64 @EG(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = call i32 @zval_ptr_dtor(i32* %12)
  %80 = call i32 @zval_ptr_dtor(i32* %13)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @PHP_JSON_PARTIAL_OUTPUT_ON_ERROR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @smart_str_appendl(i32* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %88

88:                                               ; preds = %85, %78
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @PHP_JSON_HASH_UNPROTECT_RECURSION(i32* %89)
  %91 = load i32, i32* @FAILURE, align 4
  store i32 %91, i32* %5, align 4
  br label %121

92:                                               ; preds = %74
  %93 = load i32, i32* %12, align 4
  %94 = call i64 @Z_TYPE(i32 %93)
  %95 = load i64, i64* @IS_OBJECT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @Z_OBJ(i32 %98)
  %100 = load i32*, i32** %7, align 8
  %101 = call i64 @Z_OBJ_P(i32* %100)
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @PHP_JSON_HASH_UNPROTECT_RECURSION(i32* %104)
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %109 = call i32 @php_json_encode_array(i32* %106, i32* %12, i32 %107, %struct.TYPE_8__* %108)
  store i32 %109, i32* %14, align 4
  br label %117

110:                                              ; preds = %97, %92
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %114 = call i32 @php_json_encode_zval(i32* %111, i32* %12, i32 %112, %struct.TYPE_8__* %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @PHP_JSON_HASH_UNPROTECT_RECURSION(i32* %115)
  br label %117

117:                                              ; preds = %110, %103
  %118 = call i32 @zval_ptr_dtor(i32* %12)
  %119 = call i32 @zval_ptr_dtor(i32* %13)
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %117, %88, %70, %36
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.TYPE_7__* @Z_OBJCE_P(i32*) #1

declare dso_local i32* @Z_OBJPROP_P(i32*) #1

declare dso_local i64 @GC_IS_RECURSIVE(i32*) #1

declare dso_local i32 @smart_str_appendl(i32*, i8*, i32) #1

declare dso_local i32 @PHP_JSON_HASH_PROTECT_RECURSION(i32*) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i32 @call_user_function(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i64 @EG(i32) #1

declare dso_local i32 @zend_throw_exception_ex(i32*, i32, i8*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @PHP_JSON_HASH_UNPROTECT_RECURSION(i32*) #1

declare dso_local i64 @Z_OBJ(i32) #1

declare dso_local i64 @Z_OBJ_P(i32*) #1

declare dso_local i32 @php_json_encode_array(i32*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @php_json_encode_zval(i32*, i32*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
