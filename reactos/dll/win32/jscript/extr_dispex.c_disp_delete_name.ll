; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_disp_delete_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_disp_delete_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@IID_IDispatchEx = common dso_local global i32 0, align 4
@fdexNameCaseSensitive = common dso_local global i32 0, align 4
@IID_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @disp_delete_name(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @iface_to_jsdisp(i32* %17)
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @jsstr_flatten(i32* %22)
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @jsdisp_release(i32* %27)
  %29 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %29, i64* %5, align 8
  br label %110

30:                                               ; preds = %21
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = call i32 @string_hash(i32* %32)
  %34 = load i32*, i32** %15, align 8
  %35 = call i64 @find_prop_name(i32* %31, i32 %33, i32* %34, i32** %14)
  store i64 %35, i64* %13, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32*, i32** %14, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @delete_prop(i32* %39, i32* %40)
  store i64 %41, i64* %13, align 8
  br label %46

42:                                               ; preds = %30
  %43 = load i32, i32* @TRUE, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i64, i64* @S_OK, align 8
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @jsdisp_release(i32* %47)
  %49 = load i64, i64* %13, align 8
  store i64 %49, i64* %5, align 8
  br label %110

50:                                               ; preds = %4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @jsstr_length(i32* %51)
  %53 = call i32 @SysAllocStringLen(i32* null, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %57, i64* %5, align 8
  br label %110

58:                                               ; preds = %50
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @jsstr_flush(i32* %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = bitcast i32** %10 to i8**
  %64 = call i64 @IDispatch_QueryInterface(i32* %62, i32* @IID_IDispatchEx, i8** %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i64 @SUCCEEDED(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %58
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @fdexNameCaseSensitive, align 4
  %73 = call i32 @make_grfdex(i32* %71, i32 %72)
  %74 = call i64 @IDispatchEx_DeleteMemberByName(i32* %69, i32 %70, i32 %73)
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i64 @SUCCEEDED(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @S_OK, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %68
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @IDispatchEx_Release(i32* %85)
  br label %106

87:                                               ; preds = %58
  %88 = load i32*, i32** %7, align 8
  %89 = call i64 @IDispatch_GetIDsOfNames(i32* %88, i32* @IID_NULL, i32* %12, i32 1, i32 0, i32* %16)
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i64 @SUCCEEDED(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  br label %105

96:                                               ; preds = %87
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* @TRUE, align 4
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i64, i64* @S_OK, align 8
  store i64 %103, i64* %13, align 8
  br label %104

104:                                              ; preds = %100, %96
  br label %105

105:                                              ; preds = %104, %93
  br label %106

106:                                              ; preds = %105, %84
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @SysFreeString(i32 %107)
  %109 = load i64, i64* %13, align 8
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %106, %56, %46, %26
  %111 = load i64, i64* %5, align 8
  ret i64 %111
}

declare dso_local i32* @iface_to_jsdisp(i32*) #1

declare dso_local i32* @jsstr_flatten(i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i64 @find_prop_name(i32*, i32, i32*, i32**) #1

declare dso_local i32 @string_hash(i32*) #1

declare dso_local i64 @delete_prop(i32*, i32*) #1

declare dso_local i32 @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32 @jsstr_flush(i32*, i32) #1

declare dso_local i64 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IDispatchEx_DeleteMemberByName(i32*, i32, i32) #1

declare dso_local i32 @make_grfdex(i32*, i32) #1

declare dso_local i32 @IDispatchEx_Release(i32*) #1

declare dso_local i64 @IDispatch_GetIDsOfNames(i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
