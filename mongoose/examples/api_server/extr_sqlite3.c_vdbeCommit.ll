; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_vdbeCommit.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_vdbeCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 (i32)*, %struct.TYPE_11__*, i32*, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CONSTRAINT_COMMITHOOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s-mjXXXXXX9XXz\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"MJ delete: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"MJ collide: %s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-mj%06X9%02X\00", align 1
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OPEN_EXCLUSIVE = common dso_local global i32 0, align 4
@SQLITE_OPEN_MASTER_JOURNAL = common dso_local global i32 0, align 4
@SQLITE_IOCAP_SEQUENTIAL = common dso_local global i32 0, align 4
@SQLITE_SYNC_NORMAL = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @vdbeCommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeCommit(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %7, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = call i32 @sqlite3VtabSync(%struct.TYPE_12__* %28, i32* %30)
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %71, %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SQLITE_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi i1 [ false, %32 ], [ %41, %36 ]
  br i1 %43, label %44, label %74

44:                                               ; preds = %42
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @sqlite3BtreeIsInTrans(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @sqlite3BtreeEnter(i32* %63)
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @sqlite3BtreePager(i32* %65)
  %67 = call i32 @sqlite3PagerExclusiveLock(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @sqlite3BtreeLeave(i32* %68)
  br label %70

70:                                               ; preds = %62, %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %32

74:                                               ; preds = %42
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @SQLITE_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %481

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32 (i32)*, i32 (i32)** %85, align 8
  %87 = icmp ne i32 (i32)* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32 (i32)*, i32 (i32)** %90, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %91(i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @SQLITE_CONSTRAINT_COMMITHOOK, align 4
  store i32 %99, i32* %3, align 4
  br label %481

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %83, %80
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i8* @sqlite3BtreeGetFilename(i32* %107)
  %109 = call i32 @sqlite3Strlen30(i8* %108)
  %110 = icmp eq i32 0, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %7, align 4
  %113 = icmp sle i32 %112, 1
  br i1 %113, label %114, label %184

114:                                              ; preds = %111, %101
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %142, %114
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @SQLITE_OK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br label %125

125:                                              ; preds = %119, %115
  %126 = phi i1 [ false, %115 ], [ %124, %119 ]
  br i1 %126, label %127, label %145

127:                                              ; preds = %125
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %11, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %127
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @sqlite3BtreeCommitPhaseOne(i32* %139, i8* null)
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %138, %127
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %115

145:                                              ; preds = %125
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %173, %145
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @SQLITE_OK, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br label %156

156:                                              ; preds = %150, %146
  %157 = phi i1 [ false, %146 ], [ %155, %150 ]
  br i1 %157, label %158, label %176

158:                                              ; preds = %156
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %12, align 8
  %167 = load i32*, i32** %12, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %158
  %170 = load i32*, i32** %12, align 8
  %171 = call i32 @sqlite3BtreeCommitPhaseTwo(i32* %170, i32 0)
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %169, %158
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %146

176:                                              ; preds = %156
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @SQLITE_OK, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %182 = call i32 @sqlite3VtabCommit(%struct.TYPE_12__* %181)
  br label %183

183:                                              ; preds = %180, %176
  br label %479

184:                                              ; preds = %111
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  store i32* %187, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = call i8* @sqlite3BtreeGetFilename(i32* %193)
  store i8* %194, i8** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %195 = load i8*, i8** %16, align 8
  %196 = call i32 @sqlite3Strlen30(i8* %195)
  store i32 %196, i32* %21, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %198 = load i8*, i8** %16, align 8
  %199 = call i8* @sqlite3MPrintf(%struct.TYPE_12__* %197, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %198)
  store i8* %199, i8** %15, align 8
  %200 = load i8*, i8** %15, align 8
  %201 = icmp eq i8* %200, null
  br i1 %201, label %202, label %204

202:                                              ; preds = %184
  %203 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %203, i32* %3, align 4
  br label %481

204:                                              ; preds = %184
  br label %205

205:                                              ; preds = %266, %204
  %206 = load i32, i32* %20, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %205
  %209 = load i32, i32* %20, align 4
  %210 = icmp sgt i32 %209, 100
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load i32, i32* @SQLITE_FULL, align 4
  %213 = load i8*, i8** %15, align 8
  %214 = call i32 @sqlite3_log(i32 %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %213)
  %215 = load i32*, i32** %13, align 8
  %216 = load i8*, i8** %15, align 8
  %217 = call i32 @sqlite3OsDelete(i32* %215, i8* %216, i32 0)
  br label %268

218:                                              ; preds = %208
  %219 = load i32, i32* %20, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load i32, i32* @SQLITE_FULL, align 4
  %223 = load i8*, i8** %15, align 8
  %224 = call i32 @sqlite3_log(i32 %222, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %223)
  br label %225

225:                                              ; preds = %221, %218
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226, %205
  %228 = load i32, i32* %20, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %20, align 4
  %230 = call i32 @sqlite3_randomness(i32 4, i32* %22)
  %231 = load i8*, i8** %15, align 8
  %232 = load i32, i32* %21, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = load i32, i32* %22, align 4
  %236 = ashr i32 %235, 8
  %237 = and i32 %236, 16777215
  %238 = load i32, i32* %22, align 4
  %239 = and i32 %238, 255
  %240 = call i32 @sqlite3_snprintf(i32 13, i8* %234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %237, i32 %239)
  %241 = load i8*, i8** %15, align 8
  %242 = load i8*, i8** %15, align 8
  %243 = call i32 @sqlite3Strlen30(i8* %242)
  %244 = sub nsw i32 %243, 3
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %241, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 57
  %250 = zext i1 %249 to i32
  %251 = call i32 @assert(i32 %250)
  %252 = load i8*, i8** %16, align 8
  %253 = load i8*, i8** %15, align 8
  %254 = call i32 @sqlite3FileSuffix3(i8* %252, i8* %253)
  %255 = load i32*, i32** %13, align 8
  %256 = load i8*, i8** %15, align 8
  %257 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %258 = call i32 @sqlite3OsAccess(i32* %255, i8* %256, i32 %257, i32* %19)
  store i32 %258, i32* %8, align 4
  br label %259

259:                                              ; preds = %227
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* @SQLITE_OK, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load i32, i32* %19, align 4
  %265 = icmp ne i32 %264, 0
  br label %266

266:                                              ; preds = %263, %259
  %267 = phi i1 [ false, %259 ], [ %265, %263 ]
  br i1 %267, label %205, label %268

268:                                              ; preds = %266, %211
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* @SQLITE_OK, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %283

272:                                              ; preds = %268
  %273 = load i32*, i32** %13, align 8
  %274 = load i8*, i8** %15, align 8
  %275 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %276 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* @SQLITE_OPEN_EXCLUSIVE, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @SQLITE_OPEN_MASTER_JOURNAL, align 4
  %281 = or i32 %279, %280
  %282 = call i32 @sqlite3OsOpenMalloc(i32* %273, i8* %274, i32** %17, i32 %281, i32 0)
  store i32 %282, i32* %8, align 4
  br label %283

283:                                              ; preds = %272, %268
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* @SQLITE_OK, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %289 = load i8*, i8** %15, align 8
  %290 = call i32 @sqlite3DbFree(%struct.TYPE_12__* %288, i8* %289)
  %291 = load i32, i32* %8, align 4
  store i32 %291, i32* %3, align 4
  br label %481

292:                                              ; preds = %283
  store i32 0, i32* %6, align 4
  br label %293

293:                                              ; preds = %360, %292
  %294 = load i32, i32* %6, align 4
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp slt i32 %294, %297
  br i1 %298, label %299, label %363

299:                                              ; preds = %293
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %301, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  store i32* %307, i32** %23, align 8
  %308 = load i32*, i32** %23, align 8
  %309 = call i64 @sqlite3BtreeIsInTrans(i32* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %359

311:                                              ; preds = %299
  %312 = load i32*, i32** %23, align 8
  %313 = call i8* @sqlite3BtreeGetJournalname(i32* %312)
  store i8* %313, i8** %24, align 8
  %314 = load i8*, i8** %24, align 8
  %315 = icmp eq i8* %314, null
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  br label %360

317:                                              ; preds = %311
  %318 = load i8*, i8** %24, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 0
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp ne i32 %321, 0
  %323 = zext i1 %322 to i32
  %324 = call i32 @assert(i32 %323)
  %325 = load i32, i32* %14, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %317
  %328 = load i32*, i32** %23, align 8
  %329 = call i32 @sqlite3BtreeSyncDisabled(i32* %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %332, label %331

331:                                              ; preds = %327
  store i32 1, i32* %14, align 4
  br label %332

332:                                              ; preds = %331, %327, %317
  %333 = load i32*, i32** %17, align 8
  %334 = load i8*, i8** %24, align 8
  %335 = load i8*, i8** %24, align 8
  %336 = call i32 @sqlite3Strlen30(i8* %335)
  %337 = add nsw i32 %336, 1
  %338 = load i32, i32* %18, align 4
  %339 = call i32 @sqlite3OsWrite(i32* %333, i8* %334, i32 %337, i32 %338)
  store i32 %339, i32* %8, align 4
  %340 = load i8*, i8** %24, align 8
  %341 = call i32 @sqlite3Strlen30(i8* %340)
  %342 = add nsw i32 %341, 1
  %343 = load i32, i32* %18, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %18, align 4
  %345 = load i32, i32* %8, align 4
  %346 = load i32, i32* @SQLITE_OK, align 4
  %347 = icmp ne i32 %345, %346
  br i1 %347, label %348, label %358

348:                                              ; preds = %332
  %349 = load i32*, i32** %17, align 8
  %350 = call i32 @sqlite3OsCloseFree(i32* %349)
  %351 = load i32*, i32** %13, align 8
  %352 = load i8*, i8** %15, align 8
  %353 = call i32 @sqlite3OsDelete(i32* %351, i8* %352, i32 0)
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %355 = load i8*, i8** %15, align 8
  %356 = call i32 @sqlite3DbFree(%struct.TYPE_12__* %354, i8* %355)
  %357 = load i32, i32* %8, align 4
  store i32 %357, i32* %3, align 4
  br label %481

358:                                              ; preds = %332
  br label %359

359:                                              ; preds = %358, %299
  br label %360

360:                                              ; preds = %359, %316
  %361 = load i32, i32* %6, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %6, align 4
  br label %293

363:                                              ; preds = %293
  %364 = load i32, i32* %14, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %388

366:                                              ; preds = %363
  %367 = load i32*, i32** %17, align 8
  %368 = call i32 @sqlite3OsDeviceCharacteristics(i32* %367)
  %369 = load i32, i32* @SQLITE_IOCAP_SEQUENTIAL, align 4
  %370 = and i32 %368, %369
  %371 = icmp eq i32 0, %370
  br i1 %371, label %372, label %388

372:                                              ; preds = %366
  %373 = load i32, i32* @SQLITE_OK, align 4
  %374 = load i32*, i32** %17, align 8
  %375 = load i32, i32* @SQLITE_SYNC_NORMAL, align 4
  %376 = call i32 @sqlite3OsSync(i32* %374, i32 %375)
  store i32 %376, i32* %8, align 4
  %377 = icmp ne i32 %373, %376
  br i1 %377, label %378, label %388

378:                                              ; preds = %372
  %379 = load i32*, i32** %17, align 8
  %380 = call i32 @sqlite3OsCloseFree(i32* %379)
  %381 = load i32*, i32** %13, align 8
  %382 = load i8*, i8** %15, align 8
  %383 = call i32 @sqlite3OsDelete(i32* %381, i8* %382, i32 0)
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %385 = load i8*, i8** %15, align 8
  %386 = call i32 @sqlite3DbFree(%struct.TYPE_12__* %384, i8* %385)
  %387 = load i32, i32* %8, align 4
  store i32 %387, i32* %3, align 4
  br label %481

388:                                              ; preds = %372, %366, %363
  store i32 0, i32* %6, align 4
  br label %389

389:                                              ; preds = %417, %388
  %390 = load i32, i32* %8, align 4
  %391 = load i32, i32* @SQLITE_OK, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %399

393:                                              ; preds = %389
  %394 = load i32, i32* %6, align 4
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = icmp slt i32 %394, %397
  br label %399

399:                                              ; preds = %393, %389
  %400 = phi i1 [ false, %389 ], [ %398, %393 ]
  br i1 %400, label %401, label %420

401:                                              ; preds = %399
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 2
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** %403, align 8
  %405 = load i32, i32* %6, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %407, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  store i32* %409, i32** %25, align 8
  %410 = load i32*, i32** %25, align 8
  %411 = icmp ne i32* %410, null
  br i1 %411, label %412, label %416

412:                                              ; preds = %401
  %413 = load i32*, i32** %25, align 8
  %414 = load i8*, i8** %15, align 8
  %415 = call i32 @sqlite3BtreeCommitPhaseOne(i32* %413, i8* %414)
  store i32 %415, i32* %8, align 4
  br label %416

416:                                              ; preds = %412, %401
  br label %417

417:                                              ; preds = %416
  %418 = load i32, i32* %6, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %6, align 4
  br label %389

420:                                              ; preds = %399
  %421 = load i32*, i32** %17, align 8
  %422 = call i32 @sqlite3OsCloseFree(i32* %421)
  %423 = load i32, i32* %8, align 4
  %424 = load i32, i32* @SQLITE_BUSY, align 4
  %425 = icmp ne i32 %423, %424
  %426 = zext i1 %425 to i32
  %427 = call i32 @assert(i32 %426)
  %428 = load i32, i32* %8, align 4
  %429 = load i32, i32* @SQLITE_OK, align 4
  %430 = icmp ne i32 %428, %429
  br i1 %430, label %431, label %436

431:                                              ; preds = %420
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %433 = load i8*, i8** %15, align 8
  %434 = call i32 @sqlite3DbFree(%struct.TYPE_12__* %432, i8* %433)
  %435 = load i32, i32* %8, align 4
  store i32 %435, i32* %3, align 4
  br label %481

436:                                              ; preds = %420
  %437 = load i32*, i32** %13, align 8
  %438 = load i8*, i8** %15, align 8
  %439 = call i32 @sqlite3OsDelete(i32* %437, i8* %438, i32 1)
  store i32 %439, i32* %8, align 4
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %441 = load i8*, i8** %15, align 8
  %442 = call i32 @sqlite3DbFree(%struct.TYPE_12__* %440, i8* %441)
  store i8* null, i8** %15, align 8
  %443 = load i32, i32* %8, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %436
  %446 = load i32, i32* %8, align 4
  store i32 %446, i32* %3, align 4
  br label %481

447:                                              ; preds = %436
  %448 = call i32 (...) @disable_simulated_io_errors()
  %449 = call i32 (...) @sqlite3BeginBenignMalloc()
  store i32 0, i32* %6, align 4
  br label %450

450:                                              ; preds = %471, %447
  %451 = load i32, i32* %6, align 4
  %452 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = icmp slt i32 %451, %454
  br i1 %455, label %456, label %474

456:                                              ; preds = %450
  %457 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %457, i32 0, i32 2
  %459 = load %struct.TYPE_11__*, %struct.TYPE_11__** %458, align 8
  %460 = load i32, i32* %6, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %462, i32 0, i32 0
  %464 = load i32*, i32** %463, align 8
  store i32* %464, i32** %26, align 8
  %465 = load i32*, i32** %26, align 8
  %466 = icmp ne i32* %465, null
  br i1 %466, label %467, label %470

467:                                              ; preds = %456
  %468 = load i32*, i32** %26, align 8
  %469 = call i32 @sqlite3BtreeCommitPhaseTwo(i32* %468, i32 1)
  br label %470

470:                                              ; preds = %467, %456
  br label %471

471:                                              ; preds = %470
  %472 = load i32, i32* %6, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %6, align 4
  br label %450

474:                                              ; preds = %450
  %475 = call i32 (...) @sqlite3EndBenignMalloc()
  %476 = call i32 (...) @enable_simulated_io_errors()
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %478 = call i32 @sqlite3VtabCommit(%struct.TYPE_12__* %477)
  br label %479

479:                                              ; preds = %474, %183
  %480 = load i32, i32* %8, align 4
  store i32 %480, i32* %3, align 4
  br label %481

481:                                              ; preds = %479, %445, %431, %378, %348, %287, %202, %98, %78
  %482 = load i32, i32* %3, align 4
  ret i32 %482
}

declare dso_local i32 @sqlite3VtabSync(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @sqlite3BtreeIsInTrans(i32*) #1

declare dso_local i32 @sqlite3BtreeEnter(i32*) #1

declare dso_local i32 @sqlite3PagerExclusiveLock(i32) #1

declare dso_local i32 @sqlite3BtreePager(i32*) #1

declare dso_local i32 @sqlite3BtreeLeave(i32*) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i8* @sqlite3BtreeGetFilename(i32*) #1

declare dso_local i32 @sqlite3BtreeCommitPhaseOne(i32*, i8*) #1

declare dso_local i32 @sqlite3BtreeCommitPhaseTwo(i32*, i32) #1

declare dso_local i32 @sqlite3VtabCommit(%struct.TYPE_12__*) #1

declare dso_local i8* @sqlite3MPrintf(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @sqlite3_log(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3OsDelete(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_randomness(i32, i32*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3FileSuffix3(i8*, i8*) #1

declare dso_local i32 @sqlite3OsAccess(i32*, i8*, i32, i32*) #1

declare dso_local i32 @sqlite3OsOpenMalloc(i32*, i8*, i32**, i32, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_12__*, i8*) #1

declare dso_local i8* @sqlite3BtreeGetJournalname(i32*) #1

declare dso_local i32 @sqlite3BtreeSyncDisabled(i32*) #1

declare dso_local i32 @sqlite3OsWrite(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3OsCloseFree(i32*) #1

declare dso_local i32 @sqlite3OsDeviceCharacteristics(i32*) #1

declare dso_local i32 @sqlite3OsSync(i32*, i32) #1

declare dso_local i32 @disable_simulated_io_errors(...) #1

declare dso_local i32 @sqlite3BeginBenignMalloc(...) #1

declare dso_local i32 @sqlite3EndBenignMalloc(...) #1

declare dso_local i32 @enable_simulated_io_errors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
