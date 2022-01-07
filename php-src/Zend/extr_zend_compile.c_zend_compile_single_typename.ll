; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_single_typename.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_single_typename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@ZEND_TYPE_NULLABLE = common dso_local global i32 0, align 4
@ZEND_AST_TYPE = common dso_local global i64 0, align 8
@ZEND_NAME_NOT_FQ = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Type declaration '%s' must be unqualified\00", align 1
@ZEND_FETCH_CLASS_DEFAULT = common dso_local global i64 0, align 8
@current_namespace = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c" or import the class with \22use\22\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@E_COMPILE_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [100 x i8] c"\22%s\22 will be interpreted as a class name. Did you mean \22%s\22? Write \22\\%s\22%s to suppress this warning\00", align 1
@.str.4 = private unnamed_addr constant [117 x i8] c"\22%s\22 is not a supported builtin type and will be interpreted as a class name. Write \22\\%s\22%s to suppress this warning\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @zend_compile_single_typename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_compile_single_typename(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ZEND_TYPE_NULLABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ZEND_ASSERT(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZEND_AST_TYPE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ZEND_TYPE_INIT_CODE(i32 %27, i32 0, i32 0)
  store i32 %28, i32* %2, align 4
  br label %118

29:                                               ; preds = %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = call i32* @zend_ast_get_str(%struct.TYPE_6__* %30)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @zend_lookup_builtin_type_by_name(i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ZEND_NAME_NOT_FQ, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @ZEND_NAME_NOT_FQ, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @E_COMPILE_ERROR, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @zend_string_tolower(i32* %46)
  %48 = call i32 @ZSTR_VAL(i32* %47)
  %49 = call i32 @zend_error_noreturn(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %36
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ZEND_TYPE_INIT_CODE(i32 %51, i32 0, i32 0)
  store i32 %52, i32* %2, align 4
  br label %118

53:                                               ; preds = %29
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = call i32* @zend_ast_get_str(%struct.TYPE_6__* %54)
  store i32* %55, i32** %7, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = call i64 @zend_get_class_fetch_type_ast(%struct.TYPE_6__* %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @ZEND_FETCH_CLASS_DEFAULT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = call i32* @zend_resolve_class_name_ast(%struct.TYPE_6__* %62)
  store i32* %63, i32** %4, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @zend_assert_valid_class_name(i32* %64)
  br label %71

66:                                               ; preds = %53
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @zend_ensure_valid_class_fetch_type(i64 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @zend_string_addref(i32* %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ZEND_NAME_NOT_FQ, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %71
  %78 = load i32*, i32** %7, align 8
  %79 = call i64 @zend_is_confusable_type(i32* %78, i8** %6)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %77
  %82 = load i32*, i32** %7, align 8
  %83 = call i64 @zend_is_not_imported(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %81
  %86 = load i32, i32* @current_namespace, align 4
  %87 = call i64 @FC(i32 %86)
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %85
  %94 = load i32, i32* @E_COMPILE_WARNING, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @ZSTR_VAL(i32* %95)
  %97 = load i8*, i8** %6, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @ZSTR_VAL(i32* %98)
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 (i32, i8*, i32, i8*, i8*, ...) @zend_error(i32 %94, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0), i32 %96, i8* %97, i8* %101, i8* %102)
  br label %114

104:                                              ; preds = %85
  %105 = load i32, i32* @E_COMPILE_WARNING, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @ZSTR_VAL(i32* %106)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @ZSTR_VAL(i32* %108)
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 (i32, i8*, i32, i8*, i8*, ...) @zend_error(i32 %105, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.4, i64 0, i64 0), i32 %107, i8* %111, i8* %112)
  br label %114

114:                                              ; preds = %104, %93
  br label %115

115:                                              ; preds = %114, %81, %77, %71
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @ZEND_TYPE_INIT_CLASS(i32* %116, i32 0, i32 0)
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %115, %50, %24
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @ZEND_TYPE_INIT_CODE(i32, i32, i32) #1

declare dso_local i32* @zend_ast_get_str(%struct.TYPE_6__*) #1

declare dso_local i32 @zend_lookup_builtin_type_by_name(i32*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32* @zend_string_tolower(i32*) #1

declare dso_local i64 @zend_get_class_fetch_type_ast(%struct.TYPE_6__*) #1

declare dso_local i32* @zend_resolve_class_name_ast(%struct.TYPE_6__*) #1

declare dso_local i32 @zend_assert_valid_class_name(i32*) #1

declare dso_local i32 @zend_ensure_valid_class_fetch_type(i64) #1

declare dso_local i32 @zend_string_addref(i32*) #1

declare dso_local i64 @zend_is_confusable_type(i32*, i8**) #1

declare dso_local i64 @zend_is_not_imported(i32*) #1

declare dso_local i64 @FC(i32) #1

declare dso_local i32 @zend_error(i32, i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @ZEND_TYPE_INIT_CLASS(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
