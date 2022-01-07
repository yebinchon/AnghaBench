; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_stream_output_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_stream_output_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_glsl_priv = type { %struct.wined3d_string_buffer }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_stream_output_desc = type { i32, %struct.wined3d_stream_output_element* }
%struct.wined3d_stream_output_element = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"out shader_in_out\0A{\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unhandled stream %u.\0A\00", align 1
@WINED3D_STREAM_OUTPUT_GAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vec%u\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" reg%u_%u_%u;\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"vec4 reg%u;\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"} shader_out;\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"void setup_gs_output(in vec4 outputs[%u])\0A{\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"shader_out.reg%u_%u_%u = outputs[%u]%s;\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"shader_out.reg%u = outputs[%u];\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_glsl_priv*, %struct.wined3d_shader*, %struct.wined3d_stream_output_desc*)* @shader_glsl_generate_stream_output_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_stream_output_setup(%struct.shader_glsl_priv* %0, %struct.wined3d_shader* %1, %struct.wined3d_stream_output_desc* %2) #0 {
  %4 = alloca %struct.shader_glsl_priv*, align 8
  %5 = alloca %struct.wined3d_shader*, align 8
  %6 = alloca %struct.wined3d_stream_output_desc*, align 8
  %7 = alloca %struct.wined3d_string_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_stream_output_element*, align 8
  %10 = alloca %struct.wined3d_stream_output_element*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [6 x i8], align 1
  store %struct.shader_glsl_priv* %0, %struct.shader_glsl_priv** %4, align 8
  store %struct.wined3d_shader* %1, %struct.wined3d_shader** %5, align 8
  store %struct.wined3d_stream_output_desc* %2, %struct.wined3d_stream_output_desc** %6, align 8
  %13 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %4, align 8
  %14 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %13, i32 0, i32 0
  store %struct.wined3d_string_buffer* %14, %struct.wined3d_string_buffer** %7, align 8
  %15 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %16 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %94, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.wined3d_stream_output_desc*, %struct.wined3d_stream_output_desc** %6, align 8
  %20 = getelementptr inbounds %struct.wined3d_stream_output_desc, %struct.wined3d_stream_output_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %17
  %24 = load %struct.wined3d_stream_output_desc*, %struct.wined3d_stream_output_desc** %6, align 8
  %25 = getelementptr inbounds %struct.wined3d_stream_output_desc, %struct.wined3d_stream_output_desc* %24, i32 0, i32 1
  %26 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %26, i64 %28
  store %struct.wined3d_stream_output_element* %29, %struct.wined3d_stream_output_element** %9, align 8
  %30 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %31 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %36 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %94

39:                                               ; preds = %23
  %40 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %41 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @WINED3D_STREAM_OUTPUT_GAP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %94

46:                                               ; preds = %39
  %47 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %48 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %53 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 4
  br i1 %55, label %56, label %87

56:                                               ; preds = %51, %46
  %57 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %58 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %63 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %70

64:                                               ; preds = %56
  %65 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %66 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %67 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %72 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %73 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %76 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %79 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %82 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %80, %83
  %85 = sub i32 %84, 1
  %86 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %77, i32 %85)
  br label %93

87:                                               ; preds = %51
  %88 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %89 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %9, align 8
  %90 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %70
  br label %94

94:                                               ; preds = %93, %45, %34
  %95 = load i32, i32* %8, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %17

97:                                               ; preds = %17
  %98 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %99 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %100 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %101 = load %struct.wined3d_shader*, %struct.wined3d_shader** %5, align 8
  %102 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %100, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %189, %97
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.wined3d_stream_output_desc*, %struct.wined3d_stream_output_desc** %6, align 8
  %110 = getelementptr inbounds %struct.wined3d_stream_output_desc, %struct.wined3d_stream_output_desc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ult i32 %108, %111
  br i1 %112, label %113, label %192

113:                                              ; preds = %107
  %114 = load %struct.wined3d_stream_output_desc*, %struct.wined3d_stream_output_desc** %6, align 8
  %115 = getelementptr inbounds %struct.wined3d_stream_output_desc, %struct.wined3d_stream_output_desc* %114, i32 0, i32 1
  %116 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %116, i64 %118
  store %struct.wined3d_stream_output_element* %119, %struct.wined3d_stream_output_element** %10, align 8
  %120 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %121 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %113
  %125 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %126 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %127)
  br label %189

129:                                              ; preds = %113
  %130 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %131 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @WINED3D_STREAM_OUTPUT_GAP, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %189

136:                                              ; preds = %129
  %137 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %138 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %143 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 4
  br i1 %145, label %146, label %179

146:                                              ; preds = %141, %136
  %147 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %148 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 1, %149
  %151 = sub i32 %150, 1
  %152 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %153 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = shl i32 %151, %154
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %158 = call i32 @shader_glsl_write_mask_to_str(i32 %156, i8* %157)
  %159 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %160 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %161 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %164 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %167 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %170 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add i32 %168, %171
  %173 = sub i32 %172, 1
  %174 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %175 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %178 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %159, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %162, i32 %165, i32 %173, i32 %176, i8* %177)
  br label %188

179:                                              ; preds = %141
  %180 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %181 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %182 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %10, align 8
  %185 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %180, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %179, %146
  br label %189

189:                                              ; preds = %188, %135, %124
  %190 = load i32, i32* %8, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %107

192:                                              ; preds = %107
  %193 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %7, align 8
  %194 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
