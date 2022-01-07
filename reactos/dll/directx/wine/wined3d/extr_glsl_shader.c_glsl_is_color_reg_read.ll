; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_is_color_reg_read.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_is_color_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.TYPE_5__, %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_signature }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wined3d_shader_signature = type { i32, %struct.wined3d_shader_signature_element* }
%struct.wined3d_shader_signature_element = type { i32, i32, i32 }

@WINED3D_DECL_USAGE_COLOR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader*, i32)* @glsl_is_color_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glsl_is_color_reg_read(%struct.wined3d_shader* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_shader*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_shader_signature*, align 8
  %7 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_shader_signature_element*, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %11, i32 0, i32 2
  store %struct.wined3d_shader_signature* %12, %struct.wined3d_shader_signature** %6, align 8
  %13 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %13, i32 0, i32 1
  store %struct.wined3d_shader_reg_maps* %14, %struct.wined3d_shader_reg_maps** %7, align 8
  %15 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %7, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  store i32 %29, i32* %3, align 4
  br label %80

30:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %75, %30
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %6, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %31
  %38 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %6, align 8
  %39 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %38, i32 0, i32 1
  %40 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %40, i64 %42
  store %struct.wined3d_shader_signature_element* %43, %struct.wined3d_shader_signature_element** %10, align 8
  %44 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %7, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %10, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %46, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %37
  br label %75

54:                                               ; preds = %37
  %55 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %10, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @WINED3D_DECL_USAGE_COLOR, align 4
  %59 = call i64 @shader_match_semantic(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %10, align 8
  %63 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %10, align 8
  %70 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %68, %72
  store i32 %73, i32* %3, align 4
  br label %80

74:                                               ; preds = %61, %54
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %31

78:                                               ; preds = %31
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %67, %25
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @shader_match_semantic(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
