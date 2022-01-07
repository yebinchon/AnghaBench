; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_delayed_compile_prop.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_delayed_compile_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_26__** }
%struct.TYPE_24__ = type { i32 }

@IS_UNUSED = common dso_local global i32 0, align 4
@ZEND_FETCH_THIS = common dso_local global i32 0, align 4
@ZEND_ACC_USES_THIS = common dso_local global i32 0, align 4
@active_op_array = common dso_local global i32 0, align 4
@ZEND_FETCH_OBJ_R = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (%struct.TYPE_23__*, %struct.TYPE_26__*, i32)* @zend_delayed_compile_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @zend_delayed_compile_prop(%struct.TYPE_23__* %0, %struct.TYPE_26__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_23__, align 4
  %10 = alloca %struct.TYPE_23__, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %14, i64 0
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %7, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %19, i64 1
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %8, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %23 = call i64 @is_this_fetch(%struct.TYPE_26__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %3
  %26 = call i64 (...) @this_guaranteed_exists()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @IS_UNUSED, align 4
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ZEND_FETCH_THIS, align 4
  %33 = call i32 @zend_emit_op(%struct.TYPE_23__* %9, i32 %32, i32* null, i32* null)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @ZEND_ACC_USES_THIS, align 4
  %36 = load i32, i32* @active_op_array, align 4
  %37 = call %struct.TYPE_24__* @CG(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  br label %48

41:                                               ; preds = %3
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.TYPE_25__* @zend_delayed_compile_var(%struct.TYPE_23__* %9, %struct.TYPE_26__* %42, i32 %43, i32 0)
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %11, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @zend_separate_if_call_and_write(%struct.TYPE_23__* %9, %struct.TYPE_26__* %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %34
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %50 = call i32 @zend_compile_expr(%struct.TYPE_23__* %10, %struct.TYPE_26__* %49)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %52 = load i32, i32* @ZEND_FETCH_OBJ_R, align 4
  %53 = call %struct.TYPE_25__* @zend_delayed_emit_op(%struct.TYPE_23__* %51, i32 %52, %struct.TYPE_23__* %9, %struct.TYPE_23__* %10)
  store %struct.TYPE_25__* %53, %struct.TYPE_25__** %11, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IS_CONST, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @CT_CONSTANT(i32 %62)
  %64 = call i32 @convert_to_string(i32 %63)
  %65 = call i32 @zend_alloc_cache_slots(i32 3)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %59, %48
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @zend_adjust_for_fetch_type(%struct.TYPE_25__* %69, %struct.TYPE_23__* %70, i32 %71)
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  ret %struct.TYPE_25__* %73
}

declare dso_local i64 @is_this_fetch(%struct.TYPE_26__*) #1

declare dso_local i64 @this_guaranteed_exists(...) #1

declare dso_local i32 @zend_emit_op(%struct.TYPE_23__*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_24__* @CG(i32) #1

declare dso_local %struct.TYPE_25__* @zend_delayed_compile_var(%struct.TYPE_23__*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @zend_separate_if_call_and_write(%struct.TYPE_23__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @zend_compile_expr(%struct.TYPE_23__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @zend_delayed_emit_op(%struct.TYPE_23__*, i32, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @convert_to_string(i32) #1

declare dso_local i32 @CT_CONSTANT(i32) #1

declare dso_local i32 @zend_alloc_cache_slots(i32) #1

declare dso_local i32 @zend_adjust_for_fetch_type(%struct.TYPE_25__*, %struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
