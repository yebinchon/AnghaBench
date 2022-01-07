; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_overlay_add.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_overlay_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_6__*, %struct.MPContext* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8* }
%struct.MPContext = type { i32 }
%struct.overlay = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"bgra\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"overlay-add: unsupported OSD format '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"overlay-add: invalid id %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"overlay-add: inconsistent parameters\0A\00", align 1
@IMGFMT_BGRA = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"overlay-add: could not open or map '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_overlay_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_overlay_add(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.overlay, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = bitcast i8* %23 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %24, %struct.mp_cmd_ctx** %3, align 8
  %25 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %25, i32 0, i32 2
  %27 = load %struct.MPContext*, %struct.MPContext** %26, align 8
  store %struct.MPContext* %27, %struct.MPContext** %4, align 8
  %28 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %5, align 4
  %35 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  %42 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %7, align 4
  %49 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %8, align 8
  %56 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %9, align 4
  %63 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 5
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %10, align 8
  %70 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 6
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %11, align 4
  %77 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 7
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %12, align 4
  %84 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %13, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %1
  %95 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 (%struct.MPContext*, i8*, ...) @MP_ERR(%struct.MPContext* %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  br label %266

98:                                               ; preds = %1
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = icmp sge i32 %102, 64
  br i1 %103, label %104, label %108

104:                                              ; preds = %101, %98
  %105 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (%struct.MPContext*, i8*, ...) @MP_ERR(%struct.MPContext* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %266

108:                                              ; preds = %101
  %109 = load i32, i32* %11, align 4
  %110 = icmp sle i32 %109, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %12, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %11, align 4
  %117 = mul nsw i32 %116, 4
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %13, align 4
  %121 = srem i32 %120, 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119, %114, %111, %108
  %124 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %125 = call i32 (%struct.MPContext*, i8*, ...) @MP_ERR(%struct.MPContext* %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %266

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.overlay, %struct.overlay* %14, i32 0, i32 0
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %127, align 8
  %129 = getelementptr inbounds %struct.overlay, %struct.overlay* %14, i32 0, i32 1
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %129, align 4
  %131 = getelementptr inbounds %struct.overlay, %struct.overlay* %14, i32 0, i32 2
  %132 = load i32, i32* @IMGFMT_BGRA, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call %struct.TYPE_7__* @mp_image_alloc(i32 %132, i32 %133, i32 %134)
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %131, align 8
  %136 = getelementptr inbounds %struct.overlay, %struct.overlay* %14, i32 0, i32 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = icmp ne %struct.TYPE_7__* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %126
  br label %266

140:                                              ; preds = %126
  store i32 -1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 64
  br i1 %145, label %146, label %162

146:                                              ; preds = %140
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = call i32 @strtol(i8* %148, i8** %18, i32 10)
  store i32 %149, i32* %15, align 4
  %150 = load i8*, i8** %8, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load i8*, i8** %18, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154, %146
  store i32 -1, i32* %15, align 4
  br label %161

161:                                              ; preds = %160, %154
  store i32 0, i32* %16, align 4
  br label %195

162:                                              ; preds = %140
  %163 = load i8*, i8** %8, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 38
  br i1 %167, label %168, label %186

168:                                              ; preds = %162
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = call i64 @strtoull(i8* %170, i8** %19, i32 0)
  store i64 %171, i64* %20, align 8
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = icmp ne i8 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %168
  %177 = load i8*, i8** %19, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176, %168
  store i64 0, i64* %20, align 8
  br label %183

183:                                              ; preds = %182, %176
  %184 = load i64, i64* %20, align 8
  %185 = inttoptr i64 %184 to i8*
  store i8* %185, i8** %17, align 8
  br label %194

186:                                              ; preds = %162
  %187 = load i8*, i8** %8, align 8
  %188 = load i32, i32* @O_RDONLY, align 4
  %189 = load i32, i32* @O_BINARY, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @O_CLOEXEC, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @open(i8* %187, i32 %192)
  store i32 %193, i32* %15, align 4
  br label %194

194:                                              ; preds = %186, %183
  br label %195

195:                                              ; preds = %194, %161
  store i32 0, i32* %21, align 4
  %196 = load i32, i32* %15, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %224

198:                                              ; preds = %195
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %13, align 4
  %202 = mul nsw i32 %200, %201
  %203 = add nsw i32 %199, %202
  store i32 %203, i32* %21, align 4
  %204 = load i32, i32* %21, align 4
  %205 = load i32, i32* @PROT_READ, align 4
  %206 = load i32, i32* @MAP_SHARED, align 4
  %207 = load i32, i32* %15, align 4
  %208 = call i8* @mmap(i32* null, i32 %204, i32 %205, i32 %206, i32 %207, i32 0)
  store i8* %208, i8** %22, align 8
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %198
  %212 = load i32, i32* %15, align 4
  %213 = call i32 @close(i32 %212)
  br label %214

214:                                              ; preds = %211, %198
  %215 = load i8*, i8** %22, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i8*, i8** %22, align 8
  %219 = load i8*, i8** @MAP_FAILED, align 8
  %220 = icmp ne i8* %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i8*, i8** %22, align 8
  store i8* %222, i8** %17, align 8
  br label %223

223:                                              ; preds = %221, %217, %214
  br label %224

224:                                              ; preds = %223, %195
  %225 = load i8*, i8** %17, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %234, label %227

227:                                              ; preds = %224
  %228 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = call i32 (%struct.MPContext*, i8*, ...) @MP_ERR(%struct.MPContext* %228, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %229)
  %231 = getelementptr inbounds %struct.overlay, %struct.overlay* %14, i32 0, i32 2
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = call i32 @talloc_free(%struct.TYPE_7__* %232)
  br label %266

234:                                              ; preds = %224
  %235 = getelementptr inbounds %struct.overlay, %struct.overlay* %14, i32 0, i32 2
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = load i8*, i8** %17, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = load i32, i32* %11, align 4
  %246 = mul nsw i32 %245, 4
  %247 = load i32, i32* %12, align 4
  %248 = getelementptr inbounds %struct.overlay, %struct.overlay* %14, i32 0, i32 2
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %13, align 4
  %255 = call i32 @memcpy_pic(i32 %240, i8* %244, i32 %246, i32 %247, i32 %253, i32 %254)
  %256 = load i32, i32* %21, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %234
  %259 = load i8*, i8** %17, align 8
  %260 = load i32, i32* %21, align 4
  %261 = call i32 @munmap(i8* %259, i32 %260)
  br label %262

262:                                              ; preds = %258, %234
  %263 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %264 = load i32, i32* %5, align 4
  %265 = call i32 @replace_overlay(%struct.MPContext* %263, i32 %264, %struct.overlay* %14)
  br label %269

266:                                              ; preds = %227, %139, %123, %104, %94
  %267 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %268 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %267, i32 0, i32 0
  store i32 0, i32* %268, align 8
  br label %269

269:                                              ; preds = %266, %262
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @mp_image_alloc(i32, i32, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @talloc_free(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy_pic(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @replace_overlay(%struct.MPContext*, i32, %struct.overlay*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
