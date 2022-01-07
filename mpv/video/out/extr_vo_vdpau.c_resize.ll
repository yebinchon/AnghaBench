; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i64, i64, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.vdpctx* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.vdpctx = type { i64, i64, i64, i64, i64, i32, i32, i64*, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.vdp_functions* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.vdp_functions = type { i64 (i32, i32, i32*, i32*, i32*)*, i64 (i64)*, i64 (i32, i32, i64, i64, i64*)* }
%struct.mp_rect = type { i32, i32, i32, i32 }

@OUTPUT_RGBA_FORMAT = common dso_local global i32 0, align 4
@VDP_STATUS_OK = common dso_local global i64 0, align 8
@VDP_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Error when calling vdp_output_surface_destroy\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Error when calling vdp_output_surface_create\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"vdpau out create: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"vdpau rotation surface create: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vdpctx*, align 8
  %4 = alloca %struct.vdp_functions*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mp_rect, align 4
  %7 = alloca %struct.mp_rect, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %13 = load %struct.vo*, %struct.vo** %2, align 8
  %14 = getelementptr inbounds %struct.vo, %struct.vo* %13, i32 0, i32 5
  %15 = load %struct.vdpctx*, %struct.vdpctx** %14, align 8
  store %struct.vdpctx* %15, %struct.vdpctx** %3, align 8
  %16 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %17 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %16, i32 0, i32 13
  %18 = load %struct.vdp_functions*, %struct.vdp_functions** %17, align 8
  store %struct.vdp_functions* %18, %struct.vdp_functions** %4, align 8
  %19 = load %struct.vo*, %struct.vo** %2, align 8
  %20 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %21 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %20, i32 0, i32 12
  %22 = call i32 @vo_get_src_dst_rects(%struct.vo* %19, %struct.mp_rect* %6, %struct.mp_rect* %7, i32* %21)
  %23 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %7, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %26 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %25, i32 0, i32 11
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %7, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %31 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %30, i32 0, i32 11
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %36 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %35, i32 0, i32 11
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %41 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %40, i32 0, i32 11
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.vo*, %struct.vo** %2, align 8
  %44 = getelementptr inbounds %struct.vo, %struct.vo* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 90
  br i1 %48, label %56, label %49

49:                                               ; preds = %1
  %50 = load %struct.vo*, %struct.vo** %2, align 8
  %51 = getelementptr inbounds %struct.vo, %struct.vo* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 270
  br i1 %55, label %56, label %77

56:                                               ; preds = %49, %1
  %57 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %60 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %59, i32 0, i32 10
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %65 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %64, i32 0, i32 10
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %70 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %69, i32 0, i32 10
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %75 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 4
  br label %98

77:                                               ; preds = %49
  %78 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %81 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %80, i32 0, i32 10
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %86 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %85, i32 0, i32 10
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  %88 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %91 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %90, i32 0, i32 10
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %96 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %95, i32 0, i32 10
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %77, %56
  %99 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %100 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %99, i32 0, i32 0
  %101 = load i64 (i32, i32, i32*, i32*, i32*)*, i64 (i32, i32, i32*, i32*, i32*)** %100, align 8
  %102 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %103 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @OUTPUT_RGBA_FORMAT, align 4
  %106 = call i64 %101(i32 %104, i32 %105, i32* %8, i32* %9, i32* %10)
  store i64 %106, i64* %5, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* @VDP_STATUS_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110, %98
  br label %357

114:                                              ; preds = %110
  %115 = load %struct.vo*, %struct.vo** %2, align 8
  %116 = getelementptr inbounds %struct.vo, %struct.vo* %115, i32 0, i32 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %123 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = mul nsw i64 1000, %124
  br label %131

126:                                              ; preds = %114
  %127 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %128 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = mul nsw i64 1000, %129
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i64 [ %125, %121 ], [ %130, %126 ]
  %133 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %134 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.vo*, %struct.vo** %2, align 8
  %136 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %137 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @vo_set_queue_params(%struct.vo* %135, i64 %138, i32 1)
  %140 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %141 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.vo*, %struct.vo** %2, align 8
  %144 = getelementptr inbounds %struct.vo, %struct.vo* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp slt i64 %142, %145
  br i1 %146, label %165, label %147

147:                                              ; preds = %131
  %148 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %149 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.vo*, %struct.vo** %2, align 8
  %152 = getelementptr inbounds %struct.vo, %struct.vo* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %150, %153
  br i1 %154, label %165, label %155

155:                                              ; preds = %147
  %156 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %157 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.vo*, %struct.vo** %2, align 8
  %160 = getelementptr inbounds %struct.vo, %struct.vo* %159, i32 0, i32 3
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %158, %163
  br i1 %164, label %165, label %347

165:                                              ; preds = %155, %147, %131
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %168 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.vo*, %struct.vo** %2, align 8
  %171 = getelementptr inbounds %struct.vo, %struct.vo* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i8* @s_size(i32 %166, i64 %169, i64 %172)
  %174 = ptrtoint i8* %173 to i64
  %175 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %176 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %175, i32 0, i32 3
  store i64 %174, i64* %176, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %179 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.vo*, %struct.vo** %2, align 8
  %182 = getelementptr inbounds %struct.vo, %struct.vo* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i8* @s_size(i32 %177, i64 %180, i64 %183)
  %185 = ptrtoint i8* %184 to i64
  %186 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %187 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %186, i32 0, i32 4
  store i64 %185, i64* %187, align 8
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %219, %165
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %191 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %222

194:                                              ; preds = %188
  %195 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %196 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %195, i32 0, i32 7
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %194
  %205 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %206 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %205, i32 0, i32 1
  %207 = load i64 (i64)*, i64 (i64)** %206, align 8
  %208 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %209 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %208, i32 0, i32 7
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = call i64 %207(i64 %214)
  store i64 %215, i64* %5, align 8
  %216 = load %struct.vo*, %struct.vo** %2, align 8
  %217 = call i32 @CHECK_VDP_WARNING(%struct.vo* %216, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %218

218:                                              ; preds = %204, %194
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %188

222:                                              ; preds = %188
  store i32 0, i32* %12, align 4
  br label %223

223:                                              ; preds = %261, %222
  %224 = load i32, i32* %12, align 4
  %225 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %226 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %264

229:                                              ; preds = %223
  %230 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %231 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %230, i32 0, i32 2
  %232 = load i64 (i32, i32, i64, i64, i64*)*, i64 (i32, i32, i64, i64, i64*)** %231, align 8
  %233 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %234 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @OUTPUT_RGBA_FORMAT, align 4
  %237 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %238 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %241 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %244 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %243, i32 0, i32 7
  %245 = load i64*, i64** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  %249 = call i64 %232(i32 %235, i32 %236, i64 %239, i64 %242, i64* %248)
  store i64 %249, i64* %5, align 8
  %250 = load %struct.vo*, %struct.vo** %2, align 8
  %251 = call i32 @CHECK_VDP_WARNING(%struct.vo* %250, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %252 = load %struct.vo*, %struct.vo** %2, align 8
  %253 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %254 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %253, i32 0, i32 7
  %255 = load i64*, i64** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @MP_DBG(%struct.vo* %252, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %259)
  br label %261

261:                                              ; preds = %229
  %262 = load i32, i32* %12, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %12, align 4
  br label %223

264:                                              ; preds = %223
  %265 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %266 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %265, i32 0, i32 8
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %283

270:                                              ; preds = %264
  %271 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %272 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %271, i32 0, i32 1
  %273 = load i64 (i64)*, i64 (i64)** %272, align 8
  %274 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %275 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %274, i32 0, i32 8
  %276 = load i64, i64* %275, align 8
  %277 = call i64 %273(i64 %276)
  store i64 %277, i64* %5, align 8
  %278 = load %struct.vo*, %struct.vo** %2, align 8
  %279 = call i32 @CHECK_VDP_WARNING(%struct.vo* %278, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %280 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %281 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %282 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %281, i32 0, i32 8
  store i64 %280, i64* %282, align 8
  br label %283

283:                                              ; preds = %270, %264
  %284 = load %struct.vo*, %struct.vo** %2, align 8
  %285 = getelementptr inbounds %struct.vo, %struct.vo* %284, i32 0, i32 3
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 90
  br i1 %289, label %297, label %290

290:                                              ; preds = %283
  %291 = load %struct.vo*, %struct.vo** %2, align 8
  %292 = getelementptr inbounds %struct.vo, %struct.vo* %291, i32 0, i32 3
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %295, 270
  br i1 %296, label %297, label %314

297:                                              ; preds = %290, %283
  %298 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %299 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %298, i32 0, i32 2
  %300 = load i64 (i32, i32, i64, i64, i64*)*, i64 (i32, i32, i64, i64, i64*)** %299, align 8
  %301 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %302 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %301, i32 0, i32 9
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @OUTPUT_RGBA_FORMAT, align 4
  %305 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %306 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %305, i32 0, i32 4
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %309 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %312 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %311, i32 0, i32 8
  %313 = call i64 %300(i32 %303, i32 %304, i64 %307, i64 %310, i64* %312)
  store i64 %313, i64* %5, align 8
  br label %339

314:                                              ; preds = %290
  %315 = load %struct.vo*, %struct.vo** %2, align 8
  %316 = getelementptr inbounds %struct.vo, %struct.vo* %315, i32 0, i32 3
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = icmp eq i32 %319, 180
  br i1 %320, label %321, label %338

321:                                              ; preds = %314
  %322 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %323 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %322, i32 0, i32 2
  %324 = load i64 (i32, i32, i64, i64, i64*)*, i64 (i32, i32, i64, i64, i64*)** %323, align 8
  %325 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %326 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %325, i32 0, i32 9
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @OUTPUT_RGBA_FORMAT, align 4
  %329 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %330 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %333 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %332, i32 0, i32 4
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %336 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %335, i32 0, i32 8
  %337 = call i64 %324(i32 %327, i32 %328, i64 %331, i64 %334, i64* %336)
  store i64 %337, i64* %5, align 8
  br label %338

338:                                              ; preds = %321, %314
  br label %339

339:                                              ; preds = %338, %297
  %340 = load %struct.vo*, %struct.vo** %2, align 8
  %341 = call i32 @CHECK_VDP_WARNING(%struct.vo* %340, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %342 = load %struct.vo*, %struct.vo** %2, align 8
  %343 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %344 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %343, i32 0, i32 8
  %345 = load i64, i64* %344, align 8
  %346 = call i32 @MP_DBG(%struct.vo* %342, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %345)
  br label %347

347:                                              ; preds = %339, %155
  %348 = load %struct.vo*, %struct.vo** %2, align 8
  %349 = getelementptr inbounds %struct.vo, %struct.vo* %348, i32 0, i32 3
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %354 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %353, i32 0, i32 5
  store i32 %352, i32* %354, align 8
  %355 = load %struct.vo*, %struct.vo** %2, align 8
  %356 = getelementptr inbounds %struct.vo, %struct.vo* %355, i32 0, i32 2
  store i32 1, i32* %356, align 8
  br label %357

357:                                              ; preds = %347, %113
  ret void
}

declare dso_local i32 @vo_get_src_dst_rects(%struct.vo*, %struct.mp_rect*, %struct.mp_rect*, i32*) #1

declare dso_local i32 @vo_set_queue_params(%struct.vo*, i64, i32) #1

declare dso_local i8* @s_size(i32, i64, i64) #1

declare dso_local i32 @CHECK_VDP_WARNING(%struct.vo*, i8*) #1

declare dso_local i32 @MP_DBG(%struct.vo*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
