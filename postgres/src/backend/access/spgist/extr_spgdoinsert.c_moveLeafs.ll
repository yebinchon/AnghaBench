; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_moveLeafs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_moveLeafs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64, i32, i32 }

@InvalidOffsetNumber = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i32 0, align 4
@SPGIST_LIVE = common dso_local global i64 0, align 8
@SPGIST_DEAD = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unexpected SPGiST tuple state: %d\00", align 1
@GBUF_LEAF = common dso_local global i32 0, align 4
@GBUF_NULLS = common dso_local global i32 0, align 4
@SPGIST_PLACEHOLDER = common dso_local global i32 0, align 4
@SPGIST_REDIRECT = common dso_local global i32 0, align 4
@SizeOfSpgxlogMoveLeafs = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@RM_SPGIST_ID = common dso_local global i32 0, align 4
@XLOG_SPGIST_MOVE_LEAFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32)* @moveLeafs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moveLeafs(i32 %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3, %struct.TYPE_16__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_14__, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_16__*, align 8
  %30 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %11, align 8
  store i32 %5, i32* %12, align 4
  %31 = load i32, i32* @InvalidOffsetNumber, align 4
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* @InvalidOffsetNumber, align 4
  store i32 %32, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @InvalidBuffer, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PageGetMaxOffsetNumber(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = trunc i64 %55 to i32
  %57 = call i8* @palloc(i32 %56)
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %23, align 8
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @palloc(i32 %63)
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %24, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %161, %6
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @InvalidOffsetNumber, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %165

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @FirstOffsetNumber, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PageGetMaxOffsetNumber(i32 %87)
  %89 = icmp sle i32 %84, %88
  br label %90

90:                                               ; preds = %83, %79
  %91 = phi i1 [ false, %79 ], [ %89, %83 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @Assert(i32 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @PageGetItemId(i32 %99, i32 %100)
  %102 = call i64 @PageGetItem(i32 %96, i32 %101)
  %103 = inttoptr i64 %102 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %29, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SPGIST_LIVE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %90
  %110 = load i32, i32* %13, align 4
  %111 = load i32*, i32** %23, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = add i64 %118, 4
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %161

126:                                              ; preds = %90
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SPGIST_DEAD, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %126
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %133, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @Assert(i32 %138)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @InvalidOffsetNumber, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @Assert(i32 %145)
  %147 = load i32, i32* %13, align 4
  %148 = load i32*, i32** %23, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  store i32 1, i32* %22, align 4
  br label %160

154:                                              ; preds = %126
  %155 = load i32, i32* @ERROR, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @elog(i32 %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %158)
  br label %160

160:                                              ; preds = %154, %132
  br label %161

161:                                              ; preds = %160, %109
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %13, align 4
  br label %75

165:                                              ; preds = %75
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @GBUF_LEAF, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* @GBUF_NULLS, align 4
  br label %173

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %170
  %174 = phi i32 [ %171, %170 ], [ 0, %172 ]
  %175 = or i32 %167, %174
  %176 = load i32, i32* %16, align 4
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 4
  %178 = call i64 @SpGistGetBuffer(i32 %166, i32 %175, i32 %176, i64* %177)
  store i64 %178, i64* %17, align 8
  %179 = load i64, i64* %17, align 8
  %180 = call i32 @BufferGetPage(i64 %179)
  store i32 %180, i32* %18, align 4
  %181 = load i64, i64* %17, align 8
  %182 = call i64 @BufferGetBlockNumber(i64 %181)
  store i64 %182, i64* %25, align 8
  %183 = load i64, i64* %25, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %183, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @Assert(i32 %188)
  %190 = load i32, i32* %16, align 4
  %191 = call i8* @palloc(i32 %190)
  store i8* %191, i8** %28, align 8
  store i8* %191, i8** %27, align 8
  %192 = call i32 (...) @START_CRIT_SECTION()
  store i32 0, i32* %15, align 4
  %193 = load i32, i32* %22, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %256, label %195

195:                                              ; preds = %173
  store i32 0, i32* %13, align 4
  br label %196

196:                                              ; preds = %252, %195
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %255

200:                                              ; preds = %196
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = load i32*, i32** %23, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @PageGetItemId(i32 %206, i32 %211)
  %213 = call i64 @PageGetItem(i32 %203, i32 %212)
  %214 = inttoptr i64 %213 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %214, %struct.TYPE_16__** %19, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @SPGIST_LIVE, align 8
  %219 = icmp eq i64 %217, %218
  %220 = zext i1 %219 to i32
  %221 = call i32 @Assert(i32 %220)
  %222 = load i32, i32* %20, align 4
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %226 = load i32, i32* %18, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %228 = ptrtoint %struct.TYPE_16__* %227 to i32
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @SpGistPageAddNewItem(%struct.TYPE_15__* %225, i32 %226, i32 %228, i32 %231, i32* %21, i32 0)
  store i32 %232, i32* %20, align 4
  %233 = load i32, i32* %20, align 4
  %234 = load i32*, i32** %24, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %233, i32* %237, align 4
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %15, align 4
  %240 = load i8*, i8** %28, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @memcpy(i8* %240, %struct.TYPE_16__* %241, i32 %244)
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i8*, i8** %28, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8* %251, i8** %28, align 8
  br label %252

252:                                              ; preds = %200
  %253 = load i32, i32* %13, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %13, align 4
  br label %196

255:                                              ; preds = %196
  br label %256

256:                                              ; preds = %255, %173
  %257 = load i32, i32* %20, align 4
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %261 = load i32, i32* %18, align 4
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %263 = ptrtoint %struct.TYPE_16__* %262 to i32
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @SpGistPageAddNewItem(%struct.TYPE_15__* %260, i32 %261, i32 %263, i32 %266, i32* %21, i32 0)
  store i32 %267, i32* %20, align 4
  %268 = load i32, i32* %20, align 4
  %269 = load i32*, i32** %24, align 8
  %270 = load i32, i32* %15, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %268, i32* %272, align 4
  %273 = load i32, i32* %15, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %15, align 4
  %275 = load i8*, i8** %28, align 8
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @memcpy(i8* %275, %struct.TYPE_16__* %276, i32 %279)
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i8*, i8** %28, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8* %286, i8** %28, align 8
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = load i32*, i32** %23, align 8
  %292 = load i32, i32* %14, align 4
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %256
  %298 = load i32, i32* @SPGIST_PLACEHOLDER, align 4
  br label %301

299:                                              ; preds = %256
  %300 = load i32, i32* @SPGIST_REDIRECT, align 4
  br label %301

301:                                              ; preds = %299, %297
  %302 = phi i32 [ %298, %297 ], [ %300, %299 ]
  %303 = load i32, i32* @SPGIST_PLACEHOLDER, align 4
  %304 = load i64, i64* %25, align 8
  %305 = load i32, i32* %20, align 4
  %306 = call i32 @spgPageIndexMultiDelete(%struct.TYPE_15__* %287, i32 %290, i32* %291, i32 %292, i32 %302, i32 %303, i64 %304, i32 %305)
  %307 = load i32, i32* %7, align 4
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %309 = load i64, i64* %25, align 8
  %310 = load i32, i32* %20, align 4
  %311 = call i32 @saveNodeLink(i32 %307, %struct.TYPE_17__* %308, i64 %309, i32 %310)
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @MarkBufferDirty(i64 %314)
  %316 = load i64, i64* %17, align 8
  %317 = call i32 @MarkBufferDirty(i64 %316)
  %318 = load i32, i32* %7, align 4
  %319 = call i64 @RelationNeedsWAL(i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %409

321:                                              ; preds = %301
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %409, label %326

326:                                              ; preds = %321
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 6
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @STORE_STATE(%struct.TYPE_15__* %327, i32 %329)
  %331 = load i32, i32* %14, align 4
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i32 %331, i32* %332, align 8
  %333 = load i32, i32* %22, align 4
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  store i32 %333, i32* %334, align 4
  %335 = load i32, i32* %12, align 4
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  store i32 %335, i32* %336, align 8
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  store i32 %339, i32* %340, align 4
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 4
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 5
  store i32 %343, i32* %344, align 8
  %345 = call i32 (...) @XLogBeginInsert()
  %346 = bitcast %struct.TYPE_14__* %26 to i8*
  %347 = load i32, i32* @SizeOfSpgxlogMoveLeafs, align 4
  %348 = call i32 @XLogRegisterData(i8* %346, i32 %347)
  %349 = load i32*, i32** %23, align 8
  %350 = bitcast i32* %349 to i8*
  %351 = load i32, i32* %14, align 4
  %352 = sext i32 %351 to i64
  %353 = mul i64 4, %352
  %354 = trunc i64 %353 to i32
  %355 = call i32 @XLogRegisterData(i8* %350, i32 %354)
  %356 = load i32*, i32** %24, align 8
  %357 = bitcast i32* %356 to i8*
  %358 = load i32, i32* %15, align 4
  %359 = sext i32 %358 to i64
  %360 = mul i64 4, %359
  %361 = trunc i64 %360 to i32
  %362 = call i32 @XLogRegisterData(i8* %357, i32 %361)
  %363 = load i8*, i8** %27, align 8
  %364 = load i8*, i8** %28, align 8
  %365 = load i8*, i8** %27, align 8
  %366 = ptrtoint i8* %364 to i64
  %367 = ptrtoint i8* %365 to i64
  %368 = sub i64 %366, %367
  %369 = trunc i64 %368 to i32
  %370 = call i32 @XLogRegisterData(i8* %363, i32 %369)
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i32, i32* @REGBUF_STANDARD, align 4
  %375 = call i32 @XLogRegisterBuffer(i32 0, i64 %373, i32 %374)
  %376 = load i64, i64* %17, align 8
  %377 = load i32, i32* @REGBUF_STANDARD, align 4
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 4
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %326
  %382 = load i32, i32* @REGBUF_WILL_INIT, align 4
  br label %384

383:                                              ; preds = %326
  br label %384

384:                                              ; preds = %383, %381
  %385 = phi i32 [ %382, %381 ], [ 0, %383 ]
  %386 = or i32 %377, %385
  %387 = call i32 @XLogRegisterBuffer(i32 1, i64 %376, i32 %386)
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load i32, i32* @REGBUF_STANDARD, align 4
  %392 = call i32 @XLogRegisterBuffer(i32 2, i64 %390, i32 %391)
  %393 = load i32, i32* @RM_SPGIST_ID, align 4
  %394 = load i32, i32* @XLOG_SPGIST_MOVE_LEAFS, align 4
  %395 = call i32 @XLogInsert(i32 %393, i32 %394)
  store i32 %395, i32* %30, align 4
  %396 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* %30, align 4
  %400 = call i32 @PageSetLSN(i32 %398, i32 %399)
  %401 = load i32, i32* %18, align 4
  %402 = load i32, i32* %30, align 4
  %403 = call i32 @PageSetLSN(i32 %401, i32 %402)
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* %30, align 4
  %408 = call i32 @PageSetLSN(i32 %406, i32 %407)
  br label %409

409:                                              ; preds = %384, %321, %301
  %410 = call i32 (...) @END_CRIT_SECTION()
  %411 = load i32, i32* %7, align 4
  %412 = load i64, i64* %17, align 8
  %413 = call i32 @SpGistSetLastUsedPage(i32 %411, i64 %412)
  %414 = load i64, i64* %17, align 8
  %415 = call i32 @UnlockReleaseBuffer(i64 %414)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @SpGistGetBuffer(i32, i32, i32, i64*) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i64 @BufferGetBlockNumber(i64) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @SpGistPageAddNewItem(%struct.TYPE_15__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @spgPageIndexMultiDelete(%struct.TYPE_15__*, i32, i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @saveNodeLink(i32, %struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @STORE_STATE(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @SpGistSetLastUsedPage(i32, i64) #1

declare dso_local i32 @UnlockReleaseBuffer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
