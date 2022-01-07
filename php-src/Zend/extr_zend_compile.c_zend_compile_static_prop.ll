; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_static_prop.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_static_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_23__, i64, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_26__** }

@ZEND_FETCH_CLASS_EXCEPTION = common dso_local global i32 0, align 4
@ZEND_FETCH_STATIC_PROP_R = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i64 0, align 8
@BP_VAR_W = common dso_local global i32 0, align 4
@BP_VAR_FUNC_ARG = common dso_local global i32 0, align 4
@ZEND_FETCH_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @zend_compile_static_prop(%struct.TYPE_24__* %0, %struct.TYPE_26__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca %struct.TYPE_24__, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %18, i64 0
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %11, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %23, i64 1
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %12, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %27 = load i32, i32* @ZEND_FETCH_CLASS_EXCEPTION, align 4
  %28 = call i32 @zend_compile_class_ref(%struct.TYPE_24__* %13, %struct.TYPE_26__* %26, i32 %27)
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %30 = call i32 @zend_compile_expr(%struct.TYPE_24__* %14, %struct.TYPE_26__* %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = load i32, i32* @ZEND_FETCH_STATIC_PROP_R, align 4
  %36 = call %struct.TYPE_25__* @zend_delayed_emit_op(%struct.TYPE_24__* %34, i32 %35, %struct.TYPE_24__* %14, i32* null)
  store %struct.TYPE_25__* %36, %struct.TYPE_25__** %15, align 8
  br label %41

37:                                               ; preds = %5
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %39 = load i32, i32* @ZEND_FETCH_STATIC_PROP_R, align 4
  %40 = call %struct.TYPE_25__* @zend_emit_op(%struct.TYPE_24__* %38, i32 %39, %struct.TYPE_24__* %14, i32* null)
  store %struct.TYPE_25__* %40, %struct.TYPE_25__** %15, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IS_CONST, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @CT_CONSTANT(i32 %50)
  %52 = call i32 @convert_to_string(i32 %51)
  %53 = call i32 @zend_alloc_cache_slots(i32 3)
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %47, %41
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IS_CONST, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %56
  %62 = load i64, i64* @IS_CONST, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @Z_STR(i32 %67)
  %69 = call i32 @zend_add_class_name_literal(i32 %68)
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IS_CONST, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %61
  %79 = call i32 (...) @zend_alloc_cache_slot()
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %61
  br label %89

83:                                               ; preds = %56
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @SET_NODE(i32 %87, %struct.TYPE_24__* %13)
  br label %89

89:                                               ; preds = %83, %82
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @BP_VAR_W, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @BP_VAR_FUNC_ARG, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96, %92
  %101 = load i32, i32* @ZEND_FETCH_REF, align 4
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %96, %89
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @zend_adjust_for_fetch_type(%struct.TYPE_25__* %107, %struct.TYPE_24__* %108, i32 %109)
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  ret %struct.TYPE_25__* %111
}

declare dso_local i32 @zend_compile_class_ref(%struct.TYPE_24__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @zend_compile_expr(%struct.TYPE_24__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @zend_delayed_emit_op(%struct.TYPE_24__*, i32, %struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_25__* @zend_emit_op(%struct.TYPE_24__*, i32, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @convert_to_string(i32) #1

declare dso_local i32 @CT_CONSTANT(i32) #1

declare dso_local i32 @zend_alloc_cache_slots(i32) #1

declare dso_local i32 @zend_add_class_name_literal(i32) #1

declare dso_local i32 @Z_STR(i32) #1

declare dso_local i32 @zend_alloc_cache_slot(...) #1

declare dso_local i32 @SET_NODE(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @zend_adjust_for_fetch_type(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
