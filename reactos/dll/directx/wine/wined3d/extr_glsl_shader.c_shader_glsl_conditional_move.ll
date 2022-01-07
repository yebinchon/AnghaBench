; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_conditional_move.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_conditional_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, %struct.TYPE_6__*, %struct.wined3d_shader_dst_param*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }
%struct.wined3d_shader_dst_param = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.glsl_src_param = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" >= 0.0\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" > 0.5\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bool(\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Unhandled instruction %#x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"<unhandled prefix>\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"<unhandled suffix>\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%s%s%s ? %s : %s);\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"tmp0%s = (\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"tmp0%s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_conditional_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_conditional_move(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_shader_dst_param, align 8
  %6 = alloca %struct.glsl_src_param, align 4
  %7 = alloca %struct.glsl_src_param, align 4
  %8 = alloca %struct.glsl_src_param, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x i8], align 1
  %14 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %22 [
    i32 130, label %19
    i32 129, label %20
    i32 128, label %21
  ]

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %27

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %27

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %27

27:                                               ; preds = %22, %21, %20, %19
  %28 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %29 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %28, i32 0, i32 2
  %30 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %29, align 8
  %31 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %30, i64 0
  %32 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %31, i32 0, i32 1
  %33 = call i64 @shader_is_scalar(%struct.TYPE_7__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %36, i32 0, i32 3
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = call i64 @shader_is_scalar(%struct.TYPE_7__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %35, %27
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %50 = call i32 @shader_glsl_append_dst(i32 %48, %struct.wined3d_shader_instruction* %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %52 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %53 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 0
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %51, %struct.TYPE_8__* %55, i32 %56, %struct.glsl_src_param* %6)
  %58 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %59 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %59, i32 0, i32 3
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 1
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %58, %struct.TYPE_8__* %62, i32 %63, %struct.glsl_src_param* %7)
  %65 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %66 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %67 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 2
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %65, %struct.TYPE_8__* %69, i32 %70, %struct.glsl_src_param* %8)
  %72 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %73 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %7, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %8, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, i8*, ...) @shader_addline(i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %77, i32 %79, i8* %80, i32 %82, i32 %84)
  br label %318

86:                                               ; preds = %35
  %87 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %88 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %87, i32 0, i32 2
  %89 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %88, align 8
  %90 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %89, i64 0
  %91 = bitcast %struct.wined3d_shader_dst_param* %5 to i8*
  %92 = bitcast %struct.wined3d_shader_dst_param* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 32, i1 false)
  %93 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %94 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %5, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %102, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %86
  %111 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %112 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %111, i32 0, i32 3
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %5, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %182, label %122

122:                                              ; preds = %110, %86
  %123 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %124 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %123, i32 0, i32 3
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %5, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %132, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %122
  %141 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %142 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %141, i32 0, i32 3
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %5, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %182, label %152

152:                                              ; preds = %140, %122
  %153 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %154 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %153, i32 0, i32 3
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 2
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %5, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %162, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %152
  %171 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %172 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %171, i32 0, i32 3
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i64 2
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %5, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %177, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %170, %140, %110
  %183 = load i64, i64* @TRUE, align 8
  store i64 %183, i64* %9, align 8
  br label %184

184:                                              ; preds = %182, %170, %152
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %291, %184
  %186 = load i32, i32* %11, align 4
  %187 = icmp ult i32 %186, 4
  br i1 %187, label %188, label %294

188:                                              ; preds = %185
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %189

189:                                              ; preds = %213, %188
  %190 = load i32, i32* %12, align 4
  %191 = icmp ult i32 %190, 4
  br i1 %191, label %192, label %216

192:                                              ; preds = %189
  %193 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %194 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %193, i32 0, i32 3
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @shader_glsl_swizzle_get_component(i32 %198, i32 %199)
  %201 = load i32, i32* %11, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %192
  %204 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %205 = load i32, i32* %12, align 4
  %206 = shl i32 %204, %205
  %207 = load i32, i32* %14, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %210 = load i32, i32* %12, align 4
  %211 = shl i32 %209, %210
  store i32 %211, i32* %10, align 4
  br label %212

212:                                              ; preds = %203, %192
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %12, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %12, align 4
  br label %189

216:                                              ; preds = %189
  %217 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %218 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %217, i32 0, i32 2
  %219 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %218, align 8
  %220 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %219, i64 0
  %221 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %14, align 4
  %224 = and i32 %222, %223
  %225 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %5, i32 0, i32 0
  store i32 %224, i32* %225, align 8
  %226 = load i64, i64* %9, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %216
  %229 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %230 = call i32 @shader_glsl_get_write_mask(%struct.wined3d_shader_dst_param* %5, i8* %229)
  store i32 %230, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  br label %291

233:                                              ; preds = %228
  %234 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %235 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %234, i32 0, i32 1
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %240 = call i32 (i32, i8*, i8*, ...) @shader_addline(i32 %238, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %239)
  br label %255

241:                                              ; preds = %216
  %242 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %243 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %242, i32 0, i32 1
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %248 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %5, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @shader_glsl_append_dst_ext(i32 %246, %struct.wined3d_shader_instruction* %247, %struct.wined3d_shader_dst_param* %5, i32 %250)
  store i32 %251, i32* %14, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %241
  br label %291

254:                                              ; preds = %241
  br label %255

255:                                              ; preds = %254, %233
  %256 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %257 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %258 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %257, i32 0, i32 3
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i64 0
  %261 = load i32, i32* %10, align 4
  %262 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %256, %struct.TYPE_8__* %260, i32 %261, %struct.glsl_src_param* %6)
  %263 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %264 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %265 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %264, i32 0, i32 3
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i64 1
  %268 = load i32, i32* %14, align 4
  %269 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %263, %struct.TYPE_8__* %267, i32 %268, %struct.glsl_src_param* %7)
  %270 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %271 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %272 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %271, i32 0, i32 3
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i64 2
  %275 = load i32, i32* %14, align 4
  %276 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %270, %struct.TYPE_8__* %274, i32 %275, %struct.glsl_src_param* %8)
  %277 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %278 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %277, i32 0, i32 1
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i8*, i8** %3, align 8
  %283 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %6, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load i8*, i8** %4, align 8
  %286 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %7, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %8, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (i32, i8*, i8*, ...) @shader_addline(i32 %281, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %282, i32 %284, i8* %285, i32 %287, i32 %289)
  br label %291

291:                                              ; preds = %255, %253, %232
  %292 = load i32, i32* %11, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %11, align 4
  br label %185

294:                                              ; preds = %185
  %295 = load i64, i64* %9, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %318

297:                                              ; preds = %294
  %298 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %299 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %298, i32 0, i32 2
  %300 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %299, align 8
  %301 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %300, i64 0
  %302 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %303 = call i32 @shader_glsl_get_write_mask(%struct.wined3d_shader_dst_param* %301, i8* %302)
  %304 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %305 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %304, i32 0, i32 1
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %310 = call i32 @shader_glsl_append_dst(i32 %308, %struct.wined3d_shader_instruction* %309)
  %311 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %312 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %311, i32 0, i32 1
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %317 = call i32 (i32, i8*, i8*, ...) @shader_addline(i32 %315, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %316)
  br label %318

318:                                              ; preds = %43, %297, %294
  ret void
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @shader_is_scalar(%struct.TYPE_7__*) #1

declare dso_local i32 @shader_glsl_append_dst(i32, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_8__*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(i32, i8*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @shader_glsl_swizzle_get_component(i32, i32) #1

declare dso_local i32 @shader_glsl_get_write_mask(%struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @shader_glsl_append_dst_ext(i32, %struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
