; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_transform_feedback_varyings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_transform_feedback_varyings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_stream_output_desc = type { i32, i64, i32, i32*, %struct.wined3d_stream_output_element* }
%struct.wined3d_stream_output_element = type { i32, i32, i64, i64, i64 }
%struct.wined3d_string_buffer = type { i32 }

@WINED3D_MAX_STREAM_OUTPUT_BUFFERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unhandled stream %u.\0A\00", align 1
@WINED3D_STREAM_OUTPUT_GAP = common dso_local global i64 0, align 8
@WINED3D_NO_RASTERIZER_STREAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Unsupported component range %u-%u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"shader_in_out.reg%u_%u_%u\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"shader_in_out.reg%u\00", align 1
@GL_INTERLEAVED_ATTRIBS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"gl_NextBuffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_stream_output_desc*, %struct.wined3d_string_buffer*, i8**, i32*, i8*, i32*, i64)* @shader_glsl_generate_transform_feedback_varyings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_transform_feedback_varyings(%struct.wined3d_stream_output_desc* %0, %struct.wined3d_string_buffer* %1, i8** %2, i32* %3, i8* %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.wined3d_stream_output_desc*, align 8
  %9 = alloca %struct.wined3d_string_buffer*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.wined3d_stream_output_element*, align 8
  %22 = alloca i32, align 4
  store %struct.wined3d_stream_output_desc* %0, %struct.wined3d_stream_output_desc** %8, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %192, %7
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* @WINED3D_MAX_STREAM_OUTPUT_BUFFERS, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %195

27:                                               ; preds = %23
  store i32 0, i32* %20, align 4
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %141, %27
  %29 = load i32, i32* %15, align 4
  %30 = load %struct.wined3d_stream_output_desc*, %struct.wined3d_stream_output_desc** %8, align 8
  %31 = getelementptr inbounds %struct.wined3d_stream_output_desc, %struct.wined3d_stream_output_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %144

34:                                               ; preds = %28
  %35 = load %struct.wined3d_stream_output_desc*, %struct.wined3d_stream_output_desc** %8, align 8
  %36 = getelementptr inbounds %struct.wined3d_stream_output_desc, %struct.wined3d_stream_output_desc* %35, i32 0, i32 4
  %37 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %37, i64 %39
  store %struct.wined3d_stream_output_element* %40, %struct.wined3d_stream_output_element** %21, align 8
  %41 = load i32, i32* %19, align 4
  %42 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %43 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @max(i32 %41, i32 %44)
  store i32 %45, i32* %19, align 4
  %46 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %47 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %141

52:                                               ; preds = %34
  %53 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %54 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %59 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, i64, ...) @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %60)
  br label %141

62:                                               ; preds = %52
  %63 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %64 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %20, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %20, align 4
  %68 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %69 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WINED3D_STREAM_OUTPUT_GAP, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %62
  %74 = load i8**, i8*** %10, align 8
  %75 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %76 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %77 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @append_transform_feedback_skip_components(i8** %74, i32* %17, i8** %12, i32* %18, %struct.wined3d_string_buffer* %75, i32 %78)
  br label %141

80:                                               ; preds = %62
  %81 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %82 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %87 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 4
  br i1 %89, label %90, label %131

90:                                               ; preds = %85, %80
  %91 = load %struct.wined3d_stream_output_desc*, %struct.wined3d_stream_output_desc** %8, align 8
  %92 = getelementptr inbounds %struct.wined3d_stream_output_desc, %struct.wined3d_stream_output_desc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @WINED3D_NO_RASTERIZER_STREAM, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %98 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %101 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i64, ...) @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %99, i32 %102)
  %104 = load i8**, i8*** %10, align 8
  %105 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %106 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %107 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @append_transform_feedback_skip_components(i8** %104, i32* %17, i8** %12, i32* %18, %struct.wined3d_string_buffer* %105, i32 %108)
  br label %141

110:                                              ; preds = %90
  %111 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %112 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %113 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %116 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %119 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %122 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = zext i32 %123 to i64
  %125 = add nsw i64 %120, %124
  %126 = sub nsw i64 %125, 1
  %127 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %114, i64 %117, i64 %126)
  %128 = load i8**, i8*** %10, align 8
  %129 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %130 = call i32 @append_transform_feedback_varying(i8** %128, i32* %17, i8** %12, i32* %18, %struct.wined3d_string_buffer* %129)
  br label %140

131:                                              ; preds = %85
  %132 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %133 = load %struct.wined3d_stream_output_element*, %struct.wined3d_stream_output_element** %21, align 8
  %134 = getelementptr inbounds %struct.wined3d_stream_output_element, %struct.wined3d_stream_output_element* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %135)
  %137 = load i8**, i8*** %10, align 8
  %138 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %139 = call i32 @append_transform_feedback_varying(i8** %137, i32* %17, i8** %12, i32* %18, %struct.wined3d_string_buffer* %138)
  br label %140

140:                                              ; preds = %131, %110
  br label %141

141:                                              ; preds = %140, %96, %73, %57, %51
  %142 = load i32, i32* %15, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %15, align 4
  br label %28

144:                                              ; preds = %28
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.wined3d_stream_output_desc*, %struct.wined3d_stream_output_desc** %8, align 8
  %147 = getelementptr inbounds %struct.wined3d_stream_output_desc, %struct.wined3d_stream_output_desc* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp ult i32 %145, %148
  br i1 %149, label %150, label %176

150:                                              ; preds = %144
  %151 = load i32, i32* %20, align 4
  %152 = load %struct.wined3d_stream_output_desc*, %struct.wined3d_stream_output_desc** %8, align 8
  %153 = getelementptr inbounds %struct.wined3d_stream_output_desc, %struct.wined3d_stream_output_desc* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %16, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sdiv i32 %158, 4
  %160 = icmp ult i32 %151, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %150
  %162 = load %struct.wined3d_stream_output_desc*, %struct.wined3d_stream_output_desc** %8, align 8
  %163 = getelementptr inbounds %struct.wined3d_stream_output_desc, %struct.wined3d_stream_output_desc* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %16, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sdiv i32 %168, 4
  %170 = load i32, i32* %20, align 4
  %171 = sub i32 %169, %170
  store i32 %171, i32* %22, align 4
  %172 = load i8**, i8*** %10, align 8
  %173 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %174 = load i32, i32* %22, align 4
  %175 = call i32 @append_transform_feedback_skip_components(i8** %172, i32* %17, i8** %12, i32* %18, %struct.wined3d_string_buffer* %173, i32 %174)
  br label %176

176:                                              ; preds = %161, %150, %144
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp ule i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %195

181:                                              ; preds = %176
  %182 = load i64, i64* %14, align 8
  %183 = load i64, i64* @GL_INTERLEAVED_ATTRIBS, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %187 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %186, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %188 = load i8**, i8*** %10, align 8
  %189 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %190 = call i32 @append_transform_feedback_varying(i8** %188, i32* %17, i8** %12, i32* %18, %struct.wined3d_string_buffer* %189)
  br label %191

191:                                              ; preds = %185, %181
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %16, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %16, align 4
  br label %23

195:                                              ; preds = %180, %23
  %196 = load i32*, i32** %11, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i32, i32* %17, align 4
  %200 = load i32*, i32** %11, align 8
  store i32 %199, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %195
  %202 = load i32*, i32** %13, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load i32, i32* %18, align 4
  %206 = load i32*, i32** %13, align 8
  store i32 %205, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %201
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @FIXME(i8*, i64, ...) #1

declare dso_local i32 @append_transform_feedback_skip_components(i8**, i32*, i8**, i32*, %struct.wined3d_string_buffer*, i32) #1

declare dso_local i32 @string_buffer_sprintf(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @append_transform_feedback_varying(i8**, i32*, i8**, i32*, %struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
