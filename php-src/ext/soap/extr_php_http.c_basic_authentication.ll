; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_http.c_basic_authentication.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_http.c_basic_authentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"_login\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"_digest\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"_password\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Authorization: Basic \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @basic_authentication(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @Z_OBJPROP_P(i32* %10)
  %12 = call i32* @zend_hash_str_find(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  store i32* %12, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %71

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @Z_TYPE_P(i32* %15)
  %17 = load i64, i64* @IS_STRING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @Z_OBJPROP_P(i32* %20)
  %22 = call i32 @zend_hash_str_exists(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %71, label %24

24:                                               ; preds = %19
  %25 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 16, i1 false)
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @Z_STRVAL_P(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @Z_STRLEN_P(i32* %28)
  %30 = call i32 @smart_str_appendl(%struct.TYPE_8__* %9, i8* %27, i32 %29)
  %31 = call i32 @smart_str_appendc(%struct.TYPE_8__* %9, i8 signext 58)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @Z_OBJPROP_P(i32* %32)
  %34 = call i32* @zend_hash_str_find(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  store i32* %34, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %24
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @Z_TYPE_P(i32* %37)
  %39 = load i64, i64* @IS_STRING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32*, i32** %7, align 8
  %43 = call i8* @Z_STRVAL_P(i32* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @Z_STRLEN_P(i32* %44)
  %46 = call i32 @smart_str_appendl(%struct.TYPE_8__* %9, i8* %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %36, %24
  %48 = call i32 @smart_str_0(%struct.TYPE_8__* %9)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @ZSTR_VAL(i32* %50)
  %52 = inttoptr i64 %51 to i8*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ZSTR_LEN(i32* %54)
  %56 = call i32* @php_base64_encode(i8* %52, i32 %55)
  store i32* %56, i32** %8, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = call i32 @smart_str_append_const(%struct.TYPE_8__* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @ZSTR_VAL(i32* %60)
  %62 = inttoptr i64 %61 to i8*
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @ZSTR_LEN(i32* %63)
  %65 = call i32 @smart_str_appendl(%struct.TYPE_8__* %59, i8* %62, i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = call i32 @smart_str_append_const(%struct.TYPE_8__* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @zend_string_release_ex(i32* %68, i32 0)
  %70 = call i32 @smart_str_free(%struct.TYPE_8__* %9)
  store i32 1, i32* %3, align 4
  br label %72

71:                                               ; preds = %19, %14, %2
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32* @zend_hash_str_find(i32, i8*, i32) #1

declare dso_local i32 @Z_OBJPROP_P(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @zend_hash_str_exists(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @smart_str_appendl(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @smart_str_appendc(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32 @smart_str_0(%struct.TYPE_8__*) #1

declare dso_local i32* @php_base64_encode(i8*, i32) #1

declare dso_local i64 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @smart_str_append_const(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @smart_str_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
