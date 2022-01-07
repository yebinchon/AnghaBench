; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_forin.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_forin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid ref: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@IID_IDispatchEx = common dso_local global i32 0, align 4
@fdexEnumDefault = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"No IDispatchEx\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @interp_forin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_forin(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @get_op_uint(i32* %12, i32 0)
  store i32 %13, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %9, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @stack_top(i32* %15)
  %17 = call i32 @is_number(i32 %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @stack_top(i32* %19)
  %21 = call i32 @get_number(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @stack_topn_exprval(i32* %22, i32 1, %struct.TYPE_6__* %7)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @E_FAIL, align 4
  store i32 %30, i32* %2, align 4
  br label %117

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @stack_topn(i32* %32, i32 3)
  %34 = call i64 @is_object_instance(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @stack_topn(i32* %37, i32 3)
  %39 = call i32* @get_object(i32 %38)
  store i32* %39, i32** %5, align 8
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32*, i32** %5, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = load i32*, i32** %5, align 8
  %45 = bitcast i32** %6 to i8**
  %46 = call i32 @IDispatch_QueryInterface(i32* %44, i32* @IID_IDispatchEx, i8** %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @SUCCEEDED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @fdexEnumDefault, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @IDispatchEx_GetNextDispID(i32* %51, i32 %52, i32 %53, i32* %8)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @S_OK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @IDispatchEx_GetMemberName(i32* %59, i32 %60, i32** %9)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %50
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @IDispatchEx_Release(i32* %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @FAILED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %2, align 4
  br label %117

70:                                               ; preds = %62
  br label %73

71:                                               ; preds = %43
  %72 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %70
  br label %74

74:                                               ; preds = %73, %40
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %109

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @SysStringLen(i32* %79)
  %81 = call i32* @jsstr_alloc_len(i32* %78, i32 %80)
  store i32* %81, i32** %11, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @SysFreeString(i32* %82)
  %84 = load i32*, i32** %11, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %87, i32* %2, align 4
  br label %117

88:                                               ; preds = %77
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @stack_pop(i32* %89)
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @jsval_number(i32 %92)
  %94 = call i32 @stack_push(i32* %91, i32 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @jsval_string(i32* %96)
  %98 = call i32 @exprval_propput(i32* %95, %struct.TYPE_6__* %7, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @jsstr_release(i32* %99)
  %101 = load i32, i32* %10, align 4
  %102 = call i64 @FAILED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %88
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %2, align 4
  br label %117

106:                                              ; preds = %88
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @jmp_next(i32* %107)
  br label %115

109:                                              ; preds = %74
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @stack_popn(i32* %110, i32 4)
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @jmp_abs(i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %106
  %116 = load i32, i32* @S_OK, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %104, %86, %68, %25
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @get_op_uint(i32*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_number(i32) #1

declare dso_local i32 @stack_top(i32*) #1

declare dso_local i32 @get_number(i32) #1

declare dso_local i32 @stack_topn_exprval(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32 @stack_topn(i32*, i32) #1

declare dso_local i32* @get_object(i32) #1

declare dso_local i32 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IDispatchEx_GetNextDispID(i32*, i32, i32, i32*) #1

declare dso_local i32 @IDispatchEx_GetMemberName(i32*, i32, i32**) #1

declare dso_local i32 @IDispatchEx_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32* @jsstr_alloc_len(i32*, i32) #1

declare dso_local i32 @SysStringLen(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @stack_pop(i32*) #1

declare dso_local i32 @stack_push(i32*, i32) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @exprval_propput(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @jmp_next(i32*) #1

declare dso_local i32 @stack_popn(i32*, i32) #1

declare dso_local i32 @jmp_abs(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
