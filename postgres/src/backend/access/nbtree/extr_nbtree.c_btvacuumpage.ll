; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c_btvacuumpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtree.c_btvacuumpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i32, i32, i32, i8*, i64 (i32*, i8*)*, %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@P_NONE = common dso_local global i64 0, align 8
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BT_READ = common dso_local global i32 0, align 4
@MaxOffsetNumber = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@BTP_SPLIT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i64, i64)* @btvacuumpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btvacuumpage(%struct.TYPE_18__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64 (i32*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_16__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 9
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %7, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %8, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 7
  %35 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %34, align 8
  store i64 (i32*, i8*)* %35, i64 (i32*, i8*)** %9, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 6
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %10, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %16, align 8
  br label %42

42:                                               ; preds = %373, %3
  store i32 0, i32* %12, align 4
  %43 = load i64, i64* @P_NONE, align 8
  store i64 %43, i64* %13, align 8
  %44 = call i32 (...) @vacuum_delay_point()
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @MAIN_FORKNUM, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* @RBM_NORMAL, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ReadBufferExtended(i32 %45, i32 %46, i64 %47, i32 %48, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @BT_READ, align 4
  %55 = call i32 @LockBuffer(i32 %53, i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @BufferGetPage(i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @PageIsNew(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %42
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @_bt_checkpage(i32 %62, i32 %63)
  %65 = load i32, i32* %15, align 4
  %66 = call i64 @PageGetSpecialPointer(i32 %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %67, %struct.TYPE_19__** %16, align 8
  br label %68

68:                                               ; preds = %61, %42
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  %73 = load i32, i32* %15, align 4
  %74 = call i64 @_bt_page_recyclable(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %78 = call i64 @P_IGNORE(%struct.TYPE_19__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %82 = call i64 @P_ISLEAF(%struct.TYPE_19__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84, %80, %76, %72
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @_bt_relbuf(i32 %93, i32 %94)
  br label %375

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %68
  %98 = load i32, i32* %15, align 4
  %99 = call i64 @_bt_page_recyclable(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @RecordFreeIndexPage(i32 %102, i64 %103)
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %317

113:                                              ; preds = %97
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %115 = call i64 @P_ISDELETED(%struct.TYPE_19__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %113
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @TransactionIdIsValid(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %117
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @TransactionIdPrecedes(i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %127, %117
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %137, %127
  br label %316

145:                                              ; preds = %113
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %147 = call i64 @P_ISHALFDEAD(%struct.TYPE_19__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i32 1, i32* %12, align 4
  br label %315

150:                                              ; preds = %145
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %152 = call i64 @P_ISLEAF(%struct.TYPE_19__* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %314

154:                                              ; preds = %150
  %155 = load i32, i32* @MaxOffsetNumber, align 4
  %156 = zext i32 %155 to i64
  %157 = call i8* @llvm.stacksave()
  store i8* %157, i8** %17, align 8
  %158 = alloca i64, i64 %156, align 16
  store i64 %156, i64* %18, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %161 = call i32 @LockBuffer(i32 %159, i32 %160)
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @LockBufferForCleanup(i32 %162)
  %164 = load i64, i64* %5, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %164, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %154
  %170 = load i64, i64* %5, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %169, %154
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %207

178:                                              ; preds = %173
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %181, %184
  br i1 %185, label %186, label %207

186:                                              ; preds = %178
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @BTP_SPLIT_END, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %207, label %193

193:                                              ; preds = %186
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %195 = call i32 @P_RIGHTMOST(%struct.TYPE_19__* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %193
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %6, align 8
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %13, align 8
  br label %207

207:                                              ; preds = %203, %197, %193, %186, %178, %173
  store i32 0, i32* %19, align 4
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %209 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_19__* %208)
  store i64 %209, i64* %21, align 8
  %210 = load i32, i32* %15, align 4
  %211 = call i64 @PageGetMaxOffsetNumber(i32 %210)
  store i64 %211, i64* %22, align 8
  %212 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %9, align 8
  %213 = icmp ne i64 (i32*, i8*)* %212, null
  br i1 %213, label %214, label %245

214:                                              ; preds = %207
  %215 = load i64, i64* %21, align 8
  store i64 %215, i64* %20, align 8
  br label %216

216:                                              ; preds = %241, %214
  %217 = load i64, i64* %20, align 8
  %218 = load i64, i64* %22, align 8
  %219 = icmp sle i64 %217, %218
  br i1 %219, label %220, label %244

220:                                              ; preds = %216
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %15, align 4
  %223 = load i64, i64* %20, align 8
  %224 = call i32 @PageGetItemId(i32 %222, i64 %223)
  %225 = call i64 @PageGetItem(i32 %221, i32 %224)
  %226 = inttoptr i64 %225 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %226, %struct.TYPE_16__** %23, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  store i32* %228, i32** %24, align 8
  %229 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %9, align 8
  %230 = load i32*, i32** %24, align 8
  %231 = load i8*, i8** %10, align 8
  %232 = call i64 %229(i32* %230, i8* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %220
  %235 = load i64, i64* %20, align 8
  %236 = load i32, i32* %19, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %19, align 4
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i64, i64* %158, i64 %238
  store i64 %235, i64* %239, align 8
  br label %240

240:                                              ; preds = %234, %220
  br label %241

241:                                              ; preds = %240
  %242 = load i64, i64* %20, align 8
  %243 = call i64 @OffsetNumberNext(i64 %242)
  store i64 %243, i64* %20, align 8
  br label %216

244:                                              ; preds = %216
  br label %245

245:                                              ; preds = %244, %207
  %246 = load i32, i32* %19, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %273

248:                                              ; preds = %245
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* %19, align 4
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @_bt_delitems_vacuum(i32 %249, i32 %250, i64* %158, i32 %251, i64 %254)
  %256 = load i64, i64* %5, align 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = icmp sgt i64 %256, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %248
  %262 = load i64, i64* %5, align 8
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 2
  store i64 %262, i64* %264, align 8
  br label %265

265:                                              ; preds = %261, %248
  %266 = load i32, i32* %19, align 4
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* %15, align 4
  %272 = call i64 @PageGetMaxOffsetNumber(i32 %271)
  store i64 %272, i64* %22, align 8
  br label %292

273:                                              ; preds = %245
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %291

278:                                              ; preds = %273
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp eq i64 %281, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %278
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  store i64 0, i64* %288, align 8
  %289 = load i32, i32* %14, align 4
  %290 = call i32 @MarkBufferDirtyHint(i32 %289, i32 1)
  br label %291

291:                                              ; preds = %286, %278, %273
  br label %292

292:                                              ; preds = %291, %265
  %293 = load i64, i64* %21, align 8
  %294 = load i64, i64* %22, align 8
  %295 = icmp sgt i64 %293, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %292
  %297 = load i64, i64* %5, align 8
  %298 = load i64, i64* %6, align 8
  %299 = icmp eq i64 %297, %298
  %300 = zext i1 %299 to i32
  store i32 %300, i32* %12, align 4
  br label %312

301:                                              ; preds = %292
  %302 = load i64, i64* %22, align 8
  %303 = load i64, i64* %21, align 8
  %304 = sub nsw i64 %302, %303
  %305 = add nsw i64 %304, 1
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %309, %305
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %307, align 4
  br label %312

312:                                              ; preds = %301, %296
  %313 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %313)
  br label %314

314:                                              ; preds = %312, %150
  br label %315

315:                                              ; preds = %314, %149
  br label %316

316:                                              ; preds = %315, %144
  br label %317

317:                                              ; preds = %316, %101
  %318 = load i32, i32* %12, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %365

320:                                              ; preds = %317
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @MemoryContextReset(i32 %323)
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @MemoryContextSwitchTo(i32 %327)
  store i32 %328, i32* %25, align 4
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* %14, align 4
  %331 = call i32 @_bt_pagedel(i32 %329, i32 %330)
  store i32 %331, i32* %26, align 4
  %332 = load i32, i32* %26, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %362

334:                                              ; preds = %320
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %336, align 4
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @TransactionIdIsValid(i32 %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %354

344:                                              ; preds = %334
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = call i64 @TransactionIdPrecedes(i32 %348, i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %344, %334
  %355 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 3
  store i32 %358, i32* %360, align 8
  br label %361

361:                                              ; preds = %354, %344
  br label %362

362:                                              ; preds = %361, %320
  %363 = load i32, i32* %25, align 4
  %364 = call i32 @MemoryContextSwitchTo(i32 %363)
  br label %369

365:                                              ; preds = %317
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* %14, align 4
  %368 = call i32 @_bt_relbuf(i32 %366, i32 %367)
  br label %369

369:                                              ; preds = %365, %362
  %370 = load i64, i64* %13, align 8
  %371 = load i64, i64* @P_NONE, align 8
  %372 = icmp ne i64 %370, %371
  br i1 %372, label %373, label %375

373:                                              ; preds = %369
  %374 = load i64, i64* %13, align 8
  store i64 %374, i64* %5, align 8
  br label %42

375:                                              ; preds = %92, %369
  ret void
}

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @PageIsNew(i32) #1

declare dso_local i32 @_bt_checkpage(i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @_bt_page_recyclable(i32) #1

declare dso_local i64 @P_IGNORE(%struct.TYPE_19__*) #1

declare dso_local i64 @P_ISLEAF(%struct.TYPE_19__*) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i32 @RecordFreeIndexPage(i32, i64) #1

declare dso_local i64 @P_ISDELETED(%struct.TYPE_19__*) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i64 @P_ISHALFDEAD(%struct.TYPE_19__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @LockBufferForCleanup(i32) #1

declare dso_local i32 @P_RIGHTMOST(%struct.TYPE_19__*) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_19__*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @_bt_delitems_vacuum(i32, i32, i64*, i32, i64) #1

declare dso_local i32 @MarkBufferDirtyHint(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @_bt_pagedel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
