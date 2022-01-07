; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_class_const_decl.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_class_const_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__** }
%struct.TYPE_12__ = type { i32 }

@active_class_entry = common dso_local global i32 0, align 4
@ZEND_ACC_TRAIT = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Traits cannot have constants\00", align 1
@ZEND_ACC_STATIC = common dso_local global i32 0, align 4
@ZEND_ACC_ABSTRACT = common dso_local global i32 0, align 4
@ZEND_ACC_FINAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"constant\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_class_const_decl(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = call %struct.TYPE_13__* @zend_ast_get_list(%struct.TYPE_14__* %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %3, align 8
  %15 = load i32, i32* @active_class_entry, align 4
  %16 = call %struct.TYPE_12__* @CG(i32 %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ZEND_ACC_TRAIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @E_COMPILE_ERROR, align 4
  %25 = call i32 @zend_error_noreturn(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %96

26:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %93, %26
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %96

33:                                               ; preds = %27
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %36, i64 %37
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %6, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %42, i64 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %7, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %47, i64 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %8, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %52, i64 2
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %9, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = call i32 @zend_ast_get_zval(%struct.TYPE_14__* %55)
  %57 = call i32* @zval_make_interned_string(i32 %56)
  store i32* %57, i32** %10, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = icmp ne %struct.TYPE_14__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %33
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = call i32 @zend_ast_get_str(%struct.TYPE_14__* %61)
  %63 = call i32* @zend_string_copy(i32 %62)
  br label %65

64:                                               ; preds = %33
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32* [ %63, %60 ], [ null, %64 ]
  store i32* %66, i32** %11, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %71 = load i32, i32* @ZEND_ACC_ABSTRACT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @ZEND_ACC_FINAL, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %69, %74
  %76 = call i64 @UNEXPECTED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %65
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @zend_check_const_and_trait_alias_attr(i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %65
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = call i32 @zend_const_expr_to_zval(i32* %12, %struct.TYPE_14__* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @zend_declare_class_constant_ex(%struct.TYPE_12__* %86, i32* %87, i32* %12, i32 %90, i32* %91)
  br label %93

93:                                               ; preds = %83
  %94 = load i64, i64* %5, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %5, align 8
  br label %27

96:                                               ; preds = %23, %27
  ret void
}

declare dso_local %struct.TYPE_13__* @zend_ast_get_list(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @CG(i32) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*) #1

declare dso_local i32* @zval_make_interned_string(i32) #1

declare dso_local i32 @zend_ast_get_zval(%struct.TYPE_14__*) #1

declare dso_local i32* @zend_string_copy(i32) #1

declare dso_local i32 @zend_ast_get_str(%struct.TYPE_14__*) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i32 @zend_check_const_and_trait_alias_attr(i32, i8*) #1

declare dso_local i32 @zend_const_expr_to_zval(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @zend_declare_class_constant_ex(%struct.TYPE_12__*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
