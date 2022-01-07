; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_begin_func_decl.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_begin_func_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i8*, i32, i32 }

@imports_function = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Cannot declare function %s because the name is already in use\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"__autoload\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"__autoload() is no longer supported, use spl_autoload_register() instead\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.4 = private unnamed_addr constant [90 x i8] c"Defining a custom assert() function is not allowed, as the function has special semantics\00", align 1
@ZEND_SYMBOL_FUNCTION = common dso_local global i32 0, align 4
@function_table = common dso_local global i32 0, align 4
@ZEND_ACC_CLOSURE = common dso_local global i32 0, align 4
@ZEND_DECLARE_LAMBDA_FUNCTION = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i8* null, align 8
@ZEND_DECLARE_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, %struct.TYPE_13__*, i64)* @zend_begin_func_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_begin_func_decl(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_13__* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32* @zend_prefix_with_ns(i32* %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32* @zend_string_tolower(i32* %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32, i32* @imports_function, align 4
  %25 = call i64 @FC(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %4
  %28 = load i32, i32* @imports_function, align 4
  %29 = call i64 @FC(i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @ZSTR_VAL(i32* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @ZSTR_LEN(i32* %32)
  %34 = call i32* @zend_hash_find_ptr_lc(i64 %29, i32 %31, i32 %33)
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @zend_string_equals_ci(i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @E_COMPILE_ERROR, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @ZSTR_VAL(i32* %44)
  %46 = call i32 (i32, i8*, ...) @zend_error_noreturn(i32 %43, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %37, %27
  br label %48

48:                                               ; preds = %47, %4
  %49 = load i32*, i32** %11, align 8
  %50 = call i64 @zend_string_equals_literal(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @E_COMPILE_ERROR, align 4
  %54 = call i32 (i32, i8*, ...) @zend_error_noreturn(i32 %53, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @zend_string_equals_literal_ci(i32* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @E_COMPILE_ERROR, align 4
  %61 = call i32 @zend_error(i32 %60, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @ZEND_SYMBOL_FUNCTION, align 4
  %65 = call i32 @zend_register_seen_symbol(i32* %63, i32 %64)
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load i32, i32* @function_table, align 4
  %70 = call i32 @CG(i32 %69)
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = call i32* @zend_hash_add_ptr(i32 %70, i32* %71, %struct.TYPE_11__* %72)
  %74 = icmp eq i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i64 @UNEXPECTED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load i32*, i32** %11, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = call i32 @do_bind_function_error(i32* %79, %struct.TYPE_11__* %80, i32 1)
  br label %82

82:                                               ; preds = %78, %68
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @zend_string_release_ex(i32* %83, i32 0)
  br label %135

85:                                               ; preds = %62
  %86 = load i32*, i32** %11, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32* @zend_build_runtime_definition_key(i32* %86, i32 %89)
  store i32* %90, i32** %12, align 8
  %91 = load i32, i32* @function_table, align 4
  %92 = call i32 @CG(i32 %91)
  %93 = load i32*, i32** %12, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = call i32 @zend_hash_update_ptr(i32 %92, i32* %93, %struct.TYPE_11__* %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ZEND_ACC_CLOSURE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %85
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* @ZEND_DECLARE_LAMBDA_FUNCTION, align 4
  %105 = call %struct.TYPE_12__* @zend_emit_op_tmp(i32* %103, i32 %104, i32* null, i32* null)
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %13, align 8
  %106 = call i32 (...) @zend_alloc_cache_slot()
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i8*, i8** @IS_CONST, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @LITERAL_STR(i32 %114, i32* %115)
  br label %132

117:                                              ; preds = %85
  %118 = call %struct.TYPE_12__* (...) @get_next_op()
  store %struct.TYPE_12__* %118, %struct.TYPE_12__** %13, align 8
  %119 = load i32, i32* @ZEND_DECLARE_FUNCTION, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i8*, i8** @IS_CONST, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = call i32* @zend_string_copy(i32* %128)
  %130 = call i32 @LITERAL_STR(i32 %127, i32* %129)
  %131 = call i32 @zend_add_literal_string(i32** %12)
  br label %132

132:                                              ; preds = %117, %102
  %133 = load i32*, i32** %11, align 8
  %134 = call i32 @zend_string_release_ex(i32* %133, i32 0)
  br label %135

135:                                              ; preds = %132, %82
  ret void
}

declare dso_local i32* @zend_prefix_with_ns(i32*) #1

declare dso_local i32* @zend_string_tolower(i32*) #1

declare dso_local i64 @FC(i32) #1

declare dso_local i32* @zend_hash_find_ptr_lc(i64, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_string_equals_ci(i32*, i32*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, ...) #1

declare dso_local i64 @zend_string_equals_literal(i32*, i8*) #1

declare dso_local i64 @zend_string_equals_literal_ci(i32*, i8*) #1

declare dso_local i32 @zend_error(i32, i8*) #1

declare dso_local i32 @zend_register_seen_symbol(i32*, i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i32* @zend_hash_add_ptr(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @CG(i32) #1

declare dso_local i32 @do_bind_function_error(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32* @zend_build_runtime_definition_key(i32*, i32) #1

declare dso_local i32 @zend_hash_update_ptr(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @zend_emit_op_tmp(i32*, i32, i32*, i32*) #1

declare dso_local i32 @zend_alloc_cache_slot(...) #1

declare dso_local i32 @LITERAL_STR(i32, i32*) #1

declare dso_local %struct.TYPE_12__* @get_next_op(...) #1

declare dso_local i32* @zend_string_copy(i32*) #1

declare dso_local i32 @zend_add_literal_string(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
