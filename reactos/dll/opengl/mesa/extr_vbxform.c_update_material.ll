; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_update_material.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_update_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.vertex_buffer* }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vertex_buffer = type { i32*, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FRONT_AMBIENT_BIT = common dso_local global i32 0, align 4
@BACK_AMBIENT_BIT = common dso_local global i32 0, align 4
@FRONT_DIFFUSE_BIT = common dso_local global i32 0, align 4
@BACK_DIFFUSE_BIT = common dso_local global i32 0, align 4
@FRONT_SPECULAR_BIT = common dso_local global i32 0, align 4
@BACK_SPECULAR_BIT = common dso_local global i32 0, align 4
@FRONT_EMISSION_BIT = common dso_local global i32 0, align 4
@BACK_EMISSION_BIT = common dso_local global i32 0, align 4
@FRONT_SHININESS_BIT = common dso_local global i32 0, align 4
@BACK_SHININESS_BIT = common dso_local global i32 0, align 4
@FRONT_INDEXES_BIT = common dso_local global i32 0, align 4
@BACK_INDEXES_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @update_material to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_material(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vertex_buffer*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  store %struct.vertex_buffer* %8, %struct.vertex_buffer** %5, align 8
  %9 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %10 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %422

16:                                               ; preds = %2
  %17 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FRONT_AMBIENT_BIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %16
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @COPY_4V(i32 %33, i32 %42)
  br label %44

44:                                               ; preds = %26, %16
  %45 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BACK_AMBIENT_BIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %44
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %63 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %64, i64 %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @COPY_4V(i32 %61, i32 %70)
  br label %72

72:                                               ; preds = %54, %44
  %73 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FRONT_DIFFUSE_BIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %72
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %91 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %91, align 8
  %93 = load i64, i64* %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %92, i64 %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @COPY_4V(i32 %89, i32 %98)
  br label %100

100:                                              ; preds = %82, %72
  %101 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %102 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @BACK_DIFFUSE_BIT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %100
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %119 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %119, align 8
  %121 = load i64, i64* %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %120, i64 %121
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @COPY_4V(i32 %117, i32 %126)
  br label %128

128:                                              ; preds = %110, %100
  %129 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %130 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %4, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @FRONT_SPECULAR_BIT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %128
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %147 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %146, i32 0, i32 1
  %148 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %147, align 8
  %149 = load i64, i64* %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %148, i64 %149
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @COPY_4V(i32 %145, i32 %154)
  br label %156

156:                                              ; preds = %138, %128
  %157 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %158 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* %4, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @BACK_SPECULAR_BIT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %156
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 1
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %175 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %174, i32 0, i32 1
  %176 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %175, align 8
  %177 = load i64, i64* %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %176, i64 %177
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @COPY_4V(i32 %173, i32 %182)
  br label %184

184:                                              ; preds = %166, %156
  %185 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %186 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* %4, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @FRONT_EMISSION_BIT, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %212

194:                                              ; preds = %184
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %203 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %202, i32 0, i32 1
  %204 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %203, align 8
  %205 = load i64, i64* %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %204, i64 %205
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @COPY_4V(i32 %201, i32 %210)
  br label %212

212:                                              ; preds = %194, %184
  %213 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %214 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* %4, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @BACK_EMISSION_BIT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %240

222:                                              ; preds = %212
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i64 1
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %231 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %230, i32 0, i32 1
  %232 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %231, align 8
  %233 = load i64, i64* %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %232, i64 %233
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i64 1
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @COPY_4V(i32 %229, i32 %238)
  br label %240

240:                                              ; preds = %222, %212
  %241 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %242 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* %4, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @FRONT_SHININESS_BIT, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %272

250:                                              ; preds = %240
  %251 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %252 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %251, i32 0, i32 1
  %253 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %252, align 8
  %254 = load i64, i64* %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %253, i64 %254
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i64 0
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 3
  store i32 %259, i32* %265, align 4
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i64 0
  %271 = call i32 @gl_compute_material_shine_table(%struct.TYPE_9__* %270)
  br label %272

272:                                              ; preds = %250, %240
  %273 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %274 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i64, i64* %4, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @BACK_SHININESS_BIT, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %304

282:                                              ; preds = %272
  %283 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %284 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %283, i32 0, i32 1
  %285 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %284, align 8
  %286 = load i64, i64* %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %285, i64 %286
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i64 1
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i64 1
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 3
  store i32 %291, i32* %297, align 4
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i64 1
  %303 = call i32 @gl_compute_material_shine_table(%struct.TYPE_9__* %302)
  br label %304

304:                                              ; preds = %282, %272
  %305 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %306 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = load i64, i64* %4, align 8
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @FRONT_INDEXES_BIT, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %360

314:                                              ; preds = %304
  %315 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %316 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %315, i32 0, i32 1
  %317 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %316, align 8
  %318 = load i64, i64* %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %317, i64 %318
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i64 0
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i64 0
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 2
  store i32 %323, i32* %329, align 4
  %330 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %331 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %330, i32 0, i32 1
  %332 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %331, align 8
  %333 = load i64, i64* %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %332, i64 %333
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i64 0
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i64 0
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 1
  store i32 %338, i32* %344, align 4
  %345 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %346 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %345, i32 0, i32 1
  %347 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %346, align 8
  %348 = load i64, i64* %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %347, i64 %348
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i64 0
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i64 0
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  store i32 %353, i32* %359, align 4
  br label %360

360:                                              ; preds = %314, %304
  %361 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %362 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %361, i32 0, i32 0
  %363 = load i32*, i32** %362, align 8
  %364 = load i64, i64* %4, align 8
  %365 = getelementptr inbounds i32, i32* %363, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @BACK_INDEXES_BIT, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %416

370:                                              ; preds = %360
  %371 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %372 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %371, i32 0, i32 1
  %373 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %372, align 8
  %374 = load i64, i64* %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %373, i64 %374
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i64 1
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i64 1
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 2
  store i32 %379, i32* %385, align 4
  %386 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %387 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %386, i32 0, i32 1
  %388 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %387, align 8
  %389 = load i64, i64* %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %388, i64 %389
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i64 1
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 0
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i64 1
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 1
  store i32 %394, i32* %400, align 4
  %401 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %402 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %401, i32 0, i32 1
  %403 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %402, align 8
  %404 = load i64, i64* %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %403, i64 %404
  %406 = load %struct.TYPE_7__*, %struct.TYPE_7__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i64 1
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i64 1
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 0
  store i32 %409, i32* %415, align 4
  br label %416

416:                                              ; preds = %370, %360
  %417 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %418 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %417, i32 0, i32 0
  %419 = load i32*, i32** %418, align 8
  %420 = load i64, i64* %4, align 8
  %421 = getelementptr inbounds i32, i32* %419, i64 %420
  store i32 0, i32* %421, align 4
  br label %422

422:                                              ; preds = %416, %2
  ret void
}

declare dso_local i32 @COPY_4V(i32, i32) #1

declare dso_local i32 @gl_compute_material_shine_table(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
