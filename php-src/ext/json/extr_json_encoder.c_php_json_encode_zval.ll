; ModuleID = '/home/carl/AnghaBench/php-src/ext/json/extr_json_encoder.c_php_json_encode_zval.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/json/extr_json_encoder.c_php_json_encode_zval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@PHP_JSON_ERROR_INF_OR_NAN = common dso_local global i32 0, align 4
@php_json_serializable_ce = common dso_local global i32 0, align 4
@PHP_JSON_ERROR_UNSUPPORTED_TYPE = common dso_local global i32 0, align 4
@PHP_JSON_PARTIAL_OUTPUT_ON_ERROR = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_json_encode_zval(i32* %0, i32* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  br label %12

12:                                               ; preds = %78, %4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @Z_TYPE_P(i32* %13)
  switch i32 %14, label %81 [
    i32 132, label %15
    i32 128, label %18
    i32 134, label %21
    i32 133, label %24
    i32 135, label %29
    i32 129, label %47
    i32 131, label %56
    i32 136, label %69
    i32 130, label %78
  ]

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @smart_str_appendl(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %94

18:                                               ; preds = %12
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @smart_str_appendl(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %94

21:                                               ; preds = %12
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @smart_str_appendl(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  br label %94

24:                                               ; preds = %12
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @Z_LVAL_P(i32* %26)
  %28 = call i32 @smart_str_append_long(i32* %25, i32 %27)
  br label %94

29:                                               ; preds = %12
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @Z_DVAL_P(i32* %30)
  %32 = call i32 @php_json_is_valid_double(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @Z_DVAL_P(i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @php_json_encode_double(i32* %35, i32 %37, i32 %38)
  br label %46

40:                                               ; preds = %29
  %41 = load i32, i32* @PHP_JSON_ERROR_INF_OR_NAN, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @smart_str_appendc(i32* %44, i32 48)
  br label %46

46:                                               ; preds = %40, %34
  br label %94

47:                                               ; preds = %12
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @Z_STRVAL_P(i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @Z_STRLEN_P(i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = call i32 @php_json_escape_string(i32* %48, i32 %50, i32 %52, i32 %53, %struct.TYPE_6__* %54)
  store i32 %55, i32* %5, align 4
  br label %96

56:                                               ; preds = %12
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @Z_OBJCE_P(i32* %57)
  %59 = load i32, i32* @php_json_serializable_ce, align 4
  %60 = call i32 @instanceof_function(i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = call i32 @php_json_encode_serializable_object(i32* %63, i32* %64, i32 %65, %struct.TYPE_6__* %66)
  store i32 %67, i32* %5, align 4
  br label %96

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %12, %68
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @ZVAL_COPY(i32* %10, i32* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %75 = call i32 @php_json_encode_array(i32* %72, i32* %10, i32 %73, %struct.TYPE_6__* %74)
  store i32 %75, i32* %11, align 4
  %76 = call i32 @zval_ptr_dtor_nogc(i32* %10)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %96

78:                                               ; preds = %12
  %79 = load i32*, i32** %7, align 8
  %80 = call i32* @Z_REFVAL_P(i32* %79)
  store i32* %80, i32** %7, align 8
  br label %12

81:                                               ; preds = %12
  %82 = load i32, i32* @PHP_JSON_ERROR_UNSUPPORTED_TYPE, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @PHP_JSON_PARTIAL_OUTPUT_ON_ERROR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @smart_str_appendl(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %92

92:                                               ; preds = %89, %81
  %93 = load i32, i32* @FAILURE, align 4
  store i32 %93, i32* %5, align 4
  br label %96

94:                                               ; preds = %46, %24, %21, %18, %15
  %95 = load i32, i32* @SUCCESS, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %92, %69, %62, %47
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @smart_str_appendl(i32*, i8*, i32) #1

declare dso_local i32 @smart_str_append_long(i32*, i32) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32 @php_json_is_valid_double(i32) #1

declare dso_local i32 @Z_DVAL_P(i32*) #1

declare dso_local i32 @php_json_encode_double(i32*, i32, i32) #1

declare dso_local i32 @smart_str_appendc(i32*, i32) #1

declare dso_local i32 @php_json_escape_string(i32*, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @instanceof_function(i32, i32) #1

declare dso_local i32 @Z_OBJCE_P(i32*) #1

declare dso_local i32 @php_json_encode_serializable_object(i32*, i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i32 @php_json_encode_array(i32*, i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @zval_ptr_dtor_nogc(i32*) #1

declare dso_local i32* @Z_REFVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
