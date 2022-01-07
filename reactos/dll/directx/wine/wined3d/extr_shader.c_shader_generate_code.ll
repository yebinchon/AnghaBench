; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_generate_code.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_generate_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { i8*, %struct.wined3d_shader_frontend*, %struct.wined3d_device* }
%struct.wined3d_shader_frontend = type { i32 (i8*, i32**, %struct.wined3d_shader_instruction*)*, i32 (i8*, i32**)*, i32 (i8*, i32**, %struct.wined3d_shader_version*)* }
%struct.wined3d_shader_instruction = type { i64, i64, %struct.wined3d_shader_context* }
%struct.wined3d_shader_context = type { i8*, %struct.wined3d_shader_parser_state*, %struct.wined3d_shader_tex_mx*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, i32*, %struct.wined3d_shader* }
%struct.wined3d_shader_parser_state = type { i32, i64, i64 }
%struct.wined3d_shader_tex_mx = type { i64 }
%struct.wined3d_shader_version = type { i32 }
%struct.wined3d_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.wined3d_shader_instruction*)* }
%struct.TYPE_3__ = type { i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@WINED3DSIH_TABLE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Encountered unrecognised or invalid instruction.\0A\00", align 1
@WINED3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Predicates not implemented.\0A\00", align 1
@WINED3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shader_generate_code(%struct.wined3d_shader* %0, %struct.wined3d_string_buffer* %1, %struct.wined3d_shader_reg_maps* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.wined3d_string_buffer*, align 8
  %10 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.wined3d_device*, align 8
  %15 = alloca %struct.wined3d_shader_frontend*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.wined3d_shader_version, align 4
  %18 = alloca %struct.wined3d_shader_parser_state, align 8
  %19 = alloca %struct.wined3d_shader_instruction, align 8
  %20 = alloca %struct.wined3d_shader_tex_mx, align 8
  %21 = alloca %struct.wined3d_shader_context, align 8
  %22 = alloca i32*, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %8, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %9, align 8
  store %struct.wined3d_shader_reg_maps* %2, %struct.wined3d_shader_reg_maps** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %23, i32 0, i32 2
  %25 = load %struct.wined3d_device*, %struct.wined3d_device** %24, align 8
  store %struct.wined3d_device* %25, %struct.wined3d_device** %14, align 8
  %26 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %26, i32 0, i32 1
  %28 = load %struct.wined3d_shader_frontend*, %struct.wined3d_shader_frontend** %27, align 8
  store %struct.wined3d_shader_frontend* %28, %struct.wined3d_shader_frontend** %15, align 8
  %29 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %16, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_tex_mx, %struct.wined3d_shader_tex_mx* %20, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_parser_state, %struct.wined3d_shader_parser_state* %18, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_parser_state, %struct.wined3d_shader_parser_state* %18, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = getelementptr inbounds %struct.wined3d_shader_parser_state, %struct.wined3d_shader_parser_state* %18, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_context, %struct.wined3d_shader_context* %21, i32 0, i32 6
  store %struct.wined3d_shader* %37, %struct.wined3d_shader** %38, align 8
  %39 = load %struct.wined3d_device*, %struct.wined3d_device** %14, align 8
  %40 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.wined3d_shader_context, %struct.wined3d_shader_context* %21, i32 0, i32 5
  store i32* %42, i32** %43, align 8
  %44 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_context, %struct.wined3d_shader_context* %21, i32 0, i32 4
  store %struct.wined3d_shader_reg_maps* %44, %struct.wined3d_shader_reg_maps** %45, align 8
  %46 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %47 = getelementptr inbounds %struct.wined3d_shader_context, %struct.wined3d_shader_context* %21, i32 0, i32 3
  store %struct.wined3d_string_buffer* %46, %struct.wined3d_string_buffer** %47, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_context, %struct.wined3d_shader_context* %21, i32 0, i32 2
  store %struct.wined3d_shader_tex_mx* %20, %struct.wined3d_shader_tex_mx** %48, align 8
  %49 = getelementptr inbounds %struct.wined3d_shader_context, %struct.wined3d_shader_context* %21, i32 0, i32 1
  store %struct.wined3d_shader_parser_state* %18, %struct.wined3d_shader_parser_state** %49, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_context, %struct.wined3d_shader_context* %21, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 2
  store %struct.wined3d_shader_context* %21, %struct.wined3d_shader_context** %52, align 8
  %53 = load %struct.wined3d_shader_frontend*, %struct.wined3d_shader_frontend** %15, align 8
  %54 = getelementptr inbounds %struct.wined3d_shader_frontend, %struct.wined3d_shader_frontend* %53, i32 0, i32 2
  %55 = load i32 (i8*, i32**, %struct.wined3d_shader_version*)*, i32 (i8*, i32**, %struct.wined3d_shader_version*)** %54, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = call i32 %55(i8* %56, i32** %22, %struct.wined3d_shader_version* %17)
  %58 = load i32*, i32** %12, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %6
  %61 = load i32*, i32** %12, align 8
  store i32* %61, i32** %22, align 8
  br label %62

62:                                               ; preds = %60, %6
  br label %63

63:                                               ; preds = %95, %62
  %64 = load %struct.wined3d_shader_frontend*, %struct.wined3d_shader_frontend** %15, align 8
  %65 = getelementptr inbounds %struct.wined3d_shader_frontend, %struct.wined3d_shader_frontend* %64, i32 0, i32 1
  %66 = load i32 (i8*, i32**)*, i32 (i8*, i32**)** %65, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = call i32 %66(i8* %67, i32** %22)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load i32*, i32** %22, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = icmp ne i32* %71, %72
  br label %74

74:                                               ; preds = %70, %63
  %75 = phi i1 [ false, %63 ], [ %73, %70 ]
  br i1 %75, label %76, label %102

76:                                               ; preds = %74
  %77 = load %struct.wined3d_shader_frontend*, %struct.wined3d_shader_frontend** %15, align 8
  %78 = getelementptr inbounds %struct.wined3d_shader_frontend, %struct.wined3d_shader_frontend* %77, i32 0, i32 0
  %79 = load i32 (i8*, i32**, %struct.wined3d_shader_instruction*)*, i32 (i8*, i32**, %struct.wined3d_shader_instruction*)** %78, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = call i32 %79(i8* %80, i32** %22, %struct.wined3d_shader_instruction* %19)
  %82 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @WINED3DSIH_TABLE_SIZE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = call i32 @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %88, i32* %7, align 4
  br label %104

89:                                               ; preds = %76
  %90 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %89
  %96 = load %struct.wined3d_device*, %struct.wined3d_device** %14, align 8
  %97 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32 (%struct.wined3d_shader_instruction*)*, i32 (%struct.wined3d_shader_instruction*)** %99, align 8
  %101 = call i32 %100(%struct.wined3d_shader_instruction* %19)
  br label %63

102:                                              ; preds = %74
  %103 = load i32, i32* @WINED3D_OK, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %102, %86
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
