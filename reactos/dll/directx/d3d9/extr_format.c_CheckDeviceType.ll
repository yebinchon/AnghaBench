; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_format.c_CheckDeviceType.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_format.c_CheckDeviceType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@D3DFORMAT_OP_DISPLAYMODE = common dso_local global i32 0, align 4
@D3DFORMAT_OP_3DACCELERATION = common dso_local global i32 0, align 4
@D3DERR_NOTAVAILABLE = common dso_local global i32 0, align 4
@D3DFMT_X8R8G8B8 = common dso_local global i64 0, align 8
@D3DFMT_A8R8G8B8 = common dso_local global i64 0, align 8
@D3DFMT_X1R5G5B5 = common dso_local global i64 0, align 8
@D3DFMT_A1R5G5B5 = common dso_local global i64 0, align 8
@D3DFORMAT_OP_SAME_FORMAT_UP_TO_ALPHA_RENDERTARGET = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@D3DFORMAT_OP_OFFSCREEN_RENDERTARGET = common dso_local global i32 0, align 4
@D3DFORMAT_OP_CONVERT_TO_ARGB = common dso_local global i32 0, align 4
@D3DFORMAT_MEMBEROFGROUP_ARGB = common dso_local global i32 0, align 4
@D3DFORMAT_OP_SAME_FORMAT_RENDERTARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckDeviceType(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* @FALSE, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @D3DFORMAT_OP_DISPLAYMODE, align 4
  %15 = load i32, i32* @D3DFORMAT_OP_3DACCELERATION, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @IsSupportedFormatOp(i32 %12, i64 %13, i32 %16)
  %18 = icmp eq i64 %11, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @D3DERR_NOTAVAILABLE, align 4
  store i32 %20, i32* %5, align 4
  br label %97

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @D3DFMT_X8R8G8B8, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @D3DFMT_A8R8G8B8, align 8
  store i64 %31, i64* %7, align 8
  br label %39

32:                                               ; preds = %25
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @D3DFMT_X1R5G5B5, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @D3DFMT_A1R5G5B5, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i64, i64* @FALSE, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* @D3DFORMAT_OP_SAME_FORMAT_UP_TO_ALPHA_RENDERTARGET, align 4
  %48 = call i64 @IsSupportedFormatOp(i32 %45, i64 %46, i32 %47)
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @D3DERR_NOTAVAILABLE, align 4
  store i32 %51, i32* %5, align 4
  br label %97

52:                                               ; preds = %43
  %53 = load i32, i32* @D3D_OK, align 4
  store i32 %53, i32* %5, align 4
  br label %97

54:                                               ; preds = %39
  %55 = load i64, i64* @FALSE, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @D3DERR_NOTAVAILABLE, align 4
  store i32 %59, i32* %5, align 4
  br label %97

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* @FALSE, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* @D3DFORMAT_OP_OFFSCREEN_RENDERTARGET, align 4
  %66 = call i64 @IsSupportedFormatOp(i32 %63, i64 %64, i32 %65)
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load i64, i64* @FALSE, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* @D3DFORMAT_OP_CONVERT_TO_ARGB, align 4
  %73 = call i64 @IsSupportedFormatOp(i32 %70, i64 %71, i32 %72)
  %74 = icmp eq i64 %69, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i64, i64* @FALSE, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* @D3DFORMAT_MEMBEROFGROUP_ARGB, align 4
  %80 = call i64 @IsSupportedFormatOp(i32 %77, i64 %78, i32 %79)
  %81 = icmp eq i64 %76, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75, %68, %61
  %83 = load i32, i32* @D3DERR_NOTAVAILABLE, align 4
  store i32 %83, i32* %5, align 4
  br label %97

84:                                               ; preds = %75
  br label %95

85:                                               ; preds = %21
  %86 = load i64, i64* @FALSE, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i64, i64* %7, align 8
  %89 = load i32, i32* @D3DFORMAT_OP_SAME_FORMAT_RENDERTARGET, align 4
  %90 = call i64 @IsSupportedFormatOp(i32 %87, i64 %88, i32 %89)
  %91 = icmp eq i64 %86, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @D3DERR_NOTAVAILABLE, align 4
  store i32 %93, i32* %5, align 4
  br label %97

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %84
  %96 = load i32, i32* @D3D_OK, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %92, %82, %58, %52, %50, %19
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @IsSupportedFormatOp(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
