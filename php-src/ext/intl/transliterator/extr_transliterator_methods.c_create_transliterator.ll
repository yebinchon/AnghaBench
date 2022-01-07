; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/transliterator/extr_transliterator_methods.c_create_transliterator.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/transliterator/extr_transliterator_methods.c_create_transliterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@__const.create_transliterator.parse_error = private unnamed_addr constant %struct.TYPE_3__ { i32 0, i32 -1 }, align 4
@TRANSLITERATOR_FORWARD = common dso_local global i64 0, align 8
@TRANSLITERATOR_REVERSE = common dso_local global i64 0, align 8
@U_ILLEGAL_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"transliterator_create: invalid direction\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@Transliterator_ce_ptr = common dso_local global i32 0, align 4
@TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"String conversion of id to UTF-16 failed\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"transliterator_create: unable to open ICU transliterator with id \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"transliterator_create: unable to open ICU transliterator\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"transliterator_create: internal constructor call failed\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i32*)* @create_transliterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_transliterator(i8* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = bitcast %struct.TYPE_3__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_3__* @__const.create_transliterator.parse_error to i8*), i64 8, i1 false)
  %17 = call i32 @intl_error_reset(i32* null)
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @TRANSLITERATOR_FORWARD, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @TRANSLITERATOR_REVERSE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @U_ILLEGAL_ARGUMENT_ERROR, align 4
  %27 = call i32 @intl_error_set(i32* null, i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 0)
  %28 = load i32, i32* @FAILURE, align 4
  store i32 %28, i32* %5, align 4
  br label %108

29:                                               ; preds = %21, %4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* @Transliterator_ce_ptr, align 4
  %32 = call i32 @object_init_ex(i32* %30, i32 %31)
  %33 = load i32, i32* @TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @TRANSLITERATOR_ERROR_CODE_P(i32* %36)
  %38 = call i32 @intl_convert_utf8_to_utf16(i8** %11, i32* %12, i8* %34, i64 %35, i32 %37)
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @TRANSLITERATOR_ERROR_CODE(i32* %39)
  %41 = call i64 @U_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %29
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @TRANSLITERATOR_ERROR_CODE(i32* %44)
  %46 = call i32 @intl_error_set_code(i32* null, i32 %45)
  %47 = call i32 @intl_error_set_custom_msg(i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @zval_ptr_dtor(i32* %48)
  %50 = load i32, i32* @FAILURE, align 4
  store i32 %50, i32* %5, align 4
  br label %108

51:                                               ; preds = %29
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i64, i64* %8, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @TRANSLITERATOR_ERROR_CODE_P(i32* %56)
  %58 = call i32* @utrans_openU(i8* %52, i32 %53, i32 %55, i32* null, i32 -1, %struct.TYPE_3__* %14, i32 %57)
  store i32* %58, i32** %13, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @efree(i8* %62)
  br label %64

64:                                               ; preds = %61, %51
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @TRANSLITERATOR_ERROR_CODE(i32* %65)
  %67 = call i64 @U_FAILURE(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  store i8* null, i8** %15, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @TRANSLITERATOR_ERROR_CODE(i32* %70)
  %72 = call i32 @intl_error_set_code(i32* null, i32 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @spprintf(i8** %15, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  %75 = load i8*, i8** %15, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = call i32 @intl_error_set_custom_msg(i32* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %84

79:                                               ; preds = %69
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @intl_error_set_custom_msg(i32* null, i8* %80, i32 1)
  %82 = load i8*, i8** %15, align 8
  %83 = call i32 @efree(i8* %82)
  br label %84

84:                                               ; preds = %79, %77
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @zval_ptr_dtor(i32* %85)
  %87 = load i32, i32* @FAILURE, align 4
  store i32 %87, i32* %5, align 4
  br label %108

88:                                               ; preds = %64
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @TRANSLITERATOR_ERROR_CODE_P(i32* %91)
  %93 = call i32 @transliterator_object_construct(i32* %89, i32* %90, i32 %92)
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @TRANSLITERATOR_ERROR_CODE(i32* %94)
  %96 = call i64 @U_FAILURE(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %88
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @TRANSLITERATOR_ERROR_CODE(i32* %99)
  %101 = call i32 @intl_error_set_code(i32* null, i32 %100)
  %102 = call i32 @intl_error_set_custom_msg(i32* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @zval_ptr_dtor(i32* %103)
  %105 = load i32, i32* @FAILURE, align 4
  store i32 %105, i32* %5, align 4
  br label %108

106:                                              ; preds = %88
  %107 = load i32, i32* @SUCCESS, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %98, %84, %43, %25
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @intl_error_reset(i32*) #2

declare dso_local i32 @intl_error_set(i32*, i32, i8*, i32) #2

declare dso_local i32 @object_init_ex(i32*, i32) #2

declare dso_local i32 @intl_convert_utf8_to_utf16(i8**, i32*, i8*, i64, i32) #2

declare dso_local i32 @TRANSLITERATOR_ERROR_CODE_P(i32*) #2

declare dso_local i64 @U_FAILURE(i32) #2

declare dso_local i32 @TRANSLITERATOR_ERROR_CODE(i32*) #2

declare dso_local i32 @intl_error_set_code(i32*, i32) #2

declare dso_local i32 @intl_error_set_custom_msg(i32*, i8*, i32) #2

declare dso_local i32 @zval_ptr_dtor(i32*) #2

declare dso_local i32* @utrans_openU(i8*, i32, i32, i32*, i32, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @efree(i8*) #2

declare dso_local i32 @spprintf(i8**, i32, i8*, i8*) #2

declare dso_local i32 @transliterator_object_construct(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
