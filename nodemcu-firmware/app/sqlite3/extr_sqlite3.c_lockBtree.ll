; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_lockBtree.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_lockBtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_12__*, i8*, i8*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOTADB = common dso_local global i32 0, align 4
@zMagicHeader = common dso_local global i8* null, align 8
@BTS_READ_ONLY = common dso_local global i32 0, align 4
@BTS_NO_WAL = common dso_local global i32 0, align 4
@SQLITE_DEFAULT_WAL_SYNCHRONOUS = common dso_local global i64 0, align 8
@SQLITE_DEFAULT_SYNCHRONOUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"@  \00", align 1
@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@SQLITE_RecoveryMode = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @lockBtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lockBtree(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sqlite3_mutex_held(i32 %15)
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 9
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = icmp eq %struct.TYPE_12__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @sqlite3PagerSharedLock(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %324

33:                                               ; preds = %1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = call i32 @btreeGetPage(%struct.TYPE_13__* %34, i32 1, %struct.TYPE_12__** %5, i32 0)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %324

41:                                               ; preds = %33
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 28
  %46 = call i32 @get4byte(i32* %45)
  store i32 %46, i32* %8, align 4
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @sqlite3PagerPagecount(i32 %49, i32* %7)
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %41
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 24
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 92
  %62 = call i64 (i32*, ...) @memcmp(i32* %57, i32* %61, i32 4)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53, %41
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %244

69:                                               ; preds = %66
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %11, align 8
  %73 = load i32, i32* @SQLITE_NOTADB, align 4
  store i32 %73, i32* %4, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i8*, i8** @zMagicHeader, align 8
  %76 = call i64 (i32*, ...) @memcmp(i32* %74, i8* %75, i32 16)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %318

79:                                               ; preds = %69
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 18
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @BTS_READ_ONLY, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 19
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 2
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %318

96:                                               ; preds = %90
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 19
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %131

101:                                              ; preds = %96
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @BTS_NO_WAL, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @sqlite3PagerOpenWal(i32 %111, i32* %12)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %318

117:                                              ; preds = %108
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = load i64, i64* @SQLITE_DEFAULT_WAL_SYNCHRONOUS, align 8
  %120 = add nsw i64 %119, 1
  %121 = call i32 @setDefaultSyncFlag(%struct.TYPE_13__* %118, i64 %120)
  %122 = load i32, i32* %12, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = call i32 @releasePage(%struct.TYPE_12__* %125)
  %127 = load i32, i32* @SQLITE_OK, align 4
  store i32 %127, i32* %2, align 4
  br label %324

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* @SQLITE_NOTADB, align 4
  store i32 %130, i32* %4, align 4
  br label %136

131:                                              ; preds = %101, %96
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = load i64, i64* @SQLITE_DEFAULT_SYNCHRONOUS, align 8
  %134 = add nsw i64 %133, 1
  %135 = call i32 @setDefaultSyncFlag(%struct.TYPE_13__* %132, i64 %134)
  br label %136

136:                                              ; preds = %131, %129
  %137 = load i32*, i32** %11, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 21
  %139 = call i64 (i32*, ...) @memcmp(i32* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %318

142:                                              ; preds = %136
  %143 = load i32*, i32** %11, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 16
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 8
  %147 = load i32*, i32** %11, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 17
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 16
  %151 = or i32 %146, %150
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %152, 1
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %142
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %9, align 4
  %163 = icmp sle i32 %162, 256
  br i1 %163, label %164, label %165

164:                                              ; preds = %161, %157, %142
  br label %318

165:                                              ; preds = %161
  %166 = load i32, i32* %9, align 4
  %167 = and i32 %166, 7
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = load i32*, i32** %11, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 20
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %171, %174
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %176, %179
  br i1 %180, label %181, label %202

181:                                              ; preds = %165
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %183 = call i32 @releasePage(%struct.TYPE_12__* %182)
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %191 = call i32 @freeTempSpace(%struct.TYPE_13__* %190)
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 13
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %10, align 4
  %199 = sub nsw i32 %197, %198
  %200 = call i32 @sqlite3PagerSetPagesize(i32 %194, i32* %196, i32 %199)
  store i32 %200, i32* %4, align 4
  %201 = load i32, i32* %4, align 4
  store i32 %201, i32* %2, align 4
  br label %324

202:                                              ; preds = %165
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 12
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @SQLITE_RecoveryMode, align 4
  %209 = and i32 %207, %208
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %202
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %7, align 4
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %216, i32* %4, align 4
  br label %318

217:                                              ; preds = %211, %202
  %218 = load i32, i32* %10, align 4
  %219 = icmp slt i32 %218, 480
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  br label %318

221:                                              ; preds = %217
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 8
  %228 = load i32*, i32** %11, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 52
  %230 = call i32 @get4byte(i32* %229)
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 1, i32 0
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 4
  %236 = load i32*, i32** %11, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 64
  %238 = call i32 @get4byte(i32* %237)
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 1, i32 0
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 4
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %221, %66
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %247, 12
  %249 = mul nsw i32 %248, 64
  %250 = sdiv i32 %249, 255
  %251 = sub nsw i32 %250, 23
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i8*
  %254 = ptrtoint i8* %253 to i32
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 5
  store i32 %254, i32* %256, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = sub nsw i32 %259, 12
  %261 = mul nsw i32 %260, 32
  %262 = sdiv i32 %261, 255
  %263 = sub nsw i32 %262, 23
  %264 = sext i32 %263 to i64
  %265 = inttoptr i64 %264 to i8*
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 11
  store i8* %265, i8** %267, align 8
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = sub nsw i32 %270, 35
  %272 = sext i32 %271 to i64
  %273 = inttoptr i64 %272 to i8*
  %274 = ptrtoint i8* %273 to i64
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 6
  store i64 %274, i64* %276, align 8
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = sub nsw i32 %279, 12
  %281 = mul nsw i32 %280, 32
  %282 = sdiv i32 %281, 255
  %283 = sub nsw i32 %282, 23
  %284 = sext i32 %283 to i64
  %285 = inttoptr i64 %284 to i8*
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 10
  store i8* %285, i8** %287, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = icmp sgt i32 %290, 127
  br i1 %291, label %292, label %295

292:                                              ; preds = %244
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 7
  store i32 127, i32* %294, align 8
  br label %301

295:                                              ; preds = %244
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 7
  store i32 %298, i32* %300, align 8
  br label %301

301:                                              ; preds = %295, %292
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, 23
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %307 = call i64 @MX_CELL_SIZE(%struct.TYPE_13__* %306)
  %308 = icmp sle i64 %305, %307
  %309 = zext i1 %308 to i32
  %310 = call i32 @assert(i32 %309)
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 9
  store %struct.TYPE_12__* %311, %struct.TYPE_12__** %313, align 8
  %314 = load i32, i32* %6, align 4
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 8
  store i32 %314, i32* %316, align 4
  %317 = load i32, i32* @SQLITE_OK, align 4
  store i32 %317, i32* %2, align 4
  br label %324

318:                                              ; preds = %220, %215, %164, %141, %116, %95, %78
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %320 = call i32 @releasePage(%struct.TYPE_12__* %319)
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 9
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %322, align 8
  %323 = load i32, i32* %4, align 4
  store i32 %323, i32* %2, align 4
  br label %324

324:                                              ; preds = %318, %301, %181, %124, %39, %31
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerSharedLock(i32) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_13__*, i32, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @sqlite3PagerPagecount(i32, i32*) #1

declare dso_local i64 @memcmp(i32*, ...) #1

declare dso_local i32 @sqlite3PagerOpenWal(i32, i32*) #1

declare dso_local i32 @setDefaultSyncFlag(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @releasePage(%struct.TYPE_12__*) #1

declare dso_local i32 @freeTempSpace(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3PagerSetPagesize(i32, i32*, i32) #1

declare dso_local i64 @MX_CELL_SIZE(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
