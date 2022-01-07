; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_memberid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_memberid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@EXPRVAL_IDREF = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@fdexNameEnsure = common dso_local global i32 0, align 4
@JS_E_INVALID_PROPERTY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"failed %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @interp_memberid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @interp_memberid(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @get_op_uint(i32* %13, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @stack_pop(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @stack_pop(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @to_object(i32* %21, i32 %22, i32** %9)
  store i64 %23, i64* %12, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @jsval_release(i32 %24)
  %26 = load i64, i64* %12, align 8
  %27 = call i64 @SUCCEEDED(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @to_flat_string(i32* %30, i32 %31, i32** %8, i32** %7)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @FAILED(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @IDispatch_Release(i32* %37)
  br label %39

39:                                               ; preds = %36, %29
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @jsval_release(i32 %41)
  %43 = load i64, i64* %12, align 8
  %44 = call i64 @FAILED(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %12, align 8
  store i64 %47, i64* %2, align 8
  br label %93

48:                                               ; preds = %40
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @disp_get_id(i32* %49, i32* %50, i32* %51, i32* null, i32 %52, i32* %11)
  store i64 %53, i64* %12, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @jsstr_release(i32* %54)
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @SUCCEEDED(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load i32, i32* @EXPRVAL_IDREF, align 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32* %62, i32** %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %90

70:                                               ; preds = %48
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @IDispatch_Release(i32* %71)
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @fdexNameEnsure, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @JS_E_INVALID_PROPERTY, align 4
  %83 = call i32 @exprval_set_exception(%struct.TYPE_8__* %10, i32 %82)
  %84 = load i64, i64* @S_OK, align 8
  store i64 %84, i64* %12, align 8
  br label %89

85:                                               ; preds = %76, %70
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  %88 = load i64, i64* %12, align 8
  store i64 %88, i64* %2, align 8
  br label %93

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %59
  %91 = load i32*, i32** %3, align 8
  %92 = call i64 @stack_push_exprval(i32* %91, %struct.TYPE_8__* %10)
  store i64 %92, i64* %2, align 8
  br label %93

93:                                               ; preds = %90, %85, %46
  %94 = load i64, i64* %2, align 8
  ret i64 %94
}

declare dso_local i32 @get_op_uint(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @stack_pop(i32*) #1

declare dso_local i64 @to_object(i32*, i32, i32**) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @to_flat_string(i32*, i32, i32**, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i64 @disp_get_id(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @exprval_set_exception(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @stack_push_exprval(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
