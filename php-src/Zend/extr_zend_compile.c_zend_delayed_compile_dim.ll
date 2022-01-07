; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_delayed_compile_dim.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_delayed_compile_dim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_24__** }

@ZEND_DIM_ALTERNATIVE_SYNTAX = common dso_local global i64 0, align 8
@E_DEPRECATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Array and string offset access syntax with curly braces is deprecated\00", align 1
@BP_VAR_W = common dso_local global i32 0, align 4
@ZEND_FETCH_STATIC_PROP_W = common dso_local global i64 0, align 8
@ZEND_FETCH_OBJ_W = common dso_local global i64 0, align 8
@ZEND_FETCH_DIM_WRITE = common dso_local global i32 0, align 4
@BP_VAR_R = common dso_local global i32 0, align 4
@BP_VAR_IS = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot use [] for reading\00", align 1
@BP_VAR_UNSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot use [] for unsetting\00", align 1
@IS_UNUSED = common dso_local global i64 0, align 8
@ZEND_FETCH_DIM_R = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_22__*, %struct.TYPE_24__*, i32)* @zend_delayed_compile_dim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @zend_delayed_compile_dim(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZEND_DIM_ALTERNATIVE_SYNTAX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @E_DEPRECATED, align 4
  %19 = call i32 @zend_error(i32 %18, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %23, i64 0
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %7, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %28, i64 1
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  store %struct.TYPE_24__* %30, %struct.TYPE_24__** %8, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.TYPE_23__* @zend_delayed_compile_var(%struct.TYPE_22__* %10, %struct.TYPE_24__* %31, i32 %32, i32 0)
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %9, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %35 = icmp ne %struct.TYPE_23__* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @BP_VAR_W, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ZEND_FETCH_STATIC_PROP_W, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZEND_FETCH_OBJ_W, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @ZEND_FETCH_DIM_WRITE, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %46, %36, %20
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @zend_separate_if_call_and_write(%struct.TYPE_22__* %10, %struct.TYPE_24__* %59, i32 %60)
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %63 = icmp eq %struct.TYPE_24__* %62, null
  br i1 %63, label %64, label %85

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @BP_VAR_R, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @BP_VAR_IS, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %64
  %73 = load i32, i32* @E_COMPILE_ERROR, align 4
  %74 = call i32 @zend_error_noreturn(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @BP_VAR_UNSET, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @E_COMPILE_ERROR, align 4
  %81 = call i32 @zend_error_noreturn(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i64, i64* @IS_UNUSED, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  br label %88

85:                                               ; preds = %58
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %87 = call i32 @zend_compile_expr(%struct.TYPE_22__* %11, %struct.TYPE_24__* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = load i32, i32* @ZEND_FETCH_DIM_R, align 4
  %91 = call %struct.TYPE_23__* @zend_delayed_emit_op(%struct.TYPE_22__* %89, i32 %90, %struct.TYPE_22__* %10, %struct.TYPE_22__* %11)
  store %struct.TYPE_23__* %91, %struct.TYPE_23__** %9, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @zend_adjust_for_fetch_type(%struct.TYPE_23__* %92, %struct.TYPE_22__* %93, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IS_CONST, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %102 = call i32 @zend_handle_numeric_dim(%struct.TYPE_23__* %101, %struct.TYPE_22__* %11)
  br label %103

103:                                              ; preds = %100, %88
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  ret %struct.TYPE_23__* %104
}

declare dso_local i32 @zend_error(i32, i8*) #1

declare dso_local %struct.TYPE_23__* @zend_delayed_compile_var(%struct.TYPE_22__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @zend_separate_if_call_and_write(%struct.TYPE_22__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*) #1

declare dso_local i32 @zend_compile_expr(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @zend_delayed_emit_op(%struct.TYPE_22__*, i32, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @zend_adjust_for_fetch_type(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @zend_handle_numeric_dim(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
