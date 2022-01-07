; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vdbeCommit.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vdbeCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (i32)*, %struct.TYPE_8__*, i32*, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@vdbeCommit.aMJNeeded = internal constant [6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 0], align 16
@PAGER_SYNCHRONOUS_OFF = common dso_local global i64 0, align 8
@SQLITE_CONSTRAINT_COMMITHOOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s-mjXXXXXX9XXz\00", align 1
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @vdbeCommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeCommit(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
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
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @sqlite3VtabSync(%struct.TYPE_9__* %28, i32* %29)
  store i32 %30, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %89, %2
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i1 [ false, %31 ], [ %40, %35 ]
  br i1 %42, label %43, label %92

43:                                               ; preds = %41
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i64 @sqlite3BtreeIsInTrans(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @sqlite3BtreeEnter(i32* %56)
  %58 = load i32*, i32** %10, align 8
  %59 = call i32* @sqlite3BtreePager(i32* %58)
  store i32* %59, i32** %11, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PAGER_SYNCHRONOUS_OFF, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %55
  %71 = load i32*, i32** %11, align 8
  %72 = call i64 @sqlite3PagerGetJournalMode(i32* %71)
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* @vdbeCommit.aMJNeeded, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 1
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %76, %70, %55
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @sqlite3PagerExclusiveLock(i32* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @sqlite3BtreeLeave(i32* %86)
  br label %88

88:                                               ; preds = %83, %43
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %31

92:                                               ; preds = %41
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @SQLITE_OK, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %488

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32 (i32)*, i32 (i32)** %103, align 8
  %105 = icmp ne i32 (i32)* %104, null
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32 (i32)*, i32 (i32)** %108, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 %109(i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* @SQLITE_CONSTRAINT_COMMITHOOK, align 4
  store i32 %117, i32* %3, align 4
  br label %488

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %101, %98
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i8* @sqlite3BtreeGetFilename(i32* %125)
  %127 = call i32 @sqlite3Strlen30(i8* %126)
  %128 = icmp eq i32 0, %127
  br i1 %128, label %132, label %129

129:                                              ; preds = %119
  %130 = load i32, i32* %7, align 4
  %131 = icmp sle i32 %130, 1
  br i1 %131, label %132, label %202

132:                                              ; preds = %129, %119
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %160, %132
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @SQLITE_OK, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br label %143

143:                                              ; preds = %137, %133
  %144 = phi i1 [ false, %133 ], [ %142, %137 ]
  br i1 %144, label %145, label %163

145:                                              ; preds = %143
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  store i32* %153, i32** %12, align 8
  %154 = load i32*, i32** %12, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %145
  %157 = load i32*, i32** %12, align 8
  %158 = call i32 @sqlite3BtreeCommitPhaseOne(i32* %157, i8* null)
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %156, %145
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %133

163:                                              ; preds = %143
  store i32 0, i32* %6, align 4
  br label %164

164:                                              ; preds = %191, %163
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @SQLITE_OK, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %169, %172
  br label %174

174:                                              ; preds = %168, %164
  %175 = phi i1 [ false, %164 ], [ %173, %168 ]
  br i1 %175, label %176, label %194

176:                                              ; preds = %174
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  store i32* %184, i32** %13, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %176
  %188 = load i32*, i32** %13, align 8
  %189 = call i32 @sqlite3BtreeCommitPhaseTwo(i32* %188, i32 0)
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %187, %176
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %164

194:                                              ; preds = %174
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @SQLITE_OK, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %200 = call i32 @sqlite3VtabCommit(%struct.TYPE_9__* %199)
  br label %201

201:                                              ; preds = %198, %194
  br label %486

202:                                              ; preds = %129
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  store i32* %205, i32** %14, align 8
  store i8* null, i8** %15, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = call i8* @sqlite3BtreeGetFilename(i32* %211)
  store i8* %212, i8** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %213 = load i8*, i8** %16, align 8
  %214 = call i32 @sqlite3Strlen30(i8* %213)
  store i32 %214, i32* %21, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %216 = load i8*, i8** %16, align 8
  %217 = call i8* @sqlite3MPrintf(%struct.TYPE_9__* %215, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %216)
  store i8* %217, i8** %15, align 8
  %218 = load i8*, i8** %15, align 8
  %219 = icmp eq i8* %218, null
  br i1 %219, label %220, label %222

220:                                              ; preds = %202
  %221 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %221, i32* %3, align 4
  br label %488

222:                                              ; preds = %202
  br label %223

223:                                              ; preds = %284, %222
  %224 = load i32, i32* %20, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %223
  %227 = load i32, i32* %20, align 4
  %228 = icmp sgt i32 %227, 100
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  %230 = load i32, i32* @SQLITE_FULL, align 4
  %231 = load i8*, i8** %15, align 8
  %232 = call i32 @sqlite3_log(i32 %230, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %231)
  %233 = load i32*, i32** %14, align 8
  %234 = load i8*, i8** %15, align 8
  %235 = call i32 @sqlite3OsDelete(i32* %233, i8* %234, i32 0)
  br label %286

236:                                              ; preds = %226
  %237 = load i32, i32* %20, align 4
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %243

239:                                              ; preds = %236
  %240 = load i32, i32* @SQLITE_FULL, align 4
  %241 = load i8*, i8** %15, align 8
  %242 = call i32 @sqlite3_log(i32 %240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %241)
  br label %243

243:                                              ; preds = %239, %236
  br label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244, %223
  %246 = load i32, i32* %20, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %20, align 4
  %248 = call i32 @sqlite3_randomness(i32 4, i32* %22)
  %249 = load i8*, i8** %15, align 8
  %250 = load i32, i32* %21, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i32, i32* %22, align 4
  %254 = ashr i32 %253, 8
  %255 = and i32 %254, 16777215
  %256 = load i32, i32* %22, align 4
  %257 = and i32 %256, 255
  %258 = call i32 @sqlite3_snprintf(i32 13, i8* %252, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %255, i32 %257)
  %259 = load i8*, i8** %15, align 8
  %260 = load i8*, i8** %15, align 8
  %261 = call i32 @sqlite3Strlen30(i8* %260)
  %262 = sub nsw i32 %261, 3
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %259, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 57
  %268 = zext i1 %267 to i32
  %269 = call i32 @assert(i32 %268)
  %270 = load i8*, i8** %16, align 8
  %271 = load i8*, i8** %15, align 8
  %272 = call i32 @sqlite3FileSuffix3(i8* %270, i8* %271)
  %273 = load i32*, i32** %14, align 8
  %274 = load i8*, i8** %15, align 8
  %275 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %276 = call i32 @sqlite3OsAccess(i32* %273, i8* %274, i32 %275, i32* %19)
  store i32 %276, i32* %8, align 4
  br label %277

277:                                              ; preds = %245
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* @SQLITE_OK, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  %282 = load i32, i32* %19, align 4
  %283 = icmp ne i32 %282, 0
  br label %284

284:                                              ; preds = %281, %277
  %285 = phi i1 [ false, %277 ], [ %283, %281 ]
  br i1 %285, label %223, label %286

286:                                              ; preds = %284, %229
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* @SQLITE_OK, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %301

290:                                              ; preds = %286
  %291 = load i32*, i32** %14, align 8
  %292 = load i8*, i8** %15, align 8
  %293 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %294 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %295 = or i32 %293, %294
  %296 = load i32, i32* @SQLITE_OPEN_EXCLUSIVE, align 4
  %297 = or i32 %295, %296
  %298 = load i32, i32* @SQLITE_OPEN_MASTER_JOURNAL, align 4
  %299 = or i32 %297, %298
  %300 = call i32 @sqlite3OsOpenMalloc(i32* %291, i8* %292, i32** %17, i32 %299, i32 0)
  store i32 %300, i32* %8, align 4
  br label %301

301:                                              ; preds = %290, %286
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* @SQLITE_OK, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %310

305:                                              ; preds = %301
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %307 = load i8*, i8** %15, align 8
  %308 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %306, i8* %307)
  %309 = load i32, i32* %8, align 4
  store i32 %309, i32* %3, align 4
  br label %488

310:                                              ; preds = %301
  store i32 0, i32* %6, align 4
  br label %311

311:                                              ; preds = %370, %310
  %312 = load i32, i32* %6, align 4
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %317, label %373

317:                                              ; preds = %311
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 2
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %319, align 8
  %321 = load i32, i32* %6, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  store i32* %325, i32** %23, align 8
  %326 = load i32*, i32** %23, align 8
  %327 = call i64 @sqlite3BtreeIsInTrans(i32* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %369

329:                                              ; preds = %317
  %330 = load i32*, i32** %23, align 8
  %331 = call i8* @sqlite3BtreeGetJournalname(i32* %330)
  store i8* %331, i8** %24, align 8
  %332 = load i8*, i8** %24, align 8
  %333 = icmp eq i8* %332, null
  br i1 %333, label %334, label %335

334:                                              ; preds = %329
  br label %370

335:                                              ; preds = %329
  %336 = load i8*, i8** %24, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 0
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp ne i32 %339, 0
  %341 = zext i1 %340 to i32
  %342 = call i32 @assert(i32 %341)
  %343 = load i32*, i32** %17, align 8
  %344 = load i8*, i8** %24, align 8
  %345 = load i8*, i8** %24, align 8
  %346 = call i32 @sqlite3Strlen30(i8* %345)
  %347 = add nsw i32 %346, 1
  %348 = load i32, i32* %18, align 4
  %349 = call i32 @sqlite3OsWrite(i32* %343, i8* %344, i32 %347, i32 %348)
  store i32 %349, i32* %8, align 4
  %350 = load i8*, i8** %24, align 8
  %351 = call i32 @sqlite3Strlen30(i8* %350)
  %352 = add nsw i32 %351, 1
  %353 = load i32, i32* %18, align 4
  %354 = add nsw i32 %353, %352
  store i32 %354, i32* %18, align 4
  %355 = load i32, i32* %8, align 4
  %356 = load i32, i32* @SQLITE_OK, align 4
  %357 = icmp ne i32 %355, %356
  br i1 %357, label %358, label %368

358:                                              ; preds = %335
  %359 = load i32*, i32** %17, align 8
  %360 = call i32 @sqlite3OsCloseFree(i32* %359)
  %361 = load i32*, i32** %14, align 8
  %362 = load i8*, i8** %15, align 8
  %363 = call i32 @sqlite3OsDelete(i32* %361, i8* %362, i32 0)
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %365 = load i8*, i8** %15, align 8
  %366 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %364, i8* %365)
  %367 = load i32, i32* %8, align 4
  store i32 %367, i32* %3, align 4
  br label %488

368:                                              ; preds = %335
  br label %369

369:                                              ; preds = %368, %317
  br label %370

370:                                              ; preds = %369, %334
  %371 = load i32, i32* %6, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %6, align 4
  br label %311

373:                                              ; preds = %311
  %374 = load i32*, i32** %17, align 8
  %375 = call i32 @sqlite3OsDeviceCharacteristics(i32* %374)
  %376 = load i32, i32* @SQLITE_IOCAP_SEQUENTIAL, align 4
  %377 = and i32 %375, %376
  %378 = icmp eq i32 0, %377
  br i1 %378, label %379, label %395

379:                                              ; preds = %373
  %380 = load i32, i32* @SQLITE_OK, align 4
  %381 = load i32*, i32** %17, align 8
  %382 = load i32, i32* @SQLITE_SYNC_NORMAL, align 4
  %383 = call i32 @sqlite3OsSync(i32* %381, i32 %382)
  store i32 %383, i32* %8, align 4
  %384 = icmp ne i32 %380, %383
  br i1 %384, label %385, label %395

385:                                              ; preds = %379
  %386 = load i32*, i32** %17, align 8
  %387 = call i32 @sqlite3OsCloseFree(i32* %386)
  %388 = load i32*, i32** %14, align 8
  %389 = load i8*, i8** %15, align 8
  %390 = call i32 @sqlite3OsDelete(i32* %388, i8* %389, i32 0)
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %392 = load i8*, i8** %15, align 8
  %393 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %391, i8* %392)
  %394 = load i32, i32* %8, align 4
  store i32 %394, i32* %3, align 4
  br label %488

395:                                              ; preds = %379, %373
  store i32 0, i32* %6, align 4
  br label %396

396:                                              ; preds = %424, %395
  %397 = load i32, i32* %8, align 4
  %398 = load i32, i32* @SQLITE_OK, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %406

400:                                              ; preds = %396
  %401 = load i32, i32* %6, align 4
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = icmp slt i32 %401, %404
  br label %406

406:                                              ; preds = %400, %396
  %407 = phi i1 [ false, %396 ], [ %405, %400 ]
  br i1 %407, label %408, label %427

408:                                              ; preds = %406
  %409 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i32 0, i32 2
  %411 = load %struct.TYPE_8__*, %struct.TYPE_8__** %410, align 8
  %412 = load i32, i32* %6, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i32 0, i32 1
  %416 = load i32*, i32** %415, align 8
  store i32* %416, i32** %25, align 8
  %417 = load i32*, i32** %25, align 8
  %418 = icmp ne i32* %417, null
  br i1 %418, label %419, label %423

419:                                              ; preds = %408
  %420 = load i32*, i32** %25, align 8
  %421 = load i8*, i8** %15, align 8
  %422 = call i32 @sqlite3BtreeCommitPhaseOne(i32* %420, i8* %421)
  store i32 %422, i32* %8, align 4
  br label %423

423:                                              ; preds = %419, %408
  br label %424

424:                                              ; preds = %423
  %425 = load i32, i32* %6, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %6, align 4
  br label %396

427:                                              ; preds = %406
  %428 = load i32*, i32** %17, align 8
  %429 = call i32 @sqlite3OsCloseFree(i32* %428)
  %430 = load i32, i32* %8, align 4
  %431 = load i32, i32* @SQLITE_BUSY, align 4
  %432 = icmp ne i32 %430, %431
  %433 = zext i1 %432 to i32
  %434 = call i32 @assert(i32 %433)
  %435 = load i32, i32* %8, align 4
  %436 = load i32, i32* @SQLITE_OK, align 4
  %437 = icmp ne i32 %435, %436
  br i1 %437, label %438, label %443

438:                                              ; preds = %427
  %439 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %440 = load i8*, i8** %15, align 8
  %441 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %439, i8* %440)
  %442 = load i32, i32* %8, align 4
  store i32 %442, i32* %3, align 4
  br label %488

443:                                              ; preds = %427
  %444 = load i32*, i32** %14, align 8
  %445 = load i8*, i8** %15, align 8
  %446 = call i32 @sqlite3OsDelete(i32* %444, i8* %445, i32 1)
  store i32 %446, i32* %8, align 4
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %448 = load i8*, i8** %15, align 8
  %449 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %447, i8* %448)
  store i8* null, i8** %15, align 8
  %450 = load i32, i32* %8, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %443
  %453 = load i32, i32* %8, align 4
  store i32 %453, i32* %3, align 4
  br label %488

454:                                              ; preds = %443
  %455 = call i32 (...) @disable_simulated_io_errors()
  %456 = call i32 (...) @sqlite3BeginBenignMalloc()
  store i32 0, i32* %6, align 4
  br label %457

457:                                              ; preds = %478, %454
  %458 = load i32, i32* %6, align 4
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = icmp slt i32 %458, %461
  br i1 %462, label %463, label %481

463:                                              ; preds = %457
  %464 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %464, i32 0, i32 2
  %466 = load %struct.TYPE_8__*, %struct.TYPE_8__** %465, align 8
  %467 = load i32, i32* %6, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %469, i32 0, i32 1
  %471 = load i32*, i32** %470, align 8
  store i32* %471, i32** %26, align 8
  %472 = load i32*, i32** %26, align 8
  %473 = icmp ne i32* %472, null
  br i1 %473, label %474, label %477

474:                                              ; preds = %463
  %475 = load i32*, i32** %26, align 8
  %476 = call i32 @sqlite3BtreeCommitPhaseTwo(i32* %475, i32 1)
  br label %477

477:                                              ; preds = %474, %463
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* %6, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %6, align 4
  br label %457

481:                                              ; preds = %457
  %482 = call i32 (...) @sqlite3EndBenignMalloc()
  %483 = call i32 (...) @enable_simulated_io_errors()
  %484 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %485 = call i32 @sqlite3VtabCommit(%struct.TYPE_9__* %484)
  br label %486

486:                                              ; preds = %481, %201
  %487 = load i32, i32* %8, align 4
  store i32 %487, i32* %3, align 4
  br label %488

488:                                              ; preds = %486, %452, %438, %385, %358, %305, %220, %116, %96
  %489 = load i32, i32* %3, align 4
  ret i32 %489
}

declare dso_local i32 @sqlite3VtabSync(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @sqlite3BtreeIsInTrans(i32*) #1

declare dso_local i32 @sqlite3BtreeEnter(i32*) #1

declare dso_local i32* @sqlite3BtreePager(i32*) #1

declare dso_local i64 @sqlite3PagerGetJournalMode(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3PagerExclusiveLock(i32*) #1

declare dso_local i32 @sqlite3BtreeLeave(i32*) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i8* @sqlite3BtreeGetFilename(i32*) #1

declare dso_local i32 @sqlite3BtreeCommitPhaseOne(i32*, i8*) #1

declare dso_local i32 @sqlite3BtreeCommitPhaseTwo(i32*, i32) #1

declare dso_local i32 @sqlite3VtabCommit(%struct.TYPE_9__*) #1

declare dso_local i8* @sqlite3MPrintf(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @sqlite3_log(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3OsDelete(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_randomness(i32, i32*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3FileSuffix3(i8*, i8*) #1

declare dso_local i32 @sqlite3OsAccess(i32*, i8*, i32, i32*) #1

declare dso_local i32 @sqlite3OsOpenMalloc(i32*, i8*, i32**, i32, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_9__*, i8*) #1

declare dso_local i8* @sqlite3BtreeGetJournalname(i32*) #1

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
