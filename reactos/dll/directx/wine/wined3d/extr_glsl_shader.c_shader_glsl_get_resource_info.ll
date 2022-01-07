; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_resource_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_resource_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_resource_info = type { i32 }
%struct.wined3d_shader_instruction = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wined3d_shader_reg_maps* }
%struct.wined3d_shader_reg_maps = type { %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info* }
%struct.wined3d_shader_register = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@WINED3DSPR_RESOURCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid resource index %u.\0A\00", align 1
@WINED3DSPR_UAV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid UAV index %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unhandled register type %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_shader_resource_info* (%struct.wined3d_shader_instruction*, %struct.wined3d_shader_register*)* @shader_glsl_get_resource_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_shader_resource_info* @shader_glsl_get_resource_info(%struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_register* %1) #0 {
  %3 = alloca %struct.wined3d_shader_resource_info*, align 8
  %4 = alloca %struct.wined3d_shader_instruction*, align 8
  %5 = alloca %struct.wined3d_shader_register*, align 8
  %6 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %4, align 8
  store %struct.wined3d_shader_register* %1, %struct.wined3d_shader_register** %5, align 8
  %8 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  store %struct.wined3d_shader_reg_maps* %12, %struct.wined3d_shader_reg_maps** %6, align 8
  %13 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WINED3DSPR_RESOURCE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %26, i32 0, i32 1
  %28 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %27, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.wined3d_shader_resource_info* %28)
  %30 = icmp uge i32 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32)
  store %struct.wined3d_shader_resource_info* null, %struct.wined3d_shader_resource_info** %3, align 8
  br label %69

34:                                               ; preds = %24
  %35 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %36 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %35, i32 0, i32 1
  %37 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %37, i64 %39
  store %struct.wined3d_shader_resource_info* %40, %struct.wined3d_shader_resource_info** %3, align 8
  br label %69

41:                                               ; preds = %2
  %42 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %43 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WINED3DSPR_UAV, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %49, i32 0, i32 0
  %51 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %50, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.wined3d_shader_resource_info* %51)
  %53 = icmp uge i32 %48, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  store %struct.wined3d_shader_resource_info* null, %struct.wined3d_shader_resource_info** %3, align 8
  br label %69

57:                                               ; preds = %47
  %58 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %59 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %58, i32 0, i32 0
  %60 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %60, i64 %62
  store %struct.wined3d_shader_resource_info* %63, %struct.wined3d_shader_resource_info** %3, align 8
  br label %69

64:                                               ; preds = %41
  %65 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %5, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  store %struct.wined3d_shader_resource_info* null, %struct.wined3d_shader_resource_info** %3, align 8
  br label %69

69:                                               ; preds = %64, %57, %54, %34, %31
  %70 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %3, align 8
  ret %struct.wined3d_shader_resource_info* %70
}

declare dso_local i32 @ARRAY_SIZE(%struct.wined3d_shader_resource_info*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @FIXME(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
