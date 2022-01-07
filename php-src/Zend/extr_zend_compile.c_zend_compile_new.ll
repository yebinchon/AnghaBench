; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_new.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_28__** }
%struct.TYPE_27__ = type { i64, %struct.TYPE_21__, %struct.TYPE_25__, i64, %struct.TYPE_23__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@ZEND_AST_CLASS = common dso_local global i64 0, align 8
@ZEND_FETCH_CLASS_EXCEPTION = common dso_local global i32 0, align 4
@ZEND_NEW = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_new(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_26__, align 8
  %8 = alloca %struct.TYPE_26__, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %12, i64 0
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %14, %struct.TYPE_28__** %5, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %17, i64 1
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  store %struct.TYPE_28__* %19, %struct.TYPE_28__** %6, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ZEND_AST_CLASS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = call %struct.TYPE_27__* @zend_compile_class_decl(%struct.TYPE_28__* %26, i32 0)
  store %struct.TYPE_27__* %27, %struct.TYPE_27__** %9, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  br label %43

39:                                               ; preds = %2
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %41 = load i32, i32* @ZEND_FETCH_CLASS_EXCEPTION, align 4
  %42 = call i32 @zend_compile_class_ref(%struct.TYPE_26__* %7, %struct.TYPE_28__* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %25
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %45 = load i32, i32* @ZEND_NEW, align 4
  %46 = call %struct.TYPE_27__* @zend_emit_op(%struct.TYPE_26__* %44, i32 %45, i32* null, i32* null)
  store %struct.TYPE_27__* %46, %struct.TYPE_27__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IS_CONST, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %43
  %52 = load i64, i64* @IS_CONST, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @Z_STR(i32 %57)
  %59 = call i32 @zend_add_class_name_literal(i32 %58)
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = call i32 (...) @zend_alloc_cache_slot()
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %73

67:                                               ; preds = %43
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @SET_NODE(i32 %71, %struct.TYPE_26__* %7)
  br label %73

73:                                               ; preds = %67, %51
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %75 = call i32 @zend_compile_call_common(%struct.TYPE_26__* %8, %struct.TYPE_28__* %74, i32* null)
  %76 = call i32 @zend_do_free(%struct.TYPE_26__* %8)
  ret void
}

declare dso_local %struct.TYPE_27__* @zend_compile_class_decl(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @zend_compile_class_ref(%struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_27__* @zend_emit_op(%struct.TYPE_26__*, i32, i32*, i32*) #1

declare dso_local i32 @zend_add_class_name_literal(i32) #1

declare dso_local i32 @Z_STR(i32) #1

declare dso_local i32 @zend_alloc_cache_slot(...) #1

declare dso_local i32 @SET_NODE(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @zend_compile_call_common(%struct.TYPE_26__*, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @zend_do_free(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
