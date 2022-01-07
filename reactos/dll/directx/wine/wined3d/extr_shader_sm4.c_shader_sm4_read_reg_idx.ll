; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_reg_idx.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_reg_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_sm4_data = type { i32 }
%struct.wined3d_shader_register_index = type { i64, %struct.wined3d_shader_src_param* }
%struct.wined3d_shader_src_param = type { i32 }

@WINED3D_SM4_ADDRESSING_RELATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to get src param for relative addressing.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WINED3D_SM4_ADDRESSING_OFFSET = common dso_local global i32 0, align 4
@WINED3D_DATA_INT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_sm4_data*, i32**, i32*, i32, %struct.wined3d_shader_register_index*)* @shader_sm4_read_reg_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_sm4_read_reg_idx(%struct.wined3d_sm4_data* %0, i32** %1, i32* %2, i32 %3, %struct.wined3d_shader_register_index* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_sm4_data*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wined3d_shader_register_index*, align 8
  %12 = alloca %struct.wined3d_shader_src_param*, align 8
  store %struct.wined3d_sm4_data* %0, %struct.wined3d_sm4_data** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.wined3d_shader_register_index* %4, %struct.wined3d_shader_register_index** %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @WINED3D_SM4_ADDRESSING_RELATIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %5
  %18 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %7, align 8
  %19 = call %struct.wined3d_shader_src_param* @get_src_param(%struct.wined3d_sm4_data* %18)
  store %struct.wined3d_shader_src_param* %19, %struct.wined3d_shader_src_param** %12, align 8
  %20 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %12, align 8
  %21 = load %struct.wined3d_shader_register_index*, %struct.wined3d_shader_register_index** %11, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_register_index, %struct.wined3d_shader_register_index* %21, i32 0, i32 1
  store %struct.wined3d_shader_src_param* %20, %struct.wined3d_shader_src_param** %22, align 8
  %23 = icmp ne %struct.wined3d_shader_src_param* %20, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = call i32 @ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %6, align 4
  br label %62

27:                                               ; preds = %17
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @WINED3D_SM4_ADDRESSING_OFFSET, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32**, i32*** %8, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %33, align 8
  %36 = load i32, i32* %34, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.wined3d_shader_register_index*, %struct.wined3d_shader_register_index** %11, align 8
  %39 = getelementptr inbounds %struct.wined3d_shader_register_index, %struct.wined3d_shader_register_index* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %43

40:                                               ; preds = %27
  %41 = load %struct.wined3d_shader_register_index*, %struct.wined3d_shader_register_index** %11, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_register_index, %struct.wined3d_shader_register_index* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %7, align 8
  %45 = load i32**, i32*** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @WINED3D_DATA_INT, align 4
  %48 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %12, align 8
  %49 = call i32 @shader_sm4_read_src_param(%struct.wined3d_sm4_data* %44, i32** %45, i32* %46, i32 %47, %struct.wined3d_shader_src_param* %48)
  br label %60

50:                                               ; preds = %5
  %51 = load %struct.wined3d_shader_register_index*, %struct.wined3d_shader_register_index** %11, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_register_index, %struct.wined3d_shader_register_index* %51, i32 0, i32 1
  store %struct.wined3d_shader_src_param* null, %struct.wined3d_shader_src_param** %52, align 8
  %53 = load i32**, i32*** %8, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %53, align 8
  %56 = load i32, i32* %54, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.wined3d_shader_register_index*, %struct.wined3d_shader_register_index** %11, align 8
  %59 = getelementptr inbounds %struct.wined3d_shader_register_index, %struct.wined3d_shader_register_index* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %50, %43
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %24
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.wined3d_shader_src_param* @get_src_param(%struct.wined3d_sm4_data*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @shader_sm4_read_src_param(%struct.wined3d_sm4_data*, i32**, i32*, i32, %struct.wined3d_shader_src_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
