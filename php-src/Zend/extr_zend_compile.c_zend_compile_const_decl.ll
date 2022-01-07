; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_const_decl.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_const_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__** }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__** }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i32 }

@IS_CONST = common dso_local global i8* null, align 8
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot redeclare constant '%s'\00", align 1
@imports_const = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Cannot declare const %s because the name is already in use\00", align 1
@ZEND_DECLARE_CONST = common dso_local global i32 0, align 4
@ZEND_SYMBOL_CONST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_const_decl(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = call %struct.TYPE_14__* @zend_ast_get_list(%struct.TYPE_15__* %14)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %97, %1
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %100

22:                                               ; preds = %16
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %25, i64 %26
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %5, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %31, i64 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %6, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %36, i64 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %7, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = call i32* @zend_ast_get_str(%struct.TYPE_15__* %39)
  store i32* %40, i32** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  store i32* %42, i32** %12, align 8
  %43 = load i8*, i8** @IS_CONST, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = call i32 @zend_const_expr_to_zval(i32* %45, %struct.TYPE_15__* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @ZSTR_VAL(i32* %48)
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @ZSTR_LEN(i32* %50)
  %52 = call i64 @zend_get_special_const(i32 %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %22
  %55 = load i32, i32* @E_COMPILE_ERROR, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @ZSTR_VAL(i32* %56)
  %58 = call i32 @zend_error_noreturn(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %22
  %60 = load i32*, i32** %8, align 8
  %61 = call i32* @zend_prefix_with_ns(i32* %60)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32* @zend_new_interned_string(i32* %62)
  store i32* %63, i32** %9, align 8
  %64 = load i32, i32* @imports_const, align 4
  %65 = call i64 @FC(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %59
  %68 = load i32, i32* @imports_const, align 4
  %69 = call i64 @FC(i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i32* @zend_hash_find_ptr(i64 %69, i32* %70)
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @zend_string_equals(i32* %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @E_COMPILE_ERROR, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @ZSTR_VAL(i32* %81)
  %83 = call i32 @zend_error_noreturn(i32 %80, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %74, %67
  br label %85

85:                                               ; preds = %84, %59
  %86 = load i8*, i8** @IS_CONST, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @ZVAL_STR(i32* %89, i32* %90)
  %92 = load i32, i32* @ZEND_DECLARE_CONST, align 4
  %93 = call i32 @zend_emit_op(i32* null, i32 %92, %struct.TYPE_13__* %10, %struct.TYPE_13__* %11)
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @ZEND_SYMBOL_CONST, align 4
  %96 = call i32 @zend_register_seen_symbol(i32* %94, i32 %95)
  br label %97

97:                                               ; preds = %85
  %98 = load i64, i64* %4, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %4, align 8
  br label %16

100:                                              ; preds = %16
  ret void
}

declare dso_local %struct.TYPE_14__* @zend_ast_get_list(%struct.TYPE_15__*) #1

declare dso_local i32* @zend_ast_get_str(%struct.TYPE_15__*) #1

declare dso_local i32 @zend_const_expr_to_zval(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @zend_get_special_const(i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i32) #1

declare dso_local i32* @zend_prefix_with_ns(i32*) #1

declare dso_local i32* @zend_new_interned_string(i32*) #1

declare dso_local i64 @FC(i32) #1

declare dso_local i32* @zend_hash_find_ptr(i64, i32*) #1

declare dso_local i32 @zend_string_equals(i32*, i32*) #1

declare dso_local i32 @ZVAL_STR(i32*, i32*) #1

declare dso_local i32 @zend_emit_op(i32*, i32, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @zend_register_seen_symbol(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
