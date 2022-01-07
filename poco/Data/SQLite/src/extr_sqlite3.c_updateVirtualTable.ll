; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_updateVirtualTable.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_updateVirtualTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32*, i32* }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_28__ = type { i32, i32* }

@OP_OpenEphemeral = common dso_local global i32 0, align 4
@WHERE_ONEPASS_DESIRED = common dso_local global i32 0, align 4
@OP_VColumn = common dso_local global i32 0, align 4
@OPFLAG_NOCHNG = common dso_local global i32 0, align 4
@OP_Rowid = common dso_local global i32 0, align 4
@OP_SCopy = common dso_local global i32 0, align 4
@ONEPASS_OFF = common dso_local global i32 0, align 4
@ONEPASS_SINGLE = common dso_local global i32 0, align 4
@OP_Close = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_VUpdate = common dso_local global i32 0, align 4
@P4_VTAB = common dso_local global i32 0, align 4
@OE_Default = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OPFLAG_NOCHNG_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_29__*, i32*, i32*, i32*, i32)* @updateVirtualTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateVirtualTable(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2, %struct.TYPE_29__* %3, i32* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [2 x i32], align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_28__*, align 8
  %32 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %17, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %20, align 8
  %39 = load i32*, i32** %20, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %41 = call i64 @sqlite3GetVTable(i32* %39, %struct.TYPE_25__* %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %21, align 8
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 2, %45
  store i32 %46, i32* %23, align 4
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %27, align 4
  %53 = load i32*, i32** %17, align 8
  %54 = ptrtoint i32* %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  store i32 %58, i32* %18, align 4
  %60 = load i32*, i32** %17, align 8
  %61 = load i32, i32* @OP_OpenEphemeral, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %23, align 4
  %64 = call i32 @sqlite3VdbeAddOp2(i32* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %30, align 4
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %24, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  store i32 %77, i32* %25, align 4
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  store i32 %81, i32* %26, align 4
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* @WHERE_ONEPASS_DESIRED, align 4
  %86 = call i32* @sqlite3WhereBegin(%struct.TYPE_27__* %82, %struct.TYPE_26__* %83, i32* %84, i32 0, i32 0, i32 %85, i32 0)
  store i32* %86, i32** %22, align 8
  %87 = load i32*, i32** %22, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %8
  br label %320

90:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  br label %91

91:                                               ; preds = %137, %90
  %92 = load i32, i32* %19, align 4
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %140

97:                                               ; preds = %91
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %97
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %24, align 4
  %119 = add nsw i32 %118, 2
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i32 @sqlite3ExprCode(%struct.TYPE_27__* %105, i32* %117, i32 %121)
  br label %136

123:                                              ; preds = %97
  %124 = load i32*, i32** %17, align 8
  %125 = load i32, i32* @OP_VColumn, align 4
  %126 = load i32, i32* %27, align 4
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %24, align 4
  %129 = add nsw i32 %128, 2
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %129, %130
  %132 = call i32 @sqlite3VdbeAddOp3(i32* %124, i32 %125, i32 %126, i32 %127, i32 %131)
  %133 = load i32*, i32** %17, align 8
  %134 = load i32, i32* @OPFLAG_NOCHNG, align 4
  %135 = call i32 @sqlite3VdbeChangeP5(i32* %133, i32 %134)
  br label %136

136:                                              ; preds = %123, %104
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %19, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %19, align 4
  br label %91

140:                                              ; preds = %91
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %142 = call i64 @HasRowid(%struct.TYPE_25__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %166

144:                                              ; preds = %140
  %145 = load i32*, i32** %17, align 8
  %146 = load i32, i32* @OP_Rowid, align 4
  %147 = load i32, i32* %27, align 4
  %148 = load i32, i32* %24, align 4
  %149 = call i32 @sqlite3VdbeAddOp2(i32* %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32*, i32** %13, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* %24, align 4
  %156 = add nsw i32 %155, 1
  %157 = call i32 @sqlite3ExprCode(%struct.TYPE_27__* %153, i32* %154, i32 %156)
  br label %165

158:                                              ; preds = %144
  %159 = load i32*, i32** %17, align 8
  %160 = load i32, i32* @OP_Rowid, align 4
  %161 = load i32, i32* %27, align 4
  %162 = load i32, i32* %24, align 4
  %163 = add nsw i32 %162, 1
  %164 = call i32 @sqlite3VdbeAddOp2(i32* %159, i32 %160, i32 %161, i32 %163)
  br label %165

165:                                              ; preds = %158, %152
  br label %199

166:                                              ; preds = %140
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %168 = call %struct.TYPE_28__* @sqlite3PrimaryKeyIndex(%struct.TYPE_25__* %167)
  store %struct.TYPE_28__* %168, %struct.TYPE_28__** %31, align 8
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  %170 = icmp ne %struct.TYPE_28__* %169, null
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 1
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %32, align 4
  %184 = load i32*, i32** %17, align 8
  %185 = load i32, i32* @OP_VColumn, align 4
  %186 = load i32, i32* %27, align 4
  %187 = load i32, i32* %32, align 4
  %188 = load i32, i32* %24, align 4
  %189 = call i32 @sqlite3VdbeAddOp3(i32* %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32*, i32** %17, align 8
  %191 = load i32, i32* @OP_SCopy, align 4
  %192 = load i32, i32* %24, align 4
  %193 = add nsw i32 %192, 2
  %194 = load i32, i32* %32, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32, i32* %24, align 4
  %197 = add nsw i32 %196, 1
  %198 = call i32 @sqlite3VdbeAddOp2(i32* %190, i32 %191, i32 %195, i32 %197)
  br label %199

199:                                              ; preds = %166, %165
  %200 = load i32*, i32** %22, align 8
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %202 = call i32 @sqlite3WhereOkOnePass(i32* %200, i32* %201)
  store i32 %202, i32* %29, align 4
  %203 = load i32, i32* %29, align 4
  %204 = load i32, i32* @ONEPASS_OFF, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %199
  %207 = load i32, i32* %29, align 4
  %208 = load i32, i32* @ONEPASS_SINGLE, align 4
  %209 = icmp eq i32 %207, %208
  br label %210

210:                                              ; preds = %206, %199
  %211 = phi i1 [ true, %199 ], [ %209, %206 ]
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load i32, i32* %29, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %210
  %217 = load i32*, i32** %17, align 8
  %218 = load i32, i32* %30, align 4
  %219 = call i32 @sqlite3VdbeChangeToNoop(i32* %217, i32 %218)
  %220 = load i32*, i32** %17, align 8
  %221 = load i32, i32* @OP_Close, align 4
  %222 = load i32, i32* %27, align 4
  %223 = call i32 @sqlite3VdbeAddOp1(i32* %220, i32 %221, i32 %222)
  br label %244

224:                                              ; preds = %210
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %226 = call i32 @sqlite3MultiWrite(%struct.TYPE_27__* %225)
  %227 = load i32*, i32** %17, align 8
  %228 = load i32, i32* @OP_MakeRecord, align 4
  %229 = load i32, i32* %24, align 4
  %230 = load i32, i32* %23, align 4
  %231 = load i32, i32* %25, align 4
  %232 = call i32 @sqlite3VdbeAddOp3(i32* %227, i32 %228, i32 %229, i32 %230, i32 %231)
  %233 = load i32*, i32** %17, align 8
  %234 = load i32, i32* @OP_NewRowid, align 4
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* %26, align 4
  %237 = call i32 @sqlite3VdbeAddOp2(i32* %233, i32 %234, i32 %235, i32 %236)
  %238 = load i32*, i32** %17, align 8
  %239 = load i32, i32* @OP_Insert, align 4
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* %25, align 4
  %242 = load i32, i32* %26, align 4
  %243 = call i32 @sqlite3VdbeAddOp3(i32* %238, i32 %239, i32 %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %224, %216
  %245 = load i32, i32* %29, align 4
  %246 = load i32, i32* @ONEPASS_OFF, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %274

248:                                              ; preds = %244
  %249 = load i32*, i32** %22, align 8
  %250 = call i32 @sqlite3WhereEnd(i32* %249)
  %251 = load i32*, i32** %17, align 8
  %252 = load i32, i32* @OP_Rewind, align 4
  %253 = load i32, i32* %18, align 4
  %254 = call i32 @sqlite3VdbeAddOp1(i32* %251, i32 %252, i32 %253)
  store i32 %254, i32* %30, align 4
  %255 = load i32*, i32** %17, align 8
  %256 = call i32 @VdbeCoverage(i32* %255)
  store i32 0, i32* %19, align 4
  br label %257

257:                                              ; preds = %270, %248
  %258 = load i32, i32* %19, align 4
  %259 = load i32, i32* %23, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %273

261:                                              ; preds = %257
  %262 = load i32*, i32** %17, align 8
  %263 = load i32, i32* @OP_Column, align 4
  %264 = load i32, i32* %18, align 4
  %265 = load i32, i32* %19, align 4
  %266 = load i32, i32* %24, align 4
  %267 = load i32, i32* %19, align 4
  %268 = add nsw i32 %266, %267
  %269 = call i32 @sqlite3VdbeAddOp3(i32* %262, i32 %263, i32 %264, i32 %265, i32 %268)
  br label %270

270:                                              ; preds = %261
  %271 = load i32, i32* %19, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %19, align 4
  br label %257

273:                                              ; preds = %257
  br label %274

274:                                              ; preds = %273, %244
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %277 = call i32 @sqlite3VtabMakeWritable(%struct.TYPE_27__* %275, %struct.TYPE_25__* %276)
  %278 = load i32*, i32** %17, align 8
  %279 = load i32, i32* @OP_VUpdate, align 4
  %280 = load i32, i32* %23, align 4
  %281 = load i32, i32* %24, align 4
  %282 = load i8*, i8** %21, align 8
  %283 = load i32, i32* @P4_VTAB, align 4
  %284 = call i32 @sqlite3VdbeAddOp4(i32* %278, i32 %279, i32 0, i32 %280, i32 %281, i8* %282, i32 %283)
  %285 = load i32*, i32** %17, align 8
  %286 = load i32, i32* %16, align 4
  %287 = load i32, i32* @OE_Default, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %291

289:                                              ; preds = %274
  %290 = load i32, i32* @OE_Abort, align 4
  br label %293

291:                                              ; preds = %274
  %292 = load i32, i32* %16, align 4
  br label %293

293:                                              ; preds = %291, %289
  %294 = phi i32 [ %290, %289 ], [ %292, %291 ]
  %295 = call i32 @sqlite3VdbeChangeP5(i32* %285, i32 %294)
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %297 = call i32 @sqlite3MayAbort(%struct.TYPE_27__* %296)
  %298 = load i32, i32* %29, align 4
  %299 = load i32, i32* @ONEPASS_OFF, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %293
  %302 = load i32*, i32** %17, align 8
  %303 = load i32, i32* @OP_Next, align 4
  %304 = load i32, i32* %18, align 4
  %305 = load i32, i32* %30, align 4
  %306 = add nsw i32 %305, 1
  %307 = call i32 @sqlite3VdbeAddOp2(i32* %302, i32 %303, i32 %304, i32 %306)
  %308 = load i32*, i32** %17, align 8
  %309 = call i32 @VdbeCoverage(i32* %308)
  %310 = load i32*, i32** %17, align 8
  %311 = load i32, i32* %30, align 4
  %312 = call i32 @sqlite3VdbeJumpHere(i32* %310, i32 %311)
  %313 = load i32*, i32** %17, align 8
  %314 = load i32, i32* @OP_Close, align 4
  %315 = load i32, i32* %18, align 4
  %316 = call i32 @sqlite3VdbeAddOp2(i32* %313, i32 %314, i32 %315, i32 0)
  br label %320

317:                                              ; preds = %293
  %318 = load i32*, i32** %22, align 8
  %319 = call i32 @sqlite3WhereEnd(i32* %318)
  br label %320

320:                                              ; preds = %89, %317, %301
  ret void
}

declare dso_local i64 @sqlite3GetVTable(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32* @sqlite3WhereBegin(%struct.TYPE_27__*, %struct.TYPE_26__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i64 @HasRowid(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_28__* @sqlite3PrimaryKeyIndex(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3WhereOkOnePass(i32*, i32*) #1

declare dso_local i32 @sqlite3VdbeChangeToNoop(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3MultiWrite(%struct.TYPE_27__*) #1

declare dso_local i32 @sqlite3WhereEnd(i32*) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VtabMakeWritable(%struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_27__*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
