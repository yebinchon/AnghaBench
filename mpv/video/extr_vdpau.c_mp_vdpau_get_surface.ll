; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vdpau.c_mp_vdpau_get_surface.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vdpau.c_mp_vdpau_get_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }
%struct.mp_vdpau_ctx = type { i32, i32, %struct.surface_entry*, %struct.vdp_functions }
%struct.surface_entry = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.vdp_functions = type { i32 (i32, i64, i32, i32, i64*)*, i32 (i32, i64, i32, i32, i64*)*, i32 (i64)*, i32 (i64)* }

@MAX_VIDEO_SURFACES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error when destroying surface\00", align 1
@VDP_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Error when allocating surface\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"no surfaces available in mp_vdpau_get_video_surface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_image* (%struct.mp_vdpau_ctx*, i64, i64, i32, i32, i32)* @mp_vdpau_get_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_image* @mp_vdpau_get_surface(%struct.mp_vdpau_ctx* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mp_vdpau_ctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vdp_functions*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.surface_entry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.surface_entry*, align 8
  %20 = alloca %struct.surface_entry*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.surface_entry*, align 8
  %23 = alloca %struct.mp_image*, align 8
  store %struct.mp_vdpau_ctx* %0, %struct.mp_vdpau_ctx** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %24, i32 0, i32 3
  store %struct.vdp_functions* %25, %struct.vdp_functions** %13, align 8
  store i32 -1, i32* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i64 -1, i64* %8, align 8
  br label %30

29:                                               ; preds = %6
  store i64 -1, i64* %9, align 8
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %31, i32 0, i32 0
  %33 = call i32 @pthread_mutex_lock(i32* %32)
  store i32 0, i32* %16, align 4
  br label %34

34:                                               ; preds = %117, %30
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @MAX_VIDEO_SURFACES, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %120

38:                                               ; preds = %34
  %39 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %39, i32 0, i32 2
  %41 = load %struct.surface_entry*, %struct.surface_entry** %40, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %41, i64 %43
  store %struct.surface_entry* %44, %struct.surface_entry** %17, align 8
  %45 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %46 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %116, label %49

49:                                               ; preds = %38
  %50 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %51 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %116

54:                                               ; preds = %49
  %55 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %56 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %84, label %60

60:                                               ; preds = %54
  %61 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %62 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %84, label %66

66:                                               ; preds = %60
  %67 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %68 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %84, label %72

72:                                               ; preds = %66
  %73 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %74 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %80 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %78, %72, %66, %60, %54
  %85 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %86 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.vdp_functions*, %struct.vdp_functions** %13, align 8
  %91 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %90, i32 0, i32 3
  %92 = load i32 (i64)*, i32 (i64)** %91, align 8
  %93 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %94 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = call i32 %92(i64 %95)
  store i32 %96, i32* %15, align 4
  br label %105

97:                                               ; preds = %84
  %98 = load %struct.vdp_functions*, %struct.vdp_functions** %13, align 8
  %99 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %98, i32 0, i32 2
  %100 = load i32 (i64)*, i32 (i64)** %99, align 8
  %101 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %102 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = call i32 %100(i64 %103)
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %97, %89
  %106 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %107 = call i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_ctx* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %108 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %109 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %110 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %109, i32 0, i32 6
  store i64 %108, i64* %110, align 8
  %111 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %112 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %111, i32 0, i32 7
  store i64 %108, i64* %112, align 8
  %113 = load %struct.surface_entry*, %struct.surface_entry** %17, align 8
  %114 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  br label %115

115:                                              ; preds = %105, %78
  br label %116

116:                                              ; preds = %115, %49, %38
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %34

120:                                              ; preds = %34
  store i32 0, i32* %18, align 4
  br label %121

121:                                              ; preds = %199, %120
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* @MAX_VIDEO_SURFACES, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %202

125:                                              ; preds = %121
  %126 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %127 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %126, i32 0, i32 2
  %128 = load %struct.surface_entry*, %struct.surface_entry** %127, align 8
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %128, i64 %130
  store %struct.surface_entry* %131, %struct.surface_entry** %19, align 8
  %132 = load %struct.surface_entry*, %struct.surface_entry** %19, align 8
  %133 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %198, label %136

136:                                              ; preds = %125
  %137 = load %struct.surface_entry*, %struct.surface_entry** %19, align 8
  %138 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %198

141:                                              ; preds = %136
  %142 = load %struct.surface_entry*, %struct.surface_entry** %19, align 8
  %143 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.surface_entry*, %struct.surface_entry** %19, align 8
  %149 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %150, %151
  br label %153

153:                                              ; preds = %147, %141
  %154 = phi i1 [ false, %141 ], [ %152, %147 ]
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load %struct.surface_entry*, %struct.surface_entry** %19, align 8
  %158 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %8, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load %struct.surface_entry*, %struct.surface_entry** %19, align 8
  %165 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %9, align 8
  %168 = icmp eq i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.surface_entry*, %struct.surface_entry** %19, align 8
  %172 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i32, i32* %14, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %153
  %181 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %182 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %181, i32 0, i32 2
  %183 = load %struct.surface_entry*, %struct.surface_entry** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %183, i64 %185
  store %struct.surface_entry* %186, %struct.surface_entry** %20, align 8
  %187 = load %struct.surface_entry*, %struct.surface_entry** %20, align 8
  %188 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %187, i32 0, i32 8
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.surface_entry*, %struct.surface_entry** %19, align 8
  %191 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %190, i32 0, i32 8
  %192 = load i64, i64* %191, align 8
  %193 = icmp slt i64 %189, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %180
  br label %199

195:                                              ; preds = %180
  br label %196

196:                                              ; preds = %195, %153
  %197 = load i32, i32* %18, align 4
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %196, %136, %125
  br label %199

199:                                              ; preds = %198, %194
  %200 = load i32, i32* %18, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %18, align 4
  br label %121

202:                                              ; preds = %121
  %203 = load i32, i32* %14, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %326

206:                                              ; preds = %202
  store i32 0, i32* %21, align 4
  br label %207

207:                                              ; preds = %322, %206
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* @MAX_VIDEO_SURFACES, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %325

211:                                              ; preds = %207
  %212 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %213 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %212, i32 0, i32 2
  %214 = load %struct.surface_entry*, %struct.surface_entry** %213, align 8
  %215 = load i32, i32* %21, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %214, i64 %216
  store %struct.surface_entry* %217, %struct.surface_entry** %22, align 8
  %218 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %219 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %321, label %222

222:                                              ; preds = %211
  %223 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %224 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %223, i32 0, i32 7
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %227 = icmp eq i64 %225, %226
  %228 = zext i1 %227 to i32
  %229 = call i32 @assert(i32 %228)
  %230 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %231 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @assert(i32 %235)
  %237 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %238 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  %241 = xor i1 %240, true
  %242 = zext i1 %241 to i32
  %243 = call i32 @assert(i32 %242)
  %244 = load i64, i64* %8, align 8
  %245 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %246 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %245, i32 0, i32 4
  store i64 %244, i64* %246, align 8
  %247 = load i64, i64* %9, align 8
  %248 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %249 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %248, i32 0, i32 5
  store i64 %247, i64* %249, align 8
  %250 = load i32, i32* %10, align 4
  %251 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %252 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* %11, align 4
  %254 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %255 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* %12, align 4
  %257 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %258 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %260 = call i64 @mp_vdpau_handle_preemption(%struct.mp_vdpau_ctx* %259, i32* null)
  %261 = icmp sge i64 %260, 0
  br i1 %261, label %262, label %310

262:                                              ; preds = %222
  %263 = load i32, i32* %10, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %286

265:                                              ; preds = %262
  %266 = load %struct.vdp_functions*, %struct.vdp_functions** %13, align 8
  %267 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %266, i32 0, i32 1
  %268 = load i32 (i32, i64, i32, i32, i64*)*, i32 (i32, i64, i32, i32, i64*)** %267, align 8
  %269 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %270 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i64, i64* %9, align 8
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %12, align 4
  %275 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %276 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %275, i32 0, i32 6
  %277 = call i32 %268(i32 %271, i64 %272, i32 %273, i32 %274, i64* %276)
  store i32 %277, i32* %15, align 4
  %278 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %279 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %278, i32 0, i32 6
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %282 = icmp ne i64 %280, %281
  %283 = zext i1 %282 to i32
  %284 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %285 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  br label %307

286:                                              ; preds = %262
  %287 = load %struct.vdp_functions*, %struct.vdp_functions** %13, align 8
  %288 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %287, i32 0, i32 0
  %289 = load i32 (i32, i64, i32, i32, i64*)*, i32 (i32, i64, i32, i32, i64*)** %288, align 8
  %290 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %291 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i64, i64* %8, align 8
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* %12, align 4
  %296 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %297 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %296, i32 0, i32 7
  %298 = call i32 %289(i32 %292, i64 %293, i32 %294, i32 %295, i64* %297)
  store i32 %298, i32* %15, align 4
  %299 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %300 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %299, i32 0, i32 7
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %303 = icmp ne i64 %301, %302
  %304 = zext i1 %303 to i32
  %305 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %306 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %305, i32 0, i32 0
  store i32 %304, i32* %306, align 8
  br label %307

307:                                              ; preds = %286, %265
  %308 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %309 = call i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_ctx* %308, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %319

310:                                              ; preds = %222
  %311 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %312 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %311, i32 0, i32 0
  store i32 0, i32* %312, align 8
  %313 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %314 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %315 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %314, i32 0, i32 6
  store i64 %313, i64* %315, align 8
  %316 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %317 = load %struct.surface_entry*, %struct.surface_entry** %22, align 8
  %318 = getelementptr inbounds %struct.surface_entry, %struct.surface_entry* %317, i32 0, i32 7
  store i64 %316, i64* %318, align 8
  br label %319

319:                                              ; preds = %310, %307
  %320 = load i32, i32* %21, align 4
  store i32 %320, i32* %14, align 4
  br label %326

321:                                              ; preds = %211
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %21, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %21, align 4
  br label %207

325:                                              ; preds = %207
  br label %326

326:                                              ; preds = %325, %319, %205
  store %struct.mp_image* null, %struct.mp_image** %23, align 8
  %327 = load i32, i32* %14, align 4
  %328 = icmp sge i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %326
  %330 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %331 = load i32, i32* %14, align 4
  %332 = call %struct.mp_image* @create_ref(%struct.mp_vdpau_ctx* %330, i32 %331)
  store %struct.mp_image* %332, %struct.mp_image** %23, align 8
  br label %333

333:                                              ; preds = %329, %326
  %334 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %335 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %334, i32 0, i32 0
  %336 = call i32 @pthread_mutex_unlock(i32* %335)
  %337 = load %struct.mp_image*, %struct.mp_image** %23, align 8
  %338 = icmp ne %struct.mp_image* %337, null
  br i1 %338, label %342, label %339

339:                                              ; preds = %333
  %340 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %7, align 8
  %341 = call i32 @MP_ERR(%struct.mp_vdpau_ctx* %340, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %342

342:                                              ; preds = %339, %333
  %343 = load %struct.mp_image*, %struct.mp_image** %23, align 8
  ret %struct.mp_image* %343
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @CHECK_VDP_WARNING(%struct.mp_vdpau_ctx*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mp_vdpau_handle_preemption(%struct.mp_vdpau_ctx*, i32*) #1

declare dso_local %struct.mp_image* @create_ref(%struct.mp_vdpau_ctx*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @MP_ERR(%struct.mp_vdpau_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
