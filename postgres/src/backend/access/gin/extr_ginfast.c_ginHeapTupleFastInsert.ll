; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginfast.c_ginHeapTupleFastInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginfast.c_ginHeapTupleFastInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32, i64, %struct.TYPE_29__** }
%struct.TYPE_29__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_24__ = type { i32, i64, i64, i8, i32 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_26__ = type { i32 }

@InvalidBuffer = common dso_local global i64 0, align 8
@InvalidBlockNumber = common dso_local global i64 0, align 8
@GIN_METAPAGE_BLKNO = common dso_local global i64 0, align 8
@GinListPageSize = common dso_local global i64 0, align 8
@GIN_EXCLUSIVE = common dso_local global i32 0, align 4
@GIN_UNLOCK = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to add item to index page in \22%s\22\00", align 1
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@RM_GIN_ID = common dso_local global i32 0, align 4
@XLOG_GIN_UPDATE_META_PAGE = common dso_local global i32 0, align 4
@GIN_PAGE_FREESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ginHeapTupleFastInsert(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_29__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %8, align 8
  %27 = load i64, i64* @InvalidBuffer, align 8
  store i64 %27, i64* %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %420

33:                                               ; preds = %2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = call i32 @RelationNeedsWAL(%struct.TYPE_25__* %34)
  store i32 %35, i32* %15, align 4
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i64, i64* @InvalidBlockNumber, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 2
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %45 = load i64, i64* @GIN_METAPAGE_BLKNO, align 8
  %46 = call i64 @ReadBuffer(%struct.TYPE_25__* %44, i64 %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32* @BufferGetPage(i64 %47)
  store i32* %48, i32** %7, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @CheckForSerializableConflictIn(%struct.TYPE_25__* %49, i32* null, i64 %50)
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = add i64 %54, %59
  %61 = load i64, i64* @GinListPageSize, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %33
  store i32 1, i32* %12, align 4
  br label %94

64:                                               ; preds = %33
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %67 = call i32 @LockBuffer(i64 %65, i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = call %struct.TYPE_29__* @GinPageGetMeta(i32* %68)
  store %struct.TYPE_29__* %69, %struct.TYPE_29__** %8, align 8
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @InvalidBlockNumber, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %89, label %75

75:                                               ; preds = %64
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = add i64 %78, %83
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ugt i64 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %75, %64
  store i32 1, i32* %12, align 4
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* @GIN_UNLOCK, align 4
  %92 = call i32 @LockBuffer(i64 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %75
  br label %94

94:                                               ; preds = %93, %63
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %206

97:                                               ; preds = %94
  %98 = call i32 @memset(%struct.TYPE_29__* %16, i32 0, i32 40)
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %101, align 8
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @makeSublist(%struct.TYPE_25__* %99, %struct.TYPE_29__** %102, i32 %105, %struct.TYPE_29__* %16)
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = call i32 (...) @XLogBeginInsert()
  br label %111

111:                                              ; preds = %109, %97
  %112 = load i64, i64* %6, align 8
  %113 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %114 = call i32 @LockBuffer(i64 %112, i32 %113)
  %115 = load i32*, i32** %7, align 8
  %116 = call %struct.TYPE_29__* @GinPageGetMeta(i32* %115)
  store %struct.TYPE_29__* %116, %struct.TYPE_29__** %8, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @InvalidBlockNumber, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %111
  %123 = call i32 (...) @START_CRIT_SECTION()
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 4
  store i64 %141, i64* %143, align 8
  br label %205

144:                                              ; preds = %111
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 2
  store i64 %147, i64* %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  store i64 %150, i64* %151, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @ReadBuffer(%struct.TYPE_25__* %152, i64 %155)
  store i64 %156, i64* %9, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %159 = call i32 @LockBuffer(i64 %157, i32 %158)
  %160 = load i64, i64* %9, align 8
  %161 = call i32* @BufferGetPage(i64 %160)
  store i32* %161, i32** %10, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = call %struct.TYPE_23__* @GinPageGetOpaque(i32* %162)
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @InvalidBlockNumber, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @Assert(i32 %168)
  %170 = call i32 (...) @START_CRIT_SECTION()
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i32*, i32** %10, align 8
  %174 = call %struct.TYPE_23__* @GinPageGetOpaque(i32* %173)
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 0
  store i64 %172, i64* %175, align 8
  %176 = load i64, i64* %9, align 8
  %177 = call i32 @MarkBufferDirty(i64 %176)
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 2
  store i64 %179, i64* %181, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, %193
  store i64 %197, i64* %195, align 8
  %198 = load i32, i32* %15, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %144
  %201 = load i64, i64* %9, align 8
  %202 = load i32, i32* @REGBUF_STANDARD, align 4
  %203 = call i32 @XLogRegisterBuffer(i32 1, i64 %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %144
  br label %205

205:                                              ; preds = %204, %122
  br label %348

206:                                              ; preds = %94
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @ReadBuffer(%struct.TYPE_25__* %207, i64 %210)
  store i64 %211, i64* %9, align 8
  %212 = load i64, i64* %9, align 8
  %213 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %214 = call i32 @LockBuffer(i64 %212, i32 %213)
  %215 = load i64, i64* %9, align 8
  %216 = call i32* @BufferGetPage(i64 %215)
  store i32* %216, i32** %10, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = call i64 @PageIsEmpty(i32* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %206
  %221 = load i64, i64* @FirstOffsetNumber, align 8
  br label %226

222:                                              ; preds = %206
  %223 = load i32*, i32** %10, align 8
  %224 = call i32 @PageGetMaxOffsetNumber(i32* %223)
  %225 = call i64 @OffsetNumberNext(i32 %224)
  br label %226

226:                                              ; preds = %222, %220
  %227 = phi i64 [ %221, %220 ], [ %225, %222 ]
  store i64 %227, i64* %18, align 8
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @palloc(i64 %230)
  %232 = inttoptr i64 %231 to i8*
  store i8* %232, i8** %21, align 8
  store i8* %232, i8** %22, align 8
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  store i32 %235, i32* %236, align 8
  %237 = load i32, i32* %15, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %226
  %240 = call i32 (...) @XLogBeginInsert()
  br label %241

241:                                              ; preds = %239, %226
  %242 = call i32 (...) @START_CRIT_SECTION()
  %243 = load i32*, i32** %10, align 8
  %244 = call %struct.TYPE_23__* @GinPageGetOpaque(i32* %243)
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 4
  %249 = load i64, i64* %248, align 8
  %250 = icmp sle i64 %246, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @Assert(i32 %251)
  %253 = load i32*, i32** %10, align 8
  %254 = call %struct.TYPE_23__* @GinPageGetOpaque(i32* %253)
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %256, 1
  store i64 %257, i64* %255, align 8
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %258, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %260, 1
  store i64 %261, i64* %259, align 8
  store i32 0, i32* %19, align 4
  br label %262

262:                                              ; preds = %314, %241
  %263 = load i32, i32* %19, align 4
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %317

268:                                              ; preds = %262
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %270, align 8
  %272 = load i32, i32* %19, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %271, i64 %273
  %275 = load %struct.TYPE_29__*, %struct.TYPE_29__** %274, align 8
  %276 = call i32 @IndexTupleSize(%struct.TYPE_29__* %275)
  store i32 %276, i32* %20, align 4
  %277 = load i32*, i32** %10, align 8
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %279, align 8
  %281 = load i32, i32* %19, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %280, i64 %282
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %283, align 8
  %285 = ptrtoint %struct.TYPE_29__* %284 to i32
  %286 = load i32, i32* %20, align 4
  %287 = load i64, i64* %18, align 8
  %288 = call i64 @PageAddItem(i32* %277, i32 %285, i32 %286, i64 %287, i32 0, i32 0)
  store i64 %288, i64* %17, align 8
  %289 = load i64, i64* %17, align 8
  %290 = load i64, i64* @InvalidOffsetNumber, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %297

292:                                              ; preds = %268
  %293 = load i32, i32* @ERROR, align 4
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %295 = call i32 @RelationGetRelationName(%struct.TYPE_25__* %294)
  %296 = call i32 @elog(i32 %293, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %292, %268
  %298 = load i8*, i8** %21, align 8
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %300, align 8
  %302 = load i32, i32* %19, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %301, i64 %303
  %305 = load %struct.TYPE_29__*, %struct.TYPE_29__** %304, align 8
  %306 = load i32, i32* %20, align 4
  %307 = call i32 @memcpy(i8* %298, %struct.TYPE_29__* %305, i32 %306)
  %308 = load i32, i32* %20, align 4
  %309 = load i8*, i8** %21, align 8
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i8, i8* %309, i64 %310
  store i8* %311, i8** %21, align 8
  %312 = load i64, i64* %18, align 8
  %313 = add nsw i64 %312, 1
  store i64 %313, i64* %18, align 8
  br label %314

314:                                              ; preds = %297
  %315 = load i32, i32* %19, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %19, align 4
  br label %262

317:                                              ; preds = %262
  %318 = load i8*, i8** %21, align 8
  %319 = load i8*, i8** %22, align 8
  %320 = ptrtoint i8* %318 to i64
  %321 = ptrtoint i8* %319 to i64
  %322 = sub i64 %320, %321
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = icmp sle i64 %322, %325
  %327 = zext i1 %326 to i32
  %328 = call i32 @Assert(i32 %327)
  %329 = load i32, i32* %15, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %341

331:                                              ; preds = %317
  %332 = load i64, i64* %9, align 8
  %333 = load i32, i32* @REGBUF_STANDARD, align 4
  %334 = call i32 @XLogRegisterBuffer(i32 1, i64 %332, i32 %333)
  %335 = load i8*, i8** %22, align 8
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = call i32 @XLogRegisterBufData(i32 1, i8* %335, i32 %339)
  br label %341

341:                                              ; preds = %331, %317
  %342 = load i32*, i32** %10, align 8
  %343 = call i64 @PageGetExactFreeSpace(i32* %342)
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 1
  store i64 %343, i64* %345, align 8
  %346 = load i64, i64* %9, align 8
  %347 = call i32 @MarkBufferDirty(i64 %346)
  br label %348

348:                                              ; preds = %341, %205
  %349 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %350 = bitcast %struct.TYPE_29__* %349 to i8*
  %351 = getelementptr inbounds i8, i8* %350, i64 40
  %352 = load i32*, i32** %7, align 8
  %353 = bitcast i32* %352 to i8*
  %354 = ptrtoint i8* %351 to i64
  %355 = ptrtoint i8* %353 to i64
  %356 = sub i64 %354, %355
  %357 = trunc i64 %356 to i32
  %358 = load i32*, i32** %7, align 8
  %359 = bitcast i32* %358 to %struct.TYPE_26__*
  %360 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %359, i32 0, i32 0
  store i32 %357, i32* %360, align 4
  %361 = load i64, i64* %6, align 8
  %362 = call i32 @MarkBufferDirty(i64 %361)
  %363 = load i32, i32* %15, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %390

365:                                              ; preds = %348
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 3
  %367 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %368 = call i32 @memcpy(i8* %366, %struct.TYPE_29__* %367, i32 40)
  %369 = load i64, i64* %6, align 8
  %370 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %371 = load i32, i32* @REGBUF_STANDARD, align 4
  %372 = or i32 %370, %371
  %373 = call i32 @XLogRegisterBuffer(i32 0, i64 %369, i32 %372)
  %374 = bitcast %struct.TYPE_24__* %11 to i8*
  %375 = call i32 @XLogRegisterData(i8* %374, i32 32)
  %376 = load i32, i32* @RM_GIN_ID, align 4
  %377 = load i32, i32* @XLOG_GIN_UPDATE_META_PAGE, align 4
  %378 = call i32 @XLogInsert(i32 %376, i32 %377)
  store i32 %378, i32* %23, align 4
  %379 = load i32*, i32** %7, align 8
  %380 = load i32, i32* %23, align 4
  %381 = call i32 @PageSetLSN(i32* %379, i32 %380)
  %382 = load i64, i64* %9, align 8
  %383 = load i64, i64* @InvalidBuffer, align 8
  %384 = icmp ne i64 %382, %383
  br i1 %384, label %385, label %389

385:                                              ; preds = %365
  %386 = load i32*, i32** %10, align 8
  %387 = load i32, i32* %23, align 4
  %388 = call i32 @PageSetLSN(i32* %386, i32 %387)
  br label %389

389:                                              ; preds = %385, %365
  br label %390

390:                                              ; preds = %389, %348
  %391 = load i64, i64* %9, align 8
  %392 = load i64, i64* @InvalidBuffer, align 8
  %393 = icmp ne i64 %391, %392
  br i1 %393, label %394, label %397

394:                                              ; preds = %390
  %395 = load i64, i64* %9, align 8
  %396 = call i32 @UnlockReleaseBuffer(i64 %395)
  br label %397

397:                                              ; preds = %394, %390
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %399 = call i32 @GinGetPendingListCleanupSize(%struct.TYPE_25__* %398)
  store i32 %399, i32* %14, align 4
  %400 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* @GIN_PAGE_FREESIZE, align 4
  %404 = mul nsw i32 %402, %403
  %405 = sext i32 %404 to i64
  %406 = load i32, i32* %14, align 4
  %407 = sext i32 %406 to i64
  %408 = mul nsw i64 %407, 1024
  %409 = icmp sgt i64 %405, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %397
  store i32 1, i32* %13, align 4
  br label %411

411:                                              ; preds = %410, %397
  %412 = load i64, i64* %6, align 8
  %413 = call i32 @UnlockReleaseBuffer(i64 %412)
  %414 = call i32 (...) @END_CRIT_SECTION()
  %415 = load i32, i32* %13, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %411
  %418 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %419 = call i32 @ginInsertCleanup(%struct.TYPE_28__* %418, i32 0, i32 1, i32 0, i32* null)
  br label %420

420:                                              ; preds = %32, %417, %411
  ret void
}

declare dso_local i32 @RelationNeedsWAL(%struct.TYPE_25__*) #1

declare dso_local i64 @ReadBuffer(%struct.TYPE_25__*, i64) #1

declare dso_local i32* @BufferGetPage(i64) #1

declare dso_local i32 @CheckForSerializableConflictIn(%struct.TYPE_25__*, i32*, i64) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local %struct.TYPE_29__* @GinPageGetMeta(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @makeSublist(%struct.TYPE_25__*, %struct.TYPE_29__**, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_23__* @GinPageGetOpaque(i32*) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i64 @PageIsEmpty(i32*) #1

declare dso_local i64 @OffsetNumberNext(i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i32 @IndexTupleSize(%struct.TYPE_29__*) #1

declare dso_local i64 @PageAddItem(i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_25__*) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i64 @PageGetExactFreeSpace(i32*) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32*, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i64) #1

declare dso_local i32 @GinGetPendingListCleanupSize(%struct.TYPE_25__*) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @ginInsertCleanup(%struct.TYPE_28__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
