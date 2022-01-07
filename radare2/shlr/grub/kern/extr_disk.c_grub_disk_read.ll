; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_read.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 (i32, i32, i64, i32)*, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_8__*, i32, i32, i8*)*, i32 }

@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Read out of range: sector 0x%llx (%s).\0A\00", align 1
@grub_errmsg = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_SIZE = common dso_local global i64 0, align 8
@GRUB_DISK_CACHE_BITS = common dso_local global i64 0, align 8
@GRUB_DISK_CACHE_SIZE = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"%s read failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @grub_disk_read(%struct.TYPE_8__* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %23 = load i64, i64* %10, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i64, i64* @grub_errno, align 8
  store i64 %27, i64* %6, align 8
  br label %339

28:                                               ; preds = %5
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @grub_disk_adjust_range(%struct.TYPE_8__* %29, i32* %8, i32* %9, i64 %30)
  %32 = load i64, i64* @GRUB_ERR_NONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = call i32 (...) @grub_error_push()
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* @grub_errmsg, align 4
  %39 = call i32 (i8*, i8*, i64, ...) @grub_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %37, i32 %38)
  %40 = call i32 (...) @grub_error_pop()
  %41 = load i64, i64* @grub_errno, align 8
  store i64 %41, i64* %6, align 8
  br label %339

42:                                               ; preds = %28
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i64, i64* @GRUB_DISK_SECTOR_SIZE, align 8
  %45 = load i64, i64* @GRUB_DISK_CACHE_BITS, align 8
  %46 = shl i64 %44, %45
  %47 = call i8* @grub_malloc(i64 %46)
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = load i64, i64* @grub_errno, align 8
  store i64 %51, i64* %6, align 8
  br label %339

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %330, %52
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %334

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @GRUB_DISK_CACHE_SIZE, align 4
  %59 = sub nsw i32 %58, 1
  %60 = xor i32 %59, -1
  %61 = and i32 %57, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %66 = shl i32 %64, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* @GRUB_DISK_SECTOR_SIZE, align 8
  %69 = load i64, i64* @GRUB_DISK_CACHE_BITS, align 8
  %70 = shl i64 %68, %69
  %71 = load i64, i64* %17, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = sub nsw i64 %72, %74
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %56
  %80 = load i64, i64* %10, align 8
  store i64 %80, i64* %16, align 8
  br label %81

81:                                               ; preds = %79, %56
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i8* @grub_disk_cache_fetch(i32 %86, i32 %89, i32 %90)
  store i8* %91, i8** %14, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %129

94:                                               ; preds = %81
  %95 = load i8*, i8** %11, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %118

97:                                               ; preds = %94
  %98 = load i64, i64* %17, align 8
  %99 = load i32, i32* %13, align 4
  %100 = zext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = load i64, i64* %16, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i64, i64* %10, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i64, i64* @GRUB_ERR_BAD_FS, align 8
  store i64 %107, i64* @grub_errno, align 8
  br label %335

108:                                              ; preds = %97
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i64, i64* %17, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i32, i32* %13, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i64, i64* %16, align 8
  %117 = call i32 @grub_memcpy(i8* %109, i8* %115, i64 %116)
  br label %118

118:                                              ; preds = %108, %94
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @grub_disk_cache_unlock(i32 %123, i32 %126, i32 %127)
  br label %273

129:                                              ; preds = %81
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @GRUB_DISK_CACHE_SIZE, align 4
  %132 = add nsw i32 %130, %131
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %150, label %137

137:                                              ; preds = %129
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64 (%struct.TYPE_8__*, i32, i32, i8*)*, i64 (%struct.TYPE_8__*, i32, i32, i8*)** %141, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @GRUB_DISK_CACHE_SIZE, align 4
  %146 = load i8*, i8** %12, align 8
  %147 = call i64 %142(%struct.TYPE_8__* %143, i32 %144, i32 %145, i8* %146)
  %148 = load i64, i64* @GRUB_ERR_NONE, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %248

150:                                              ; preds = %137, %129
  %151 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %151, i64* @grub_errno, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load i32, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  %156 = load i64, i64* @GRUB_DISK_SECTOR_SIZE, align 8
  %157 = add nsw i64 %155, %156
  %158 = sub nsw i64 %157, 1
  %159 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %160 = zext i32 %159 to i64
  %161 = ashr i64 %158, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %18, align 4
  %163 = load i8*, i8** %12, align 8
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %166 = shl i32 %164, %165
  %167 = call i8* @grub_realloc(i8* %163, i32 %166)
  store i8* %167, i8** %19, align 8
  %168 = load i8*, i8** %19, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %150
  br label %335

171:                                              ; preds = %150
  %172 = load i8*, i8** %19, align 8
  store i8* %172, i8** %12, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i64 (%struct.TYPE_8__*, i32, i32, i8*)*, i64 (%struct.TYPE_8__*, i32, i32, i8*)** %176, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i8*, i8** %12, align 8
  %182 = call i64 %177(%struct.TYPE_8__* %178, i32 %179, i32 %180, i8* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %171
  %185 = call i32 (...) @grub_error_push()
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = call i32 (i8*, i8*, i64, ...) @grub_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %189)
  %191 = call i32 (...) @grub_error_pop()
  br label %335

192:                                              ; preds = %171
  %193 = load i8*, i8** %11, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = load i8*, i8** %11, align 8
  %197 = load i8*, i8** %12, align 8
  %198 = load i32, i32* %13, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i64, i64* %10, align 8
  %202 = call i32 @grub_memcpy(i8* %196, i8* %200, i64 %201)
  br label %203

203:                                              ; preds = %195, %192
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  %206 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** %205, align 8
  %207 = icmp ne i32 (i32, i32, i64, i32)* %206, null
  br i1 %207, label %208, label %247

208:                                              ; preds = %203
  br label %209

209:                                              ; preds = %240, %208
  %210 = load i64, i64* %10, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %246

212:                                              ; preds = %209
  %213 = load i64, i64* %10, align 8
  store i64 %213, i64* %20, align 8
  %214 = load i32, i32* %13, align 4
  %215 = zext i32 %214 to i64
  %216 = load i64, i64* %20, align 8
  %217 = add nsw i64 %215, %216
  %218 = load i64, i64* @GRUB_DISK_SECTOR_SIZE, align 8
  %219 = icmp sgt i64 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %212
  %221 = load i64, i64* @GRUB_DISK_SECTOR_SIZE, align 8
  %222 = load i32, i32* %13, align 4
  %223 = zext i32 %222 to i64
  %224 = sub nsw i64 %221, %223
  store i64 %224, i64* %20, align 8
  br label %225

225:                                              ; preds = %220, %212
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i64, i64* %20, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 %228(i32 %229, i32 %230, i64 %231, i32 %234)
  %236 = load i64, i64* @grub_errno, align 8
  %237 = load i64, i64* @GRUB_ERR_NONE, align 8
  %238 = icmp ne i64 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %225
  br label %335

240:                                              ; preds = %225
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  %243 = load i64, i64* %20, align 8
  %244 = load i64, i64* %10, align 8
  %245 = sub nsw i64 %244, %243
  store i64 %245, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %209

246:                                              ; preds = %209
  br label %247

247:                                              ; preds = %246, %203
  br label %335

248:                                              ; preds = %137
  %249 = load i8*, i8** %11, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %261

251:                                              ; preds = %248
  %252 = load i8*, i8** %11, align 8
  %253 = load i8*, i8** %12, align 8
  %254 = load i64, i64* %17, align 8
  %255 = getelementptr inbounds i8, i8* %253, i64 %254
  %256 = load i32, i32* %13, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i64, i64* %16, align 8
  %260 = call i32 @grub_memcpy(i8* %252, i8* %258, i64 %259)
  br label %261

261:                                              ; preds = %251, %248
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %15, align 4
  %271 = load i8*, i8** %12, align 8
  %272 = call i32 @grub_disk_cache_store(i32 %266, i32 %269, i32 %270, i8* %271)
  br label %273

273:                                              ; preds = %261, %118
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 2
  %276 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** %275, align 8
  %277 = icmp ne i32 (i32, i32, i64, i32)* %276, null
  br i1 %277, label %278, label %320

278:                                              ; preds = %273
  %279 = load i32, i32* %8, align 4
  store i32 %279, i32* %21, align 4
  %280 = load i64, i64* %16, align 8
  store i64 %280, i64* %22, align 8
  br label %281

281:                                              ; preds = %310, %278
  %282 = load i64, i64* %22, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %319

284:                                              ; preds = %281
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 2
  %287 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** %286, align 8
  %288 = load i32, i32* %21, align 4
  %289 = load i32, i32* %13, align 4
  %290 = load i64, i64* %22, align 8
  %291 = load i64, i64* @GRUB_DISK_SECTOR_SIZE, align 8
  %292 = icmp sgt i64 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %284
  %294 = load i64, i64* @GRUB_DISK_SECTOR_SIZE, align 8
  br label %297

295:                                              ; preds = %284
  %296 = load i64, i64* %22, align 8
  br label %297

297:                                              ; preds = %295, %293
  %298 = phi i64 [ %294, %293 ], [ %296, %295 ]
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 %287(i32 %288, i32 %289, i64 %298, i32 %301)
  %303 = load i64, i64* %22, align 8
  %304 = load i64, i64* @GRUB_DISK_SECTOR_SIZE, align 8
  %305 = load i32, i32* %13, align 4
  %306 = zext i32 %305 to i64
  %307 = sub nsw i64 %304, %306
  %308 = icmp slt i64 %303, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %297
  br label %319

310:                                              ; preds = %297
  %311 = load i32, i32* %21, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %21, align 4
  %313 = load i64, i64* @GRUB_DISK_SECTOR_SIZE, align 8
  %314 = load i32, i32* %13, align 4
  %315 = zext i32 %314 to i64
  %316 = sub nsw i64 %313, %315
  %317 = load i64, i64* %22, align 8
  %318 = sub nsw i64 %317, %316
  store i64 %318, i64* %22, align 8
  store i32 0, i32* %13, align 4
  br label %281

319:                                              ; preds = %309, %281
  br label %320

320:                                              ; preds = %319, %273
  %321 = load i32, i32* %15, align 4
  %322 = load i32, i32* @GRUB_DISK_CACHE_SIZE, align 4
  %323 = add nsw i32 %321, %322
  store i32 %323, i32* %8, align 4
  %324 = load i8*, i8** %11, align 8
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %330

326:                                              ; preds = %320
  %327 = load i8*, i8** %11, align 8
  %328 = load i64, i64* %16, align 8
  %329 = getelementptr inbounds i8, i8* %327, i64 %328
  store i8* %329, i8** %11, align 8
  br label %330

330:                                              ; preds = %326, %320
  %331 = load i64, i64* %16, align 8
  %332 = load i64, i64* %10, align 8
  %333 = sub nsw i64 %332, %331
  store i64 %333, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %53

334:                                              ; preds = %53
  br label %335

335:                                              ; preds = %334, %247, %239, %184, %170, %106
  %336 = load i8*, i8** %12, align 8
  %337 = call i32 @grub_free(i8* %336)
  %338 = load i64, i64* @grub_errno, align 8
  store i64 %338, i64* %6, align 8
  br label %339

339:                                              ; preds = %335, %50, %34, %26
  %340 = load i64, i64* %6, align 8
  ret i64 %340
}

declare dso_local i64 @grub_disk_adjust_range(%struct.TYPE_8__*, i32*, i32*, i64) #1

declare dso_local i32 @grub_error_push(...) #1

declare dso_local i32 @grub_dprintf(i8*, i8*, i64, ...) #1

declare dso_local i32 @grub_error_pop(...) #1

declare dso_local i8* @grub_malloc(i64) #1

declare dso_local i8* @grub_disk_cache_fetch(i32, i32, i32) #1

declare dso_local i32 @grub_memcpy(i8*, i8*, i64) #1

declare dso_local i32 @grub_disk_cache_unlock(i32, i32, i32) #1

declare dso_local i8* @grub_realloc(i8*, i32) #1

declare dso_local i32 @grub_disk_cache_store(i32, i32, i32, i8*) #1

declare dso_local i32 @grub_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
