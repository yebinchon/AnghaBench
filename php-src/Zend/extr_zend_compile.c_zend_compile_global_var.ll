; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_global_var.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_global_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_20__** }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@IS_CONST = common dso_local global i64 0, align 8
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot use $this as global variable\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@ZEND_BIND_GLOBAL = common dso_local global i32 0, align 4
@ZEND_FETCH_W = common dso_local global i32 0, align 4
@ZEND_FETCH_GLOBAL_LOCK = common dso_local global i32 0, align 4
@ZEND_AST_VAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_global_var(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %11, i64 0
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %3, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %16, i64 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %4, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = call i32 @zend_compile_expr(%struct.TYPE_18__* %5, %struct.TYPE_20__* %19)
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IS_CONST, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = call i32 @convert_to_string(i32* %27)
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = call i64 @is_this_fetch(%struct.TYPE_20__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @E_COMPILE_ERROR, align 4
  %35 = call i32 @zend_error_noreturn(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %69

36:                                               ; preds = %29
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = call i64 @zend_try_compile_cv(%struct.TYPE_18__* %6, %struct.TYPE_20__* %37)
  %39 = load i64, i64* @SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @ZEND_BIND_GLOBAL, align 4
  %43 = call %struct.TYPE_19__* @zend_emit_op(%struct.TYPE_18__* null, i32 %42, %struct.TYPE_18__* %6, %struct.TYPE_18__* %5)
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %7, align 8
  %44 = call i32 (...) @zend_alloc_cache_slot()
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %68

47:                                               ; preds = %36
  %48 = load i32, i32* @ZEND_FETCH_W, align 4
  %49 = call %struct.TYPE_19__* @zend_emit_op(%struct.TYPE_18__* %6, i32 %48, %struct.TYPE_18__* %5, %struct.TYPE_18__* null)
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %8, align 8
  %50 = load i32, i32* @ZEND_FETCH_GLOBAL_LOCK, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IS_CONST, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @Z_STR(i32 %60)
  %62 = call i32 @zend_string_addref(i32 %61)
  br label %63

63:                                               ; preds = %57, %47
  %64 = load i32, i32* @ZEND_AST_VAR, align 4
  %65 = call i32 @zend_ast_create_znode(%struct.TYPE_18__* %5)
  %66 = call i32 @zend_ast_create(i32 %64, i32 %65)
  %67 = call i32 @zend_emit_assign_ref_znode(i32 %66, %struct.TYPE_18__* %6)
  br label %68

68:                                               ; preds = %63, %41
  br label %69

69:                                               ; preds = %68, %33
  ret void
}

declare dso_local i32 @zend_compile_expr(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @convert_to_string(i32*) #1

declare dso_local i64 @is_this_fetch(%struct.TYPE_20__*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*) #1

declare dso_local i64 @zend_try_compile_cv(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @zend_emit_op(%struct.TYPE_18__*, i32, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @zend_alloc_cache_slot(...) #1

declare dso_local i32 @zend_string_addref(i32) #1

declare dso_local i32 @Z_STR(i32) #1

declare dso_local i32 @zend_emit_assign_ref_znode(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @zend_ast_create(i32, i32) #1

declare dso_local i32 @zend_ast_create_znode(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
