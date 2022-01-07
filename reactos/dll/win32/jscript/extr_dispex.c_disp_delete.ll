; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_disp_delete.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_disp_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISP_E_MEMBERNOTFOUND = common dso_local global i64 0, align 8
@IID_IDispatchEx = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @disp_delete(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @iface_to_jsdisp(i32* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32* @get_prop(i32* %17, i32 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @delete_prop(i32* %23, i32* %24)
  store i64 %25, i64* %10, align 8
  br label %28

26:                                               ; preds = %16
  %27 = load i64, i64* @DISP_E_MEMBERNOTFOUND, align 8
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @jsdisp_release(i32* %29)
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %4, align 8
  br label %61

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = bitcast i32** %8 to i8**
  %35 = call i64 @IDispatch_QueryInterface(i32* %33, i32* @IID_IDispatchEx, i8** %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @FAILED(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* @S_OK, align 8
  store i64 %42, i64* %4, align 8
  br label %61

43:                                               ; preds = %32
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @IDispatchEx_DeleteMemberByDispID(i32* %44, i32 %45)
  store i64 %46, i64* %10, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @IDispatchEx_Release(i32* %47)
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @FAILED(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %4, align 8
  br label %61

54:                                               ; preds = %43
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i64, i64* @S_OK, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %54, %52, %39, %28
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i32* @iface_to_jsdisp(i32*) #1

declare dso_local i32* @get_prop(i32*, i32) #1

declare dso_local i64 @delete_prop(i32*, i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i64 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IDispatchEx_DeleteMemberByDispID(i32*, i32) #1

declare dso_local i32 @IDispatchEx_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
