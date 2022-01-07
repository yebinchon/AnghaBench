; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_shader_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_shader_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wined3d_sm4_data = type { %struct.TYPE_4__ }

@WINED3D_SM4_SHADER_DATA_TYPE_MASK = common dso_local global i32 0, align 4
@WINED3D_SM4_SHADER_DATA_TYPE_SHIFT = common dso_local global i32 0, align 4
@WINED3D_SM4_SHADER_DATA_IMMEDIATE_CONSTANT_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Ignoring shader data type %#x.\0A\00", align 1
@WINED3DSIH_NOP = common dso_local global i32 0, align 4
@MAX_IMMEDIATE_CONSTANT_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unexpected immediate constant buffer size %u.\0A\00", align 1
@WINED3DSIH_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, i32, i32, i32*, i32, %struct.wined3d_sm4_data*)* @shader_sm4_read_shader_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sm4_read_shader_data(%struct.wined3d_shader_instruction* %0, i32 %1, i32 %2, i32* %3, i32 %4, %struct.wined3d_sm4_data* %5) #0 {
  %7 = alloca %struct.wined3d_shader_instruction*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_sm4_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.wined3d_sm4_data* %5, %struct.wined3d_sm4_data** %12, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @WINED3D_SM4_SHADER_DATA_TYPE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @WINED3D_SM4_SHADER_DATA_TYPE_SHIFT, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @WINED3D_SM4_SHADER_DATA_IMMEDIATE_CONSTANT_BUFFER, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @WINED3DSIH_NOP, align 4
  %27 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %68

29:                                               ; preds = %6
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sub i32 %32, 1
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = urem i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @MAX_IMMEDIATE_CONSTANT_BUFFER_SIZE, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @FIXME(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @WINED3DSIH_TABLE_SIZE, align 4
  %45 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %46 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %68

47:                                               ; preds = %37
  %48 = load i32, i32* %14, align 4
  %49 = udiv i32 %48, 4
  %50 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %12, align 8
  %51 = getelementptr inbounds %struct.wined3d_sm4_data, %struct.wined3d_sm4_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %12, align 8
  %54 = getelementptr inbounds %struct.wined3d_sm4_data, %struct.wined3d_sm4_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %14, align 4
  %59 = zext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memcpy(i32 %56, i32* %57, i32 %61)
  %63 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %12, align 8
  %64 = getelementptr inbounds %struct.wined3d_sm4_data, %struct.wined3d_sm4_data* %63, i32 0, i32 0
  %65 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %67, align 8
  br label %68

68:                                               ; preds = %47, %41, %23
  ret void
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
