; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_wined3d_stream_info_from_declaration.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_wined3d_stream_info_from_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_stream_info = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.wined3d_state = type { i32*, %struct.wined3d_stream_state*, %struct.wined3d_vertex_declaration* }
%struct.wined3d_stream_state = type { i32, i32, i32, i32 }
%struct.wined3d_vertex_declaration = type { i32, %struct.wined3d_vertex_declaration_element*, i32 }
%struct.wined3d_vertex_declaration_element = type { i64, i32, i64, i32, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_d3d_info = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"%p Element %p (%u of %u).\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"offset %u input_slot %u usage_idx %d.\0A\00", align 1
@WINED3D_OUTPUT_SLOT_UNUSED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@WINED3D_OUTPUT_SLOT_SEMANTIC = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [72 x i8] c"Skipping unsupported fixed function element of format %s and usage %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [116 x i8] c"Load %s array %u [usage %s, usage_idx %u, input_slot %u, offset %u, stride %u, format %s, class %s, step_rate %u].\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"shader\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"fixed function\00", align 1
@WINED3DSTREAMSOURCE_INSTANCEDATA = common dso_local global i32 0, align 4
@WINED3D_INPUT_PER_INSTANCE_DATA = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"Instance step rate 0 not implemented.\0A\00", align 1
@ARB_VERTEX_ARRAY_BGRA = common dso_local global i64 0, align 8
@WINED3DFMT_B8G8R8A8_UNORM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_stream_info_from_declaration(%struct.wined3d_stream_info* %0, %struct.wined3d_state* %1, %struct.wined3d_gl_info* %2, %struct.wined3d_d3d_info* %3) #0 {
  %5 = alloca %struct.wined3d_stream_info*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_d3d_info*, align 8
  %9 = alloca %struct.wined3d_vertex_declaration*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_vertex_declaration_element*, align 8
  %14 = alloca %struct.wined3d_stream_state*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.wined3d_stream_info* %0, %struct.wined3d_stream_info** %5, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %6, align 8
  store %struct.wined3d_gl_info* %2, %struct.wined3d_gl_info** %7, align 8
  store %struct.wined3d_d3d_info* %3, %struct.wined3d_d3d_info** %8, align 8
  %17 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %18 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %17, i32 0, i32 2
  %19 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %18, align 8
  store %struct.wined3d_vertex_declaration* %19, %struct.wined3d_vertex_declaration** %9, align 8
  %20 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %8, align 8
  %21 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %24 = call i64 @use_vs(%struct.wined3d_state* %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %26 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %30 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %29, i32 0, i32 3
  store i32 0, i32* %30, align 8
  %31 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %9, align 8
  %32 = icmp ne %struct.wined3d_vertex_declaration* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  br label %329

34:                                               ; preds = %4
  %35 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %9, align 8
  %36 = getelementptr inbounds %struct.wined3d_vertex_declaration, %struct.wined3d_vertex_declaration* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %39 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %326, %34
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %9, align 8
  %43 = getelementptr inbounds %struct.wined3d_vertex_declaration, %struct.wined3d_vertex_declaration* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %329

46:                                               ; preds = %40
  %47 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %9, align 8
  %48 = getelementptr inbounds %struct.wined3d_vertex_declaration, %struct.wined3d_vertex_declaration* %47, i32 0, i32 1
  %49 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %49, i64 %51
  store %struct.wined3d_vertex_declaration_element* %52, %struct.wined3d_vertex_declaration_element** %13, align 8
  %53 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %54 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %53, i32 0, i32 1
  %55 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %54, align 8
  %56 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %57 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %55, i64 %58
  store %struct.wined3d_stream_state* %59, %struct.wined3d_stream_state** %14, align 8
  %60 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %9, align 8
  %61 = getelementptr inbounds %struct.wined3d_vertex_declaration, %struct.wined3d_vertex_declaration* %60, i32 0, i32 1
  %62 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %61, align 8
  %63 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %64 = load i32, i32* %12, align 4
  %65 = add i32 %64, 1
  %66 = load %struct.wined3d_vertex_declaration*, %struct.wined3d_vertex_declaration** %9, align 8
  %67 = getelementptr inbounds %struct.wined3d_vertex_declaration, %struct.wined3d_vertex_declaration* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.wined3d_vertex_declaration_element* %62, %struct.wined3d_vertex_declaration_element* %63, i32 %65, i32 %68)
  %70 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %14, align 8
  %71 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %46
  br label %326

75:                                               ; preds = %46
  %76 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %77 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %80 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %83 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %78, i64 %81, i32 %84)
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %123

88:                                               ; preds = %75
  %89 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %90 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @WINED3D_OUTPUT_SLOT_UNUSED, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i64, i64* @FALSE, align 8
  store i64 %95, i64* %15, align 8
  br label %122

96:                                               ; preds = %88
  %97 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %98 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @WINED3D_OUTPUT_SLOT_SEMANTIC, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %104 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %110 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %113 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @vshader_get_input(i32 %108, i32 %111, i32 %114, i32* %16)
  store i64 %115, i64* %15, align 8
  br label %121

116:                                              ; preds = %96
  %117 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %118 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %16, align 4
  %120 = load i64, i64* @TRUE, align 8
  store i64 %120, i64* %15, align 8
  br label %121

121:                                              ; preds = %116, %102
  br label %122

122:                                              ; preds = %121, %94
  br label %153

123:                                              ; preds = %75
  %124 = load i64, i64* %10, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %144, label %126

126:                                              ; preds = %123
  %127 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %128 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %126
  %132 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %133 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %132, i32 0, i32 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @debug_d3dformat(i64 %136)
  %138 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %139 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @debug_d3ddeclusage(i32 %140)
  %142 = call i32 @WARN(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %141)
  %143 = load i64, i64* @FALSE, align 8
  store i64 %143, i64* %15, align 8
  br label %152

144:                                              ; preds = %126, %123
  %145 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %146 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %149 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @fixed_get_input(i32 %147, i32 %150, i32* %16)
  store i64 %151, i64* %15, align 8
  br label %152

152:                                              ; preds = %144, %131
  br label %153

153:                                              ; preds = %152, %122
  %154 = load i64, i64* %15, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %325

156:                                              ; preds = %153
  %157 = load i64, i64* %11, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)
  %161 = load i32, i32* %16, align 4
  %162 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %163 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @debug_d3ddeclusage(i32 %164)
  %166 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %167 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %170 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %173 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %14, align 8
  %176 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %179 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %178, i32 0, i32 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @debug_d3dformat(i64 %182)
  %184 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %185 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @debug_d3dinput_classification(i64 %186)
  %188 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %189 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.3, i64 0, i64 0), i8* %160, i32 %161, i32 %165, i32 %168, i64 %171, i32 %174, i32 %177, i32 %183, i32 %187, i32 %190)
  %192 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %193 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %192, i32 0, i32 4
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %196 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %195, i32 0, i32 2
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = load i32, i32* %16, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 4
  store %struct.TYPE_6__* %194, %struct.TYPE_6__** %201, align 8
  %202 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %203 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %202, i32 0, i32 2
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = load i32, i32* %16, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  store i64 0, i64* %209, align 8
  %210 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %14, align 8
  %211 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* null, i64 %213
  %215 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %216 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %214, i64 %218
  %220 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %221 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %220, i32 0, i32 2
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = load i32, i32* %16, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  store i32* %219, i32** %227, align 8
  %228 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %14, align 8
  %229 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %232 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %231, i32 0, i32 2
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = load i32, i32* %16, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 2
  store i32 %230, i32* %237, align 4
  %238 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %239 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %242 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %241, i32 0, i32 2
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %242, align 8
  %244 = load i32, i32* %16, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  store i64 %240, i64* %247, align 8
  %248 = load %struct.wined3d_stream_state*, %struct.wined3d_stream_state** %14, align 8
  %249 = getelementptr inbounds %struct.wined3d_stream_state, %struct.wined3d_stream_state* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @WINED3DSTREAMSOURCE_INSTANCEDATA, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %156
  %255 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %256 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %255, i32 0, i32 2
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = load i32, i32* %16, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  store i32 1, i32* %261, align 8
  br label %295

262:                                              ; preds = %156
  %263 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %264 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @WINED3D_INPUT_PER_INSTANCE_DATA, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %286

268:                                              ; preds = %262
  %269 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %270 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %273 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %272, i32 0, i32 2
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %273, align 8
  %275 = load i32, i32* %16, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 1
  store i32 %271, i32* %278, align 8
  %279 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %280 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %268
  %284 = call i32 @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %285

285:                                              ; preds = %283, %268
  br label %294

286:                                              ; preds = %262
  %287 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %288 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %287, i32 0, i32 2
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %288, align 8
  %290 = load i32, i32* %16, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 1
  store i32 0, i32* %293, align 8
  br label %294

294:                                              ; preds = %286, %285
  br label %295

295:                                              ; preds = %294, %254
  %296 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %297 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* @ARB_VERTEX_ARRAY_BGRA, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %318, label %303

303:                                              ; preds = %295
  %304 = load %struct.wined3d_vertex_declaration_element*, %struct.wined3d_vertex_declaration_element** %13, align 8
  %305 = getelementptr inbounds %struct.wined3d_vertex_declaration_element, %struct.wined3d_vertex_declaration_element* %304, i32 0, i32 4
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @WINED3DFMT_B8G8R8A8_UNORM, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %318

311:                                              ; preds = %303
  %312 = load i32, i32* %16, align 4
  %313 = shl i32 1, %312
  %314 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %315 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %311, %303, %295
  %319 = load i32, i32* %16, align 4
  %320 = shl i32 1, %319
  %321 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %5, align 8
  %322 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %318, %153
  br label %326

326:                                              ; preds = %325, %74
  %327 = load i32, i32* %12, align 4
  %328 = add i32 %327, 1
  store i32 %328, i32* %12, align 4
  br label %40

329:                                              ; preds = %33, %40
  ret void
}

declare dso_local i64 @use_vs(%struct.wined3d_state*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @vshader_get_input(i32, i32, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @debug_d3dformat(i64) #1

declare dso_local i32 @debug_d3ddeclusage(i32) #1

declare dso_local i64 @fixed_get_input(i32, i32, i32*) #1

declare dso_local i32 @debug_d3dinput_classification(i64) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
