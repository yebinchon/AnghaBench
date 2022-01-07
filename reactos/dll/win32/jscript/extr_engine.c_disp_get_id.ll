; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_disp_get_id.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_disp_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@IID_IDispatchEx = common dso_local global i32 0, align 4
@fdexNameCaseSensitive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"using IDispatch\0A\00", align 1
@IID_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64, i32, i64*)* @disp_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disp_get_id(i32* %0, i32* %1, i32* %2, i64 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32* @iface_to_jsdisp(i32* %18)
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %6
  %23 = load i32*, i32** %15, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i64*, i64** %13, align 8
  %27 = call i32 @jsdisp_get_id(i32* %23, i32* %24, i32 %25, i64* %26)
  store i32 %27, i32* %17, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = call i32 @jsdisp_release(i32* %28)
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %7, align 4
  br label %78

31:                                               ; preds = %6
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* %11, align 8
  store i64 %35, i64* %16, align 8
  br label %44

36:                                               ; preds = %31
  %37 = load i32*, i32** %10, align 8
  %38 = call i64 @SysAllocString(i32* %37)
  store i64 %38, i64* %16, align 8
  %39 = load i64, i64* %16, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %42, i32* %7, align 4
  br label %78

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i64*, i64** %13, align 8
  store i64 0, i64* %45, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = bitcast i32** %14 to i8**
  %48 = call i32 @IDispatch_QueryInterface(i32* %46, i32* @IID_IDispatchEx, i8** %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call i64 @SUCCEEDED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = load i32*, i32** %14, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @fdexNameCaseSensitive, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @make_grfdex(i32* %55, i32 %58)
  %60 = load i64*, i64** %13, align 8
  %61 = call i32 @IDispatchEx_GetDispID(i32* %53, i64 %54, i32 %59, i64* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @IDispatchEx_Release(i32* %62)
  br label %69

64:                                               ; preds = %44
  %65 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %66 = load i32*, i32** %9, align 8
  %67 = load i64*, i64** %13, align 8
  %68 = call i32 @IDispatch_GetIDsOfNames(i32* %66, i32* @IID_NULL, i64* %16, i32 1, i32 0, i64* %67)
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %64, %52
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %16, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @SysFreeString(i64 %74)
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, i32* %17, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %41, %22
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32* @iface_to_jsdisp(i32*) #1

declare dso_local i32 @jsdisp_get_id(i32*, i32*, i32, i64*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i64 @SysAllocString(i32*) #1

declare dso_local i32 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IDispatchEx_GetDispID(i32*, i64, i32, i64*) #1

declare dso_local i32 @make_grfdex(i32*, i32) #1

declare dso_local i32 @IDispatchEx_Release(i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @IDispatch_GetIDsOfNames(i32*, i32*, i64*, i32, i32, i64*) #1

declare dso_local i32 @SysFreeString(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
