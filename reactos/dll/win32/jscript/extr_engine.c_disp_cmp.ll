; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_disp_cmp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_disp_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IObjectIdentity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @disp_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disp_cmp(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @TRUE, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %4, align 4
  br label %84

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @S_OK, align 4
  store i32 %28, i32* %4, align 4
  br label %84

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = bitcast i32** %9 to i8**
  %32 = call i32 @IDispatch_QueryInterface(i32* %30, i32* @IID_IUnknown, i8** %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %84

38:                                               ; preds = %29
  %39 = load i32*, i32** %6, align 8
  %40 = bitcast i32** %10 to i8**
  %41 = call i32 @IDispatch_QueryInterface(i32* %39, i32* @IID_IUnknown, i8** %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @IUnknown_Release(i32* %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %84

49:                                               ; preds = %38
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %78

56:                                               ; preds = %49
  %57 = load i32*, i32** %9, align 8
  %58 = bitcast i32** %8 to i8**
  %59 = call i32 @IUnknown_QueryInterface(i32* %57, i32* @IID_IObjectIdentity, i8** %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @SUCCEEDED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @IObjectIdentity_IsEqualObject(i32* %64, i32* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @IObjectIdentity_Release(i32* %67)
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @S_OK, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %77

74:                                               ; preds = %56
  %75 = load i32, i32* @FALSE, align 4
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %63
  br label %78

78:                                               ; preds = %77, %53
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @IUnknown_Release(i32* %79)
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @IUnknown_Release(i32* %81)
  %83 = load i32, i32* @S_OK, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %78, %45, %36, %25, %15
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IObjectIdentity_IsEqualObject(i32*, i32*) #1

declare dso_local i32 @IObjectIdentity_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
