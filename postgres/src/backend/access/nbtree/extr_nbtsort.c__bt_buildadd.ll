; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_buildadd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_buildadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i64, i64, i64, i8*, i64, %struct.TYPE_27__*, %struct.TYPE_29__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_30__ = type { i8*, i8* }
%struct.TYPE_26__ = type { i32 }

@P_FIRSTKEY = common dso_local global i64 0, align 8
@P_HIKEY = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to add high key to the index page\00", align 1
@P_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_29__*, %struct.TYPE_27__*)* @_bt_buildadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_buildadd(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1, %struct.TYPE_27__* %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca %struct.TYPE_30__*, align 8
  %21 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %6, align 8
  %22 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @PageGetFreeSpace(i64 %32)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %35 = call i64 @IndexTupleSize(%struct.TYPE_27__* %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @MAXALIGN(i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @BTMaxItemSize(i64 %45)
  %47 = icmp sgt i64 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %3
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %61 = call i32 @_bt_check_third_page(i32 %54, i32 %57, i32 %58, i64 %59, %struct.TYPE_27__* %60)
  br label %62

62:                                               ; preds = %51, %3
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i64 @MAXALIGN(i32 4)
  br label %70

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i64 [ %68, %67 ], [ 0, %69 ]
  %72 = add nsw i64 %64, %71
  %73 = icmp slt i64 %63, %72
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %276

80:                                               ; preds = %74
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @P_FIRSTKEY, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %276

84:                                               ; preds = %80, %70
  %85 = load i64, i64* %7, align 8
  store i64 %85, i64* %13, align 8
  %86 = load i8*, i8** %8, align 8
  store i8* %86, i8** %14, align 8
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @_bt_blnewpage(i64 %89)
  store i64 %90, i64* %7, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = sext i32 %93 to i64
  %96 = inttoptr i64 %95 to i8*
  store i8* %96, i8** %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @P_FIRSTKEY, align 8
  %99 = icmp sgt i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @Assert(i32 %100)
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32* @PageGetItemId(i64 %102, i64 %103)
  store i32* %104, i32** %15, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = call i64 @PageGetItem(i64 %105, i32* %106)
  %108 = inttoptr i64 %107 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %108, %struct.TYPE_27__** %17, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i32*, i32** %15, align 8
  %111 = call i64 @ItemIdGetLength(i32* %110)
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %113 = load i64, i64* @P_FIRSTKEY, align 8
  %114 = call i32 @_bt_sortaddtup(i64 %109, i64 %111, %struct.TYPE_27__* %112, i64 %113)
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* @P_HIKEY, align 8
  %117 = call i32* @PageGetItemId(i64 %115, i64 %116)
  store i32* %117, i32** %16, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %16, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32*, i32** %15, align 8
  %122 = call i32 @ItemIdSetUnused(i32* %121)
  %123 = load i64, i64* %13, align 8
  %124 = inttoptr i64 %123 to %struct.TYPE_26__*
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 %127, 4
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %171

132:                                              ; preds = %84
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i64 @OffsetNumberPrev(i64 %134)
  %136 = call i32* @PageGetItemId(i64 %133, i64 %135)
  store i32* %136, i32** %15, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = call i64 @PageGetItem(i64 %137, i32* %138)
  %140 = inttoptr i64 %139 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %140, %struct.TYPE_27__** %18, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.TYPE_27__* @_bt_truncate(i32 %143, %struct.TYPE_27__* %144, %struct.TYPE_27__* %145, i32 %148)
  store %struct.TYPE_27__* %149, %struct.TYPE_27__** %19, align 8
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* @P_HIKEY, align 8
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %153 = ptrtoint %struct.TYPE_27__* %152 to i32
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %155 = call i64 @IndexTupleSize(%struct.TYPE_27__* %154)
  %156 = call i32 @PageIndexTupleOverwrite(i64 %150, i64 %151, i32 %153, i64 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %132
  %159 = load i32, i32* @ERROR, align 4
  %160 = call i32 @elog(i32 %159, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %132
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %163 = call i32 @pfree(%struct.TYPE_27__* %162)
  %164 = load i64, i64* %13, align 8
  %165 = load i64, i64* @P_HIKEY, align 8
  %166 = call i32* @PageGetItemId(i64 %164, i64 %165)
  store i32* %166, i32** %16, align 8
  %167 = load i64, i64* %13, align 8
  %168 = load i32*, i32** %16, align 8
  %169 = call i64 @PageGetItem(i64 %167, i32* %168)
  %170 = inttoptr i64 %169 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %170, %struct.TYPE_27__** %17, align 8
  br label %171

171:                                              ; preds = %161, %84
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 6
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %173, align 8
  %175 = icmp eq %struct.TYPE_29__* %174, null
  br i1 %175, label %176, label %185

176:                                              ; preds = %171
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  %182 = call %struct.TYPE_29__* @_bt_pagestate(%struct.TYPE_28__* %177, i64 %181)
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 6
  store %struct.TYPE_29__* %182, %struct.TYPE_29__** %184, align 8
  br label %185

185:                                              ; preds = %176, %171
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %187, align 8
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @BTreeTupleGetNAtts(%struct.TYPE_27__* %188, i32 %191)
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @IndexRelationGetNumberOfKeyAttributes(i32 %195)
  %197 = icmp sle i64 %192, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %185
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %200, align 8
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @BTreeTupleGetNAtts(%struct.TYPE_27__* %201, i32 %204)
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %198, %185
  %208 = load i64, i64* %13, align 8
  %209 = call i64 @PageGetSpecialPointer(i64 %208)
  %210 = inttoptr i64 %209 to %struct.TYPE_30__*
  %211 = call i64 @P_LEFTMOST(%struct.TYPE_30__* %210)
  %212 = icmp ne i64 %211, 0
  br label %213

213:                                              ; preds = %207, %198
  %214 = phi i1 [ true, %198 ], [ %212, %207 ]
  %215 = zext i1 %214 to i32
  %216 = call i32 @Assert(i32 %215)
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 5
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %218, align 8
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @BTreeTupleGetNAtts(%struct.TYPE_27__* %219, i32 %222)
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %213
  %226 = load i64, i64* %13, align 8
  %227 = call i64 @PageGetSpecialPointer(i64 %226)
  %228 = inttoptr i64 %227 to %struct.TYPE_30__*
  %229 = call i64 @P_LEFTMOST(%struct.TYPE_30__* %228)
  %230 = icmp ne i64 %229, 0
  %231 = xor i1 %230, true
  br label %232

232:                                              ; preds = %225, %213
  %233 = phi i1 [ true, %213 ], [ %231, %225 ]
  %234 = zext i1 %233 to i32
  %235 = call i32 @Assert(i32 %234)
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 5
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %237, align 8
  %239 = load i8*, i8** %14, align 8
  %240 = call i32 @BTreeInnerTupleSetDownLink(%struct.TYPE_27__* %238, i8* %239)
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 6
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %243, align 8
  %245 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %245, i32 0, i32 5
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %246, align 8
  call void @_bt_buildadd(%struct.TYPE_28__* %241, %struct.TYPE_29__* %244, %struct.TYPE_27__* %247)
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %248, i32 0, i32 5
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %249, align 8
  %251 = call i32 @pfree(%struct.TYPE_27__* %250)
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %253 = call %struct.TYPE_27__* @CopyIndexTuple(%struct.TYPE_27__* %252)
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 5
  store %struct.TYPE_27__* %253, %struct.TYPE_27__** %255, align 8
  %256 = load i64, i64* %13, align 8
  %257 = call i64 @PageGetSpecialPointer(i64 %256)
  %258 = inttoptr i64 %257 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %258, %struct.TYPE_30__** %20, align 8
  %259 = load i64, i64* %7, align 8
  %260 = call i64 @PageGetSpecialPointer(i64 %259)
  %261 = inttoptr i64 %260 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %261, %struct.TYPE_30__** %21, align 8
  %262 = load i8*, i8** %8, align 8
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %264 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %263, i32 0, i32 0
  store i8* %262, i8** %264, align 8
  %265 = load i8*, i8** %14, align 8
  %266 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %267 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %266, i32 0, i32 1
  store i8* %265, i8** %267, align 8
  %268 = load i8*, i8** @P_NONE, align 8
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 0
  store i8* %268, i8** %270, align 8
  %271 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %272 = load i64, i64* %13, align 8
  %273 = load i8*, i8** %14, align 8
  %274 = call i32 @_bt_blwritepage(%struct.TYPE_28__* %271, i64 %272, i8* %273)
  %275 = load i64, i64* @P_FIRSTKEY, align 8
  store i64 %275, i64* %9, align 8
  br label %276

276:                                              ; preds = %232, %80, %74
  %277 = load i64, i64* %9, align 8
  %278 = load i64, i64* @P_HIKEY, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %298

280:                                              ; preds = %276
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 5
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %282, align 8
  %284 = icmp eq %struct.TYPE_27__* %283, null
  %285 = zext i1 %284 to i32
  %286 = call i32 @Assert(i32 %285)
  %287 = call %struct.TYPE_27__* @palloc0(i32 4)
  %288 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %288, i32 0, i32 5
  store %struct.TYPE_27__* %287, %struct.TYPE_27__** %289, align 8
  %290 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %290, i32 0, i32 5
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 0
  store i32 4, i32* %293, align 4
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %294, i32 0, i32 5
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %295, align 8
  %297 = call i32 @BTreeTupleSetNAtts(%struct.TYPE_27__* %296, i32 0)
  br label %298

298:                                              ; preds = %280, %276
  %299 = load i64, i64* %9, align 8
  %300 = call i64 @OffsetNumberNext(i64 %299)
  store i64 %300, i64* %9, align 8
  %301 = load i64, i64* %7, align 8
  %302 = load i64, i64* %11, align 8
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %304 = load i64, i64* %9, align 8
  %305 = call i32 @_bt_sortaddtup(i64 %301, i64 %302, %struct.TYPE_27__* %303, i64 %304)
  %306 = load i64, i64* %7, align 8
  %307 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %307, i32 0, i32 4
  store i64 %306, i64* %308, align 8
  %309 = load i8*, i8** %8, align 8
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %310, i32 0, i32 3
  store i8* %309, i8** %311, align 8
  %312 = load i64, i64* %9, align 8
  %313 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %313, i32 0, i32 0
  store i64 %312, i64* %314, align 8
  ret void
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @PageGetFreeSpace(i64) #1

declare dso_local i64 @IndexTupleSize(%struct.TYPE_27__*) #1

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @BTMaxItemSize(i64) #1

declare dso_local i32 @_bt_check_third_page(i32, i32, i32, i64, %struct.TYPE_27__*) #1

declare dso_local i64 @_bt_blnewpage(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @PageGetItemId(i64, i64) #1

declare dso_local i64 @PageGetItem(i64, i32*) #1

declare dso_local i32 @_bt_sortaddtup(i64, i64, %struct.TYPE_27__*, i64) #1

declare dso_local i64 @ItemIdGetLength(i32*) #1

declare dso_local i32 @ItemIdSetUnused(i32*) #1

declare dso_local i64 @OffsetNumberPrev(i64) #1

declare dso_local %struct.TYPE_27__* @_bt_truncate(i32, %struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @PageIndexTupleOverwrite(i64, i64, i32, i64) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @pfree(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_29__* @_bt_pagestate(%struct.TYPE_28__*, i64) #1

declare dso_local i64 @BTreeTupleGetNAtts(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @IndexRelationGetNumberOfKeyAttributes(i32) #1

declare dso_local i64 @P_LEFTMOST(%struct.TYPE_30__*) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i32 @BTreeInnerTupleSetDownLink(%struct.TYPE_27__*, i8*) #1

declare dso_local %struct.TYPE_27__* @CopyIndexTuple(%struct.TYPE_27__*) #1

declare dso_local i32 @_bt_blwritepage(%struct.TYPE_28__*, i64, i8*) #1

declare dso_local %struct.TYPE_27__* @palloc0(i32) #1

declare dso_local i32 @BTreeTupleSetNAtts(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
