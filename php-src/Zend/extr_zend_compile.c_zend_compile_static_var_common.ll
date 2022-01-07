; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_static_var_common.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_static_var_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@active_op_array = common dso_local global i32 0, align 4
@ZEND_HAS_STATIC_IN_METHODS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"this\00", align 1
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot use $this as static variable\00", align 1
@ZEND_BIND_STATIC = common dso_local global i32 0, align 4
@IS_CV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @zend_compile_static_var_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_compile_static_var_common(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @active_op_array, align 4
  %9 = call %struct.TYPE_12__* @CG(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @active_op_array, align 4
  %15 = call %struct.TYPE_12__* @CG(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load i32, i32* @ZEND_HAS_STATIC_IN_METHODS, align 4
  %21 = load i32, i32* @active_op_array, align 4
  %22 = call %struct.TYPE_12__* @CG(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %20
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %19, %13
  %29 = call %struct.TYPE_11__* @zend_new_array(i32 8)
  %30 = load i32, i32* @active_op_array, align 4
  %31 = call %struct.TYPE_12__* @CG(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %32, align 8
  br label %33

33:                                               ; preds = %28, %3
  %34 = load i32, i32* @active_op_array, align 4
  %35 = call %struct.TYPE_12__* @CG(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32* @zend_hash_update(%struct.TYPE_11__* %37, i32* %38, i32* %39)
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @zend_string_equals_literal(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @E_COMPILE_ERROR, align 4
  %46 = call i32 @zend_error_noreturn(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %33
  %48 = load i32, i32* @ZEND_BIND_STATIC, align 4
  %49 = call %struct.TYPE_10__* @zend_emit_op(i32* null, i32 %48, i32* null, i32* null)
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %7, align 8
  %50 = load i32, i32* @IS_CV, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @lookup_cv(i32* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = load i32, i32* @active_op_array, align 4
  %61 = call %struct.TYPE_12__* @CG(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = ptrtoint i8* %59 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  ret void
}

declare dso_local %struct.TYPE_12__* @CG(i32) #1

declare dso_local %struct.TYPE_11__* @zend_new_array(i32) #1

declare dso_local i32* @zend_hash_update(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i64 @zend_string_equals_literal(i32*, i8*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*) #1

declare dso_local %struct.TYPE_10__* @zend_emit_op(i32*, i32, i32*, i32*) #1

declare dso_local i32 @lookup_cv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
