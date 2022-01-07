; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_split.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64, i64, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@InvalidBuffer = common dso_local global i32 0, align 4
@BTP_ROOT = common dso_local global i32 0, align 4
@BTP_SPLIT_END = common dso_local global i32 0, align 4
@BTP_HAS_GARBAGE = common dso_local global i32 0, align 4
@BTP_INCOMPLETE_SPLIT = common dso_local global i32 0, align 4
@P_HIKEY = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"failed to add hikey to the left sibling while splitting block %u of index \22%s\22\00", align 1
@P_NEW = common dso_local global i64 0, align 8
@BT_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"failed to add hikey to the right sibling while splitting block %u of index \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"failed to add new item to the left sibling while splitting block %u of index \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"failed to add new item to the right sibling while splitting block %u of index \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"failed to add old item to the left sibling while splitting block %u of index \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"failed to add old item to the right sibling while splitting block %u of index \22%s\22\00", align 1
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [99 x i8] c"right sibling's left-link doesn't match: block %u links to %u instead of expected %u in index \22%s\22\00", align 1
@SizeOfBtreeSplit = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@XLOG_BTREE_SPLIT_L = common dso_local global i32 0, align 4
@XLOG_BTREE_SPLIT_R = common dso_local global i32 0, align 4
@RM_BTREE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_14__*, i32, i32, i64, i32, i64)* @_bt_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_split(i32 %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, i64 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca %struct.TYPE_15__*, align 8
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_15__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i32*, align 8
  %43 = alloca %struct.TYPE_15__*, align 8
  %44 = alloca %struct.TYPE_12__, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %47 = load i32, i32* @InvalidBuffer, align 4
  store i32 %47, i32* %24, align 4
  store i32* null, i32** %25, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %26, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @IndexRelationGetNumberOfAttributes(i32 %48)
  store i32 %49, i32* %38, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %50)
  store i32 %51, i32* %39, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32* @BufferGetPage(i32 %52)
  store i32* %53, i32** %16, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = call i64 @PageGetSpecialPointer(i32* %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %23, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @BufferGetBlockNumber(i32 %57)
  store i64 %58, i64* %19, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %16, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i64, i64* %14, align 8
  %64 = call i64 @_bt_findsplitloc(i32 %59, i32* %60, i64 %61, i32 %62, i64 %63, i32* %35)
  store i64 %64, i64* %32, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = call i32* @PageGetTempPage(i32* %65)
  store i32* %66, i32** %17, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @BufferGetPageSize(i32 %68)
  %70 = call i32 @_bt_pageinit(i32* %67, i32 %69)
  %71 = load i32*, i32** %17, align 8
  %72 = call i64 @PageGetSpecialPointer(i32* %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %73, %struct.TYPE_15__** %22, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @BTP_ROOT, align 4
  %80 = load i32, i32* @BTP_SPLIT_END, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @BTP_HAS_GARBAGE, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* @BTP_INCOMPLETE_SPLIT, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @PageGetLSN(i32* %107)
  %109 = call i32 @PageSetLSN(i32* %106, i32 %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %111 = call i32 @P_ISLEAF(%struct.TYPE_15__* %110)
  store i32 %111, i32* %36, align 4
  %112 = load i32, i32* %35, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %7
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* %32, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %27, align 4
  %120 = load i64, i64* %14, align 8
  store i64 %120, i64* %29, align 8
  br label %130

121:                                              ; preds = %114, %7
  %122 = load i32*, i32** %16, align 8
  %123 = load i64, i64* %32, align 8
  %124 = call i32 @PageGetItemId(i32* %122, i64 %123)
  store i32 %124, i32* %28, align 4
  %125 = load i32, i32* %28, align 4
  %126 = call i32 @ItemIdGetLength(i32 %125)
  store i32 %126, i32* %27, align 4
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %28, align 4
  %129 = call i64 @PageGetItem(i32* %127, i32 %128)
  store i64 %129, i64* %29, align 8
  br label %130

130:                                              ; preds = %121, %118
  %131 = load i32, i32* %36, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %181

133:                                              ; preds = %130
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %38, align 4
  %140 = load i32, i32* %39, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %181

142:                                              ; preds = %138, %133
  %143 = load i32, i32* %35, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %32, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i64, i64* %14, align 8
  store i64 %150, i64* %40, align 8
  br label %166

151:                                              ; preds = %145, %142
  %152 = load i64, i64* %32, align 8
  %153 = call i64 @OffsetNumberPrev(i64 %152)
  store i64 %153, i64* %41, align 8
  %154 = load i64, i64* %41, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %156 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_15__* %155)
  %157 = icmp sge i64 %154, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @Assert(i32 %158)
  %160 = load i32*, i32** %16, align 8
  %161 = load i64, i64* %41, align 8
  %162 = call i32 @PageGetItemId(i32* %160, i64 %161)
  store i32 %162, i32* %28, align 4
  %163 = load i32*, i32** %16, align 8
  %164 = load i32, i32* %28, align 4
  %165 = call i64 @PageGetItem(i32* %163, i32 %164)
  store i64 %165, i64* %40, align 8
  br label %166

166:                                              ; preds = %151, %149
  %167 = load i64, i64* %40, align 8
  %168 = load i64, i64* %29, align 8
  %169 = icmp ne i64 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @Assert(i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = load i64, i64* %40, align 8
  %174 = load i64, i64* %29, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %176 = call i64 @_bt_truncate(i32 %172, i64 %173, i64 %174, %struct.TYPE_14__* %175)
  store i64 %176, i64* %37, align 8
  %177 = load i64, i64* %37, align 8
  %178 = call i32 @IndexTupleSize(i64 %177)
  store i32 %178, i32* %27, align 4
  %179 = load i32, i32* %27, align 4
  %180 = call i32 @MAXALIGN(i32 %179)
  store i32 %180, i32* %27, align 4
  br label %183

181:                                              ; preds = %138, %130
  %182 = load i64, i64* %29, align 8
  store i64 %182, i64* %37, align 8
  br label %183

183:                                              ; preds = %181, %166
  %184 = load i64, i64* @P_HIKEY, align 8
  store i64 %184, i64* %30, align 8
  %185 = load i64, i64* %37, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @BTreeTupleGetNAtts(i64 %185, i32 %186)
  %188 = icmp sgt i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 @Assert(i32 %189)
  %191 = load i64, i64* %37, align 8
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @BTreeTupleGetNAtts(i64 %191, i32 %192)
  %194 = load i32, i32* %39, align 4
  %195 = icmp sle i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @Assert(i32 %196)
  %198 = load i32*, i32** %17, align 8
  %199 = load i64, i64* %37, align 8
  %200 = trunc i64 %199 to i32
  %201 = load i32, i32* %27, align 4
  %202 = load i64, i64* %30, align 8
  %203 = call i64 @PageAddItem(i32* %198, i32 %200, i32 %201, i64 %202, i32 0, i32 0)
  %204 = load i64, i64* @InvalidOffsetNumber, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %183
  %207 = load i32, i32* @ERROR, align 4
  %208 = load i64, i64* %19, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @RelationGetRelationName(i32 %209)
  %211 = call i32 @elog(i32 %207, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %208, i32 %210)
  br label %212

212:                                              ; preds = %206, %183
  %213 = load i64, i64* %30, align 8
  %214 = call i64 @OffsetNumberNext(i64 %213)
  store i64 %214, i64* %30, align 8
  %215 = load i64, i64* %37, align 8
  %216 = load i64, i64* %29, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = load i64, i64* %37, align 8
  %220 = call i32 @pfree(i64 %219)
  br label %221

221:                                              ; preds = %218, %212
  %222 = load i32, i32* %8, align 4
  %223 = load i64, i64* @P_NEW, align 8
  %224 = load i32, i32* @BT_WRITE, align 4
  %225 = call i32 @_bt_getbuf(i32 %222, i64 %223, i32 %224)
  store i32 %225, i32* %15, align 4
  %226 = load i32, i32* %15, align 4
  %227 = call i32* @BufferGetPage(i32 %226)
  store i32* %227, i32** %18, align 8
  %228 = load i32, i32* %15, align 4
  %229 = call i64 @BufferGetBlockNumber(i32 %228)
  store i64 %229, i64* %20, align 8
  %230 = load i32*, i32** %18, align 8
  %231 = call i64 @PageGetSpecialPointer(i32* %230)
  %232 = inttoptr i64 %231 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %232, %struct.TYPE_15__** %21, align 8
  %233 = load i64, i64* %20, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 4
  store i64 %233, i64* %235, align 8
  %236 = load i32, i32* %8, align 4
  %237 = call i64 @_bt_vacuum_cycleid(i32 %236)
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 2
  store i64 %237, i64* %239, align 8
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* @BTP_ROOT, align 4
  %246 = load i32, i32* @BTP_SPLIT_END, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @BTP_HAS_GARBAGE, align 4
  %249 = or i32 %247, %248
  %250 = xor i32 %249, -1
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load i64, i64* %19, align 8
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 1
  store i64 %255, i64* %257, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 4
  store i64 %260, i64* %262, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  store i32 %266, i32* %269, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 2
  store i64 %272, i64* %274, align 8
  %275 = load i64, i64* @P_HIKEY, align 8
  store i64 %275, i64* %31, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %277 = call i32 @P_RIGHTMOST(%struct.TYPE_15__* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %322, label %279

279:                                              ; preds = %221
  %280 = load i32*, i32** %16, align 8
  %281 = load i64, i64* @P_HIKEY, align 8
  %282 = call i32 @PageGetItemId(i32* %280, i64 %281)
  store i32 %282, i32* %28, align 4
  %283 = load i32, i32* %28, align 4
  %284 = call i32 @ItemIdGetLength(i32 %283)
  store i32 %284, i32* %27, align 4
  %285 = load i32*, i32** %16, align 8
  %286 = load i32, i32* %28, align 4
  %287 = call i64 @PageGetItem(i32* %285, i32 %286)
  store i64 %287, i64* %29, align 8
  %288 = load i64, i64* %29, align 8
  %289 = load i32, i32* %8, align 4
  %290 = call i32 @BTreeTupleGetNAtts(i64 %288, i32 %289)
  %291 = icmp sgt i32 %290, 0
  %292 = zext i1 %291 to i32
  %293 = call i32 @Assert(i32 %292)
  %294 = load i64, i64* %29, align 8
  %295 = load i32, i32* %8, align 4
  %296 = call i32 @BTreeTupleGetNAtts(i64 %294, i32 %295)
  %297 = load i32, i32* %39, align 4
  %298 = icmp sle i32 %296, %297
  %299 = zext i1 %298 to i32
  %300 = call i32 @Assert(i32 %299)
  %301 = load i32*, i32** %18, align 8
  %302 = load i64, i64* %29, align 8
  %303 = trunc i64 %302 to i32
  %304 = load i32, i32* %27, align 4
  %305 = load i64, i64* %31, align 8
  %306 = call i64 @PageAddItem(i32* %301, i32 %303, i32 %304, i64 %305, i32 0, i32 0)
  %307 = load i64, i64* @InvalidOffsetNumber, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %319

309:                                              ; preds = %279
  %310 = load i32*, i32** %18, align 8
  %311 = load i32, i32* %15, align 4
  %312 = call i32 @BufferGetPageSize(i32 %311)
  %313 = call i32 @memset(i32* %310, i32 0, i32 %312)
  %314 = load i32, i32* @ERROR, align 4
  %315 = load i64, i64* %19, align 8
  %316 = load i32, i32* %8, align 4
  %317 = call i32 @RelationGetRelationName(i32 %316)
  %318 = call i32 @elog(i32 %314, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i64 %315, i32 %317)
  br label %319

319:                                              ; preds = %309, %279
  %320 = load i64, i64* %31, align 8
  %321 = call i64 @OffsetNumberNext(i64 %320)
  store i64 %321, i64* %31, align 8
  br label %322

322:                                              ; preds = %319, %221
  %323 = load i32*, i32** %16, align 8
  %324 = call i64 @PageGetMaxOffsetNumber(i32* %323)
  store i64 %324, i64* %33, align 8
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %326 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_15__* %325)
  store i64 %326, i64* %34, align 8
  br label %327

327:                                              ; preds = %442, %322
  %328 = load i64, i64* %34, align 8
  %329 = load i64, i64* %33, align 8
  %330 = icmp sle i64 %328, %329
  br i1 %330, label %331, label %445

331:                                              ; preds = %327
  %332 = load i32*, i32** %16, align 8
  %333 = load i64, i64* %34, align 8
  %334 = call i32 @PageGetItemId(i32* %332, i64 %333)
  store i32 %334, i32* %28, align 4
  %335 = load i32, i32* %28, align 4
  %336 = call i32 @ItemIdGetLength(i32 %335)
  store i32 %336, i32* %27, align 4
  %337 = load i32*, i32** %16, align 8
  %338 = load i32, i32* %28, align 4
  %339 = call i64 @PageGetItem(i32* %337, i32 %338)
  store i64 %339, i64* %29, align 8
  %340 = load i64, i64* %34, align 8
  %341 = load i64, i64* %12, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %397

343:                                              ; preds = %331
  %344 = load i32, i32* %35, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %371

346:                                              ; preds = %343
  %347 = load i64, i64* %12, align 8
  %348 = load i64, i64* %32, align 8
  %349 = icmp sle i64 %347, %348
  %350 = zext i1 %349 to i32
  %351 = call i32 @Assert(i32 %350)
  %352 = load i32*, i32** %17, align 8
  %353 = load i32, i32* %13, align 4
  %354 = load i64, i64* %14, align 8
  %355 = load i64, i64* %30, align 8
  %356 = call i32 @_bt_pgaddtup(i32* %352, i32 %353, i64 %354, i64 %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %368, label %358

358:                                              ; preds = %346
  %359 = load i32*, i32** %18, align 8
  %360 = load i32, i32* %15, align 4
  %361 = call i32 @BufferGetPageSize(i32 %360)
  %362 = call i32 @memset(i32* %359, i32 0, i32 %361)
  %363 = load i32, i32* @ERROR, align 4
  %364 = load i64, i64* %19, align 8
  %365 = load i32, i32* %8, align 4
  %366 = call i32 @RelationGetRelationName(i32 %365)
  %367 = call i32 @elog(i32 %363, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i64 %364, i32 %366)
  br label %368

368:                                              ; preds = %358, %346
  %369 = load i64, i64* %30, align 8
  %370 = call i64 @OffsetNumberNext(i64 %369)
  store i64 %370, i64* %30, align 8
  br label %396

371:                                              ; preds = %343
  %372 = load i64, i64* %12, align 8
  %373 = load i64, i64* %32, align 8
  %374 = icmp sge i64 %372, %373
  %375 = zext i1 %374 to i32
  %376 = call i32 @Assert(i32 %375)
  %377 = load i32*, i32** %18, align 8
  %378 = load i32, i32* %13, align 4
  %379 = load i64, i64* %14, align 8
  %380 = load i64, i64* %31, align 8
  %381 = call i32 @_bt_pgaddtup(i32* %377, i32 %378, i64 %379, i64 %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %393, label %383

383:                                              ; preds = %371
  %384 = load i32*, i32** %18, align 8
  %385 = load i32, i32* %15, align 4
  %386 = call i32 @BufferGetPageSize(i32 %385)
  %387 = call i32 @memset(i32* %384, i32 0, i32 %386)
  %388 = load i32, i32* @ERROR, align 4
  %389 = load i64, i64* %19, align 8
  %390 = load i32, i32* %8, align 4
  %391 = call i32 @RelationGetRelationName(i32 %390)
  %392 = call i32 @elog(i32 %388, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i64 %389, i32 %391)
  br label %393

393:                                              ; preds = %383, %371
  %394 = load i64, i64* %31, align 8
  %395 = call i64 @OffsetNumberNext(i64 %394)
  store i64 %395, i64* %31, align 8
  br label %396

396:                                              ; preds = %393, %368
  br label %397

397:                                              ; preds = %396, %331
  %398 = load i64, i64* %34, align 8
  %399 = load i64, i64* %32, align 8
  %400 = icmp slt i64 %398, %399
  br i1 %400, label %401, label %421

401:                                              ; preds = %397
  %402 = load i32*, i32** %17, align 8
  %403 = load i32, i32* %27, align 4
  %404 = load i64, i64* %29, align 8
  %405 = load i64, i64* %30, align 8
  %406 = call i32 @_bt_pgaddtup(i32* %402, i32 %403, i64 %404, i64 %405)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %418, label %408

408:                                              ; preds = %401
  %409 = load i32*, i32** %18, align 8
  %410 = load i32, i32* %15, align 4
  %411 = call i32 @BufferGetPageSize(i32 %410)
  %412 = call i32 @memset(i32* %409, i32 0, i32 %411)
  %413 = load i32, i32* @ERROR, align 4
  %414 = load i64, i64* %19, align 8
  %415 = load i32, i32* %8, align 4
  %416 = call i32 @RelationGetRelationName(i32 %415)
  %417 = call i32 @elog(i32 %413, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i64 %414, i32 %416)
  br label %418

418:                                              ; preds = %408, %401
  %419 = load i64, i64* %30, align 8
  %420 = call i64 @OffsetNumberNext(i64 %419)
  store i64 %420, i64* %30, align 8
  br label %441

421:                                              ; preds = %397
  %422 = load i32*, i32** %18, align 8
  %423 = load i32, i32* %27, align 4
  %424 = load i64, i64* %29, align 8
  %425 = load i64, i64* %31, align 8
  %426 = call i32 @_bt_pgaddtup(i32* %422, i32 %423, i64 %424, i64 %425)
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %438, label %428

428:                                              ; preds = %421
  %429 = load i32*, i32** %18, align 8
  %430 = load i32, i32* %15, align 4
  %431 = call i32 @BufferGetPageSize(i32 %430)
  %432 = call i32 @memset(i32* %429, i32 0, i32 %431)
  %433 = load i32, i32* @ERROR, align 4
  %434 = load i64, i64* %19, align 8
  %435 = load i32, i32* %8, align 4
  %436 = call i32 @RelationGetRelationName(i32 %435)
  %437 = call i32 @elog(i32 %433, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), i64 %434, i32 %436)
  br label %438

438:                                              ; preds = %428, %421
  %439 = load i64, i64* %31, align 8
  %440 = call i64 @OffsetNumberNext(i64 %439)
  store i64 %440, i64* %31, align 8
  br label %441

441:                                              ; preds = %438, %418
  br label %442

442:                                              ; preds = %441
  %443 = load i64, i64* %34, align 8
  %444 = call i64 @OffsetNumberNext(i64 %443)
  store i64 %444, i64* %34, align 8
  br label %327

445:                                              ; preds = %327
  %446 = load i64, i64* %34, align 8
  %447 = load i64, i64* %12, align 8
  %448 = icmp sle i64 %446, %447
  br i1 %448, label %449, label %474

449:                                              ; preds = %445
  %450 = load i32, i32* %35, align 4
  %451 = icmp ne i32 %450, 0
  %452 = xor i1 %451, true
  %453 = zext i1 %452 to i32
  %454 = call i32 @Assert(i32 %453)
  %455 = load i32*, i32** %18, align 8
  %456 = load i32, i32* %13, align 4
  %457 = load i64, i64* %14, align 8
  %458 = load i64, i64* %31, align 8
  %459 = call i32 @_bt_pgaddtup(i32* %455, i32 %456, i64 %457, i64 %458)
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %471, label %461

461:                                              ; preds = %449
  %462 = load i32*, i32** %18, align 8
  %463 = load i32, i32* %15, align 4
  %464 = call i32 @BufferGetPageSize(i32 %463)
  %465 = call i32 @memset(i32* %462, i32 0, i32 %464)
  %466 = load i32, i32* @ERROR, align 4
  %467 = load i64, i64* %19, align 8
  %468 = load i32, i32* %8, align 4
  %469 = call i32 @RelationGetRelationName(i32 %468)
  %470 = call i32 @elog(i32 %466, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i64 %467, i32 %469)
  br label %471

471:                                              ; preds = %461, %449
  %472 = load i64, i64* %31, align 8
  %473 = call i64 @OffsetNumberNext(i64 %472)
  store i64 %473, i64* %31, align 8
  br label %474

474:                                              ; preds = %471, %445
  %475 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %476 = call i32 @P_RIGHTMOST(%struct.TYPE_15__* %475)
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %529, label %478

478:                                              ; preds = %474
  %479 = load i32, i32* %8, align 4
  %480 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %481 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %480, i32 0, i32 4
  %482 = load i64, i64* %481, align 8
  %483 = load i32, i32* @BT_WRITE, align 4
  %484 = call i32 @_bt_getbuf(i32 %479, i64 %482, i32 %483)
  store i32 %484, i32* %24, align 4
  %485 = load i32, i32* %24, align 4
  %486 = call i32* @BufferGetPage(i32 %485)
  store i32* %486, i32** %25, align 8
  %487 = load i32*, i32** %25, align 8
  %488 = call i64 @PageGetSpecialPointer(i32* %487)
  %489 = inttoptr i64 %488 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %489, %struct.TYPE_15__** %26, align 8
  %490 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %491 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %490, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* %19, align 8
  %494 = icmp ne i64 %492, %493
  br i1 %494, label %495, label %514

495:                                              ; preds = %478
  %496 = load i32*, i32** %18, align 8
  %497 = load i32, i32* %15, align 4
  %498 = call i32 @BufferGetPageSize(i32 %497)
  %499 = call i32 @memset(i32* %496, i32 0, i32 %498)
  %500 = load i32, i32* @ERROR, align 4
  %501 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %502 = call i32 @errcode(i32 %501)
  %503 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %504 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %503, i32 0, i32 4
  %505 = load i64, i64* %504, align 8
  %506 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %507 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* %19, align 8
  %510 = load i32, i32* %8, align 4
  %511 = call i32 @RelationGetRelationName(i32 %510)
  %512 = call i32 @errmsg_internal(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.6, i64 0, i64 0), i64 %505, i64 %508, i64 %509, i32 %511)
  %513 = call i32 @ereport(i32 %500, i32 %512)
  br label %514

514:                                              ; preds = %495, %478
  %515 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %516 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %515, i32 0, i32 2
  %517 = load i64, i64* %516, align 8
  %518 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %519 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %518, i32 0, i32 2
  %520 = load i64, i64* %519, align 8
  %521 = icmp ne i64 %517, %520
  br i1 %521, label %522, label %528

522:                                              ; preds = %514
  %523 = load i32, i32* @BTP_SPLIT_END, align 4
  %524 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %525 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = or i32 %526, %523
  store i32 %527, i32* %525, align 8
  br label %528

528:                                              ; preds = %522, %514
  br label %529

529:                                              ; preds = %528, %474
  %530 = call i32 (...) @START_CRIT_SECTION()
  %531 = load i32*, i32** %17, align 8
  %532 = load i32*, i32** %16, align 8
  %533 = call i32 @PageRestoreTempPage(i32* %531, i32* %532)
  %534 = load i32, i32* %10, align 4
  %535 = call i32 @MarkBufferDirty(i32 %534)
  %536 = load i32, i32* %15, align 4
  %537 = call i32 @MarkBufferDirty(i32 %536)
  %538 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %539 = call i32 @P_RIGHTMOST(%struct.TYPE_15__* %538)
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %547, label %541

541:                                              ; preds = %529
  %542 = load i64, i64* %20, align 8
  %543 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %544 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %543, i32 0, i32 1
  store i64 %542, i64* %544, align 8
  %545 = load i32, i32* %24, align 4
  %546 = call i32 @MarkBufferDirty(i32 %545)
  br label %547

547:                                              ; preds = %541, %529
  %548 = load i32, i32* %36, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %564, label %550

550:                                              ; preds = %547
  %551 = load i32, i32* %11, align 4
  %552 = call i32* @BufferGetPage(i32 %551)
  store i32* %552, i32** %42, align 8
  %553 = load i32*, i32** %42, align 8
  %554 = call i64 @PageGetSpecialPointer(i32* %553)
  %555 = inttoptr i64 %554 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %555, %struct.TYPE_15__** %43, align 8
  %556 = load i32, i32* @BTP_INCOMPLETE_SPLIT, align 4
  %557 = xor i32 %556, -1
  %558 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %559 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = and i32 %560, %557
  store i32 %561, i32* %559, align 8
  %562 = load i32, i32* %11, align 4
  %563 = call i32 @MarkBufferDirty(i32 %562)
  br label %564

564:                                              ; preds = %550, %547
  %565 = load i32, i32* %8, align 4
  %566 = call i64 @RelationNeedsWAL(i32 %565)
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %676

568:                                              ; preds = %564
  %569 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %570 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %569, i32 0, i32 3
  %571 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  store i32 %572, i32* %573, align 8
  %574 = load i64, i64* %32, align 8
  %575 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  store i64 %574, i64* %575, align 8
  %576 = load i64, i64* %12, align 8
  %577 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i64 %576, i64* %577, align 8
  %578 = call i32 (...) @XLogBeginInsert()
  %579 = bitcast %struct.TYPE_12__* %44 to i8*
  %580 = load i32, i32* @SizeOfBtreeSplit, align 4
  %581 = call i32 @XLogRegisterData(i8* %579, i32 %580)
  %582 = load i32, i32* %10, align 4
  %583 = load i32, i32* @REGBUF_STANDARD, align 4
  %584 = call i32 @XLogRegisterBuffer(i32 0, i32 %582, i32 %583)
  %585 = load i32, i32* %15, align 4
  %586 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %587 = call i32 @XLogRegisterBuffer(i32 1, i32 %585, i32 %586)
  %588 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %589 = call i32 @P_RIGHTMOST(%struct.TYPE_15__* %588)
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %595, label %591

591:                                              ; preds = %568
  %592 = load i32, i32* %24, align 4
  %593 = load i32, i32* @REGBUF_STANDARD, align 4
  %594 = call i32 @XLogRegisterBuffer(i32 2, i32 %592, i32 %593)
  br label %595

595:                                              ; preds = %591, %568
  %596 = load i32, i32* %11, align 4
  %597 = call i64 @BufferIsValid(i32 %596)
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %603

599:                                              ; preds = %595
  %600 = load i32, i32* %11, align 4
  %601 = load i32, i32* @REGBUF_STANDARD, align 4
  %602 = call i32 @XLogRegisterBuffer(i32 3, i32 %600, i32 %601)
  br label %603

603:                                              ; preds = %599, %595
  %604 = load i32, i32* %35, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %612

606:                                              ; preds = %603
  %607 = load i64, i64* %14, align 8
  %608 = inttoptr i64 %607 to i8*
  %609 = load i32, i32* %13, align 4
  %610 = call i32 @MAXALIGN(i32 %609)
  %611 = call i32 @XLogRegisterBufData(i32 0, i8* %608, i32 %610)
  br label %612

612:                                              ; preds = %606, %603
  %613 = load i32*, i32** %16, align 8
  %614 = load i64, i64* @P_HIKEY, align 8
  %615 = call i32 @PageGetItemId(i32* %613, i64 %614)
  store i32 %615, i32* %28, align 4
  %616 = load i32*, i32** %16, align 8
  %617 = load i32, i32* %28, align 4
  %618 = call i64 @PageGetItem(i32* %616, i32 %617)
  store i64 %618, i64* %29, align 8
  %619 = load i64, i64* %29, align 8
  %620 = inttoptr i64 %619 to i8*
  %621 = load i64, i64* %29, align 8
  %622 = call i32 @IndexTupleSize(i64 %621)
  %623 = call i32 @MAXALIGN(i32 %622)
  %624 = call i32 @XLogRegisterBufData(i32 0, i8* %620, i32 %623)
  %625 = load i32*, i32** %18, align 8
  %626 = bitcast i32* %625 to i8*
  %627 = load i32*, i32** %18, align 8
  %628 = bitcast i32* %627 to %struct.TYPE_13__*
  %629 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i8, i8* %626, i64 %631
  %633 = load i32*, i32** %18, align 8
  %634 = bitcast i32* %633 to %struct.TYPE_13__*
  %635 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %634, i32 0, i32 1
  %636 = load i32, i32* %635, align 4
  %637 = load i32*, i32** %18, align 8
  %638 = bitcast i32* %637 to %struct.TYPE_13__*
  %639 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %638, i32 0, i32 0
  %640 = load i32, i32* %639, align 4
  %641 = sub nsw i32 %636, %640
  %642 = call i32 @XLogRegisterBufData(i32 1, i8* %632, i32 %641)
  %643 = load i32, i32* %35, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %647

645:                                              ; preds = %612
  %646 = load i32, i32* @XLOG_BTREE_SPLIT_L, align 4
  br label %649

647:                                              ; preds = %612
  %648 = load i32, i32* @XLOG_BTREE_SPLIT_R, align 4
  br label %649

649:                                              ; preds = %647, %645
  %650 = phi i32 [ %646, %645 ], [ %648, %647 ]
  store i32 %650, i32* %45, align 4
  %651 = load i32, i32* @RM_BTREE_ID, align 4
  %652 = load i32, i32* %45, align 4
  %653 = call i32 @XLogInsert(i32 %651, i32 %652)
  store i32 %653, i32* %46, align 4
  %654 = load i32*, i32** %16, align 8
  %655 = load i32, i32* %46, align 4
  %656 = call i32 @PageSetLSN(i32* %654, i32 %655)
  %657 = load i32*, i32** %18, align 8
  %658 = load i32, i32* %46, align 4
  %659 = call i32 @PageSetLSN(i32* %657, i32 %658)
  %660 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %661 = call i32 @P_RIGHTMOST(%struct.TYPE_15__* %660)
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %667, label %663

663:                                              ; preds = %649
  %664 = load i32*, i32** %25, align 8
  %665 = load i32, i32* %46, align 4
  %666 = call i32 @PageSetLSN(i32* %664, i32 %665)
  br label %667

667:                                              ; preds = %663, %649
  %668 = load i32, i32* %36, align 4
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %675, label %670

670:                                              ; preds = %667
  %671 = load i32, i32* %11, align 4
  %672 = call i32* @BufferGetPage(i32 %671)
  %673 = load i32, i32* %46, align 4
  %674 = call i32 @PageSetLSN(i32* %672, i32 %673)
  br label %675

675:                                              ; preds = %670, %667
  br label %676

676:                                              ; preds = %675, %564
  %677 = call i32 (...) @END_CRIT_SECTION()
  %678 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %679 = call i32 @P_RIGHTMOST(%struct.TYPE_15__* %678)
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %685, label %681

681:                                              ; preds = %676
  %682 = load i32, i32* %8, align 4
  %683 = load i32, i32* %24, align 4
  %684 = call i32 @_bt_relbuf(i32 %682, i32 %683)
  br label %685

685:                                              ; preds = %681, %676
  %686 = load i32, i32* %36, align 4
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %692, label %688

688:                                              ; preds = %685
  %689 = load i32, i32* %8, align 4
  %690 = load i32, i32* %11, align 4
  %691 = call i32 @_bt_relbuf(i32 %689, i32 %690)
  br label %692

692:                                              ; preds = %688, %685
  %693 = load i32, i32* %15, align 4
  ret i32 %693
}

declare dso_local i32 @IndexRelationGetNumberOfAttributes(i32) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(i32) #1

declare dso_local i32* @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32*) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i64 @_bt_findsplitloc(i32, i32*, i64, i32, i64, i32*) #1

declare dso_local i32* @PageGetTempPage(i32*) #1

declare dso_local i32 @_bt_pageinit(i32*, i32) #1

declare dso_local i32 @BufferGetPageSize(i32) #1

declare dso_local i32 @PageSetLSN(i32*, i32) #1

declare dso_local i32 @PageGetLSN(i32*) #1

declare dso_local i32 @P_ISLEAF(%struct.TYPE_15__*) #1

declare dso_local i32 @PageGetItemId(i32*, i64) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i64 @PageGetItem(i32*, i32) #1

declare dso_local i64 @OffsetNumberPrev(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_15__*) #1

declare dso_local i64 @_bt_truncate(i32, i64, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @IndexTupleSize(i64) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @BTreeTupleGetNAtts(i64, i32) #1

declare dso_local i64 @PageAddItem(i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @pfree(i64) #1

declare dso_local i32 @_bt_getbuf(i32, i64, i32) #1

declare dso_local i64 @_bt_vacuum_cycleid(i32) #1

declare dso_local i32 @P_RIGHTMOST(%struct.TYPE_15__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32*) #1

declare dso_local i32 @_bt_pgaddtup(i32*, i32, i64, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i64, i64, i64, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @PageRestoreTempPage(i32*, i32*) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
