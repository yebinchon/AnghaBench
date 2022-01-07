; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_reg_maps_add_tgsm.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_reg_maps_add_tgsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_reg_maps = type { %struct.wined3d_shader_tgsm*, i32, i32, %struct.TYPE_2__ }
%struct.wined3d_shader_tgsm = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@MAX_TGSM_REGISTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid TGSM register index %u.\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"TGSM declarations are allowed only in compute shaders.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader_reg_maps*, i32, i32, i32)* @shader_reg_maps_add_tgsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_reg_maps_add_tgsm(%struct.wined3d_shader_reg_maps* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_shader_tgsm*, align 8
  store %struct.wined3d_shader_reg_maps* %0, %struct.wined3d_shader_reg_maps** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MAX_TGSM_REGISTERS, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @S_OK, align 4
  store i32 %17, i32* %5, align 4
  br label %62

18:                                               ; preds = %4
  %19 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WINED3D_SHADER_TYPE_COMPUTE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = call i32 @FIXME(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @S_OK, align 4
  store i32 %27, i32* %5, align 4
  br label %62

28:                                               ; preds = %18
  %29 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %29, i32 0, i32 0
  %31 = bitcast %struct.wined3d_shader_tgsm** %30 to i8**
  %32 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %32, i32 0, i32 2
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  %36 = call i32 @wined3d_array_reserve(i8** %31, i32* %33, i32 %35, i32 8)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %39, i32* %5, align 4
  br label %62

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  %43 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @max(i32 %42, i32 %45)
  %47 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %49, i32 0, i32 0
  %51 = load %struct.wined3d_shader_tgsm*, %struct.wined3d_shader_tgsm** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.wined3d_shader_tgsm, %struct.wined3d_shader_tgsm* %51, i64 %53
  store %struct.wined3d_shader_tgsm* %54, %struct.wined3d_shader_tgsm** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.wined3d_shader_tgsm*, %struct.wined3d_shader_tgsm** %10, align 8
  %57 = getelementptr inbounds %struct.wined3d_shader_tgsm, %struct.wined3d_shader_tgsm* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.wined3d_shader_tgsm*, %struct.wined3d_shader_tgsm** %10, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader_tgsm, %struct.wined3d_shader_tgsm* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @S_OK, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %40, %38, %25, %14
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @wined3d_array_reserve(i8**, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
