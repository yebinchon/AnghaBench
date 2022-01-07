; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_is_invalid_op.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_is_invalid_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_state = type { i64* }

@WINED3D_TOP_DISABLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WINED3DTA_SELECTMASK = common dso_local global i32 0, align 4
@WINED3DTA_TEXTURE = common dso_local global i32 0, align 4
@WINED3D_TOP_SELECT_ARG2 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WINED3D_TOP_SELECT_ARG1 = common dso_local global i32 0, align 4
@WINED3D_TOP_MULTIPLY_ADD = common dso_local global i32 0, align 4
@WINED3D_TOP_LERP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_invalid_op(%struct.wined3d_state* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wined3d_state* %0, %struct.wined3d_state** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @WINED3D_TOP_DISABLE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %7, align 4
  br label %72

19:                                               ; preds = %6
  %20 = load %struct.wined3d_state*, %struct.wined3d_state** %8, align 8
  %21 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %7, align 4
  br label %72

30:                                               ; preds = %19
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @WINED3DTA_SELECTMASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @WINED3DTA_TEXTURE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @WINED3D_TOP_SELECT_ARG2, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %7, align 4
  br label %72

42:                                               ; preds = %36, %30
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @WINED3DTA_SELECTMASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @WINED3DTA_TEXTURE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @WINED3D_TOP_SELECT_ARG1, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %7, align 4
  br label %72

54:                                               ; preds = %48, %42
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @WINED3DTA_SELECTMASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @WINED3DTA_TEXTURE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @WINED3D_TOP_MULTIPLY_ADD, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @WINED3D_TOP_LERP, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %7, align 4
  br label %72

70:                                               ; preds = %64, %54
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %68, %52, %40, %28, %17
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
