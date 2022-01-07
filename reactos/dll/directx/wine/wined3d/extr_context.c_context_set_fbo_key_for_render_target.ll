; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_set_fbo_key_for_render_target.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_set_fbo_key_for_render_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_fbo_entry_key = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i8* }
%struct.wined3d_rendertarget_info = type { i32, i32, %struct.TYPE_8__, %struct.wined3d_resource* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.wined3d_resource = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.wined3d_texture = type { i32, i8*, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.wined3d_surface* }
%struct.wined3d_surface = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }

@WINED3DFMT_NULL = common dso_local global i64 0, align 8
@WINED3D_RTYPE_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Not implemented for %s resources.\0A\00", align 1
@WINED3D_ALL_LAYERS = common dso_local global i8* null, align 8
@WINED3D_RTYPE_TEXTURE_2D = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_fbo_entry_key*, i32, %struct.wined3d_rendertarget_info*, i32)* @context_set_fbo_key_for_render_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_set_fbo_key_for_render_target(%struct.wined3d_context* %0, %struct.wined3d_fbo_entry_key* %1, i32 %2, %struct.wined3d_rendertarget_info* %3, i32 %4) #0 {
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_fbo_entry_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_rendertarget_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_resource*, align 8
  %13 = alloca %struct.wined3d_texture*, align 8
  %14 = alloca %struct.wined3d_surface*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_fbo_entry_key* %1, %struct.wined3d_fbo_entry_key** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.wined3d_rendertarget_info* %3, %struct.wined3d_rendertarget_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %9, align 8
  %16 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %9, align 8
  %19 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %18, i32 0, i32 3
  %20 = load %struct.wined3d_resource*, %struct.wined3d_resource** %19, align 8
  store %struct.wined3d_resource* %20, %struct.wined3d_resource** %12, align 8
  %21 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %22 = icmp ne %struct.wined3d_resource* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %5
  %24 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %25 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WINED3DFMT_NULL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %23
  %32 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %33 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WINED3D_RTYPE_BUFFER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %81

37:                                               ; preds = %31, %23, %5
  %38 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %39 = icmp ne %struct.wined3d_resource* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %42 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WINED3D_RTYPE_BUFFER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %48 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @debug_d3dresourcetype(i64 %49)
  %51 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %40, %37
  %53 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %54 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  store i8* null, i8** %59, align 8
  %60 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %61 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  %67 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %68 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %75 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %340

81:                                               ; preds = %31
  %82 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %9, align 8
  %83 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %126

87:                                               ; preds = %81
  %88 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %9, align 8
  %89 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %93 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  store i8* %91, i8** %98, align 8
  %99 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %9, align 8
  %100 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %104 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  store i32 %102, i32* %109, align 8
  %110 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %111 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %110, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load i8*, i8** @WINED3D_ALL_LAYERS, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %120 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  store i32 %118, i32* %125, align 4
  br label %340

126:                                              ; preds = %81
  %127 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %128 = call %struct.wined3d_texture* @wined3d_texture_from_resource(%struct.wined3d_resource* %127)
  store %struct.wined3d_texture* %128, %struct.wined3d_texture** %13, align 8
  %129 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %130 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @WINED3D_RTYPE_TEXTURE_2D, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %189

134:                                              ; preds = %126
  %135 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %136 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %135, i32 0, i32 3
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load %struct.wined3d_surface*, %struct.wined3d_surface** %142, align 8
  store %struct.wined3d_surface* %143, %struct.wined3d_surface** %14, align 8
  %144 = load %struct.wined3d_surface*, %struct.wined3d_surface** %14, align 8
  %145 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = icmp ne %struct.TYPE_11__* %146, null
  br i1 %147, label %148, label %188

148:                                              ; preds = %134
  %149 = load %struct.wined3d_surface*, %struct.wined3d_surface** %14, align 8
  %150 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %149, i32 0, i32 0
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %155 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %154, i32 0, i32 1
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 3
  store i8* %153, i8** %160, align 8
  %161 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %162 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  store i32 0, i32* %167, align 8
  %168 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %169 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %168, i32 0, i32 1
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  %175 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %176 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %175, i32 0, i32 1
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store i32 0, i32* %181, align 8
  %182 = load i32, i32* %8, align 4
  %183 = shl i32 1, %182
  %184 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %185 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %340

188:                                              ; preds = %134
  br label %189

189:                                              ; preds = %188, %126
  %190 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @wined3d_texture_get_sub_resource_target(%struct.wined3d_texture* %190, i32 %191)
  %193 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %194 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %193, i32 0, i32 1
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 2
  store i32 %192, i32* %199, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %202 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = urem i32 %200, %203
  %205 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %206 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %205, i32 0, i32 1
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  store i32 %204, i32* %211, align 8
  %212 = load i32, i32* %11, align 4
  %213 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %214 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = udiv i32 %212, %215
  %217 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %218 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %217, i32 0, i32 1
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  store i32 %216, i32* %223, align 4
  %224 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %9, align 8
  %225 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 1
  br i1 %227, label %228, label %238

228:                                              ; preds = %189
  %229 = load i8*, i8** @WINED3D_ALL_LAYERS, align 8
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %232 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %231, i32 0, i32 1
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  store i32 %230, i32* %237, align 4
  br label %238

238:                                              ; preds = %228, %189
  %239 = load i32, i32* %10, align 4
  switch i32 %239, label %340 [
    i32 129, label %240
    i32 128, label %252
    i32 131, label %264
    i32 130, label %302
  ]

240:                                              ; preds = %238
  %241 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %242 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %243 = load i32, i32* @FALSE, align 4
  %244 = call i8* @wined3d_texture_get_texture_name(%struct.wined3d_texture* %241, %struct.wined3d_context* %242, i32 %243)
  %245 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %246 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %245, i32 0, i32 1
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 3
  store i8* %244, i8** %251, align 8
  br label %340

252:                                              ; preds = %238
  %253 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %254 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %255 = load i32, i32* @TRUE, align 4
  %256 = call i8* @wined3d_texture_get_texture_name(%struct.wined3d_texture* %253, %struct.wined3d_context* %254, i32 %255)
  %257 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %258 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %257, i32 0, i32 1
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 3
  store i8* %256, i8** %263, align 8
  br label %340

264:                                              ; preds = %238
  %265 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %266 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %265, i32 0, i32 2
  %267 = load i8*, i8** %266, align 8
  %268 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %269 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %268, i32 0, i32 1
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 3
  store i8* %267, i8** %274, align 8
  %275 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %276 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %275, i32 0, i32 1
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 2
  store i32 0, i32* %281, align 8
  %282 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %283 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %282, i32 0, i32 1
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = load i32, i32* %8, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 1
  store i32 0, i32* %288, align 4
  %289 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %290 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %289, i32 0, i32 1
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 0
  store i32 0, i32* %295, align 8
  %296 = load i32, i32* %8, align 4
  %297 = shl i32 1, %296
  %298 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %299 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %340

302:                                              ; preds = %238
  %303 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %304 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %307 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %306, i32 0, i32 1
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %307, align 8
  %309 = load i32, i32* %8, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 3
  store i8* %305, i8** %312, align 8
  %313 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %314 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %313, i32 0, i32 1
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 2
  store i32 0, i32* %319, align 8
  %320 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %321 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %320, i32 0, i32 1
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = load i32, i32* %8, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 1
  store i32 0, i32* %326, align 4
  %327 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %328 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %327, i32 0, i32 1
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %328, align 8
  %330 = load i32, i32* %8, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  store i32 0, i32* %333, align 8
  %334 = load i32, i32* %8, align 4
  %335 = shl i32 1, %334
  %336 = load %struct.wined3d_fbo_entry_key*, %struct.wined3d_fbo_entry_key** %7, align 8
  %337 = getelementptr inbounds %struct.wined3d_fbo_entry_key, %struct.wined3d_fbo_entry_key* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %335
  store i32 %339, i32* %337, align 8
  br label %340

340:                                              ; preds = %52, %87, %148, %238, %302, %264, %252, %240
  ret void
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dresourcetype(i64) #1

declare dso_local %struct.wined3d_texture* @wined3d_texture_from_resource(%struct.wined3d_resource*) #1

declare dso_local i32 @wined3d_texture_get_sub_resource_target(%struct.wined3d_texture*, i32) #1

declare dso_local i8* @wined3d_texture_get_texture_name(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
