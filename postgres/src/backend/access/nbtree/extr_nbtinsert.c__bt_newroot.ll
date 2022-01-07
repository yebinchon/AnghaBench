; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_newroot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_newroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_16__, i64, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i64, i64, i8*, i8* }
%struct.TYPE_17__ = type { i64, i8* }
%struct.TYPE_18__ = type { i64, i32, i32, i64, i8*, i64, i8* }
%struct.TYPE_19__ = type { i32, i32 }

@P_NEW = common dso_local global i32 0, align 4
@BT_WRITE = common dso_local global i32 0, align 4
@BTREE_METAPAGE = common dso_local global i32 0, align 4
@P_HIKEY = common dso_local global i32 0, align 4
@BTREE_NOVAC_VERSION = common dso_local global i64 0, align 8
@P_NONE = common dso_local global i32 0, align 4
@BTP_ROOT = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"failed to add leftkey to new root page while splitting block %u of index \22%s\22\00", align 1
@P_FIRSTKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"failed to add rightkey to new root page while splitting block %u of index \22%s\22\00", align 1
@BTP_INCOMPLETE_SPLIT = common dso_local global i32 0, align 4
@SizeOfBtreeNewroot = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_BTREE_ID = common dso_local global i32 0, align 4
@XLOG_BTREE_NEWROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @_bt_newroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_newroot(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_22__*, align 8
  %24 = alloca %struct.TYPE_17__, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_18__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @BufferGetBlockNumber(i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i8* @BufferGetBlockNumber(i32 %29)
  store i8* %30, i8** %11, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @BufferGetPage(i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @PageGetSpecialPointer(i64 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %14, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @P_NEW, align 4
  %38 = load i32, i32* @BT_WRITE, align 4
  %39 = call i32 @_bt_getbuf(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @BufferGetPage(i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @BufferGetBlockNumber(i32 %42)
  store i8* %43, i8** %12, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @BTREE_METAPAGE, align 4
  %46 = load i32, i32* @BT_WRITE, align 4
  %47 = call i32 @_bt_getbuf(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %21, align 4
  %49 = call i64 @BufferGetPage(i32 %48)
  store i64 %49, i64* %22, align 8
  %50 = load i64, i64* %22, align 8
  %51 = call %struct.TYPE_22__* @BTPageGetMeta(i64 %50)
  store %struct.TYPE_22__* %51, %struct.TYPE_22__** %23, align 8
  store i32 4, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = call i64 @palloc(i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %54, %struct.TYPE_20__** %17, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @BTreeInnerTupleSetDownLink(%struct.TYPE_20__* %58, i8* %59)
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %62 = call i32 @BTreeTupleSetNAtts(%struct.TYPE_20__* %61, i32 0)
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* @P_HIKEY, align 4
  %65 = call i32 @PageGetItemId(i64 %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @ItemIdGetLength(i32 %66)
  store i32 %67, i32* %20, align 4
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i64 @PageGetItem(i64 %68, i32 %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %16, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %73 = call %struct.TYPE_20__* @CopyIndexTuple(%struct.TYPE_20__* %72)
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %19, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @BTreeInnerTupleSetDownLink(%struct.TYPE_20__* %74, i8* %75)
  %77 = call i32 (...) @START_CRIT_SECTION()
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %3
  %84 = load i64, i64* %22, align 8
  %85 = call i32 @_bt_upgrademetapage(i64 %84)
  br label %86

86:                                               ; preds = %83, %3
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @PageGetSpecialPointer(i64 %87)
  %89 = inttoptr i64 %88 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %89, %struct.TYPE_21__** %13, align 8
  %90 = load i32, i32* @P_NONE, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 4
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @BTP_ROOT, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @PageGetSpecialPointer(i64 %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_21__*
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i64 %104, i64* %107, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 3
  store i64 %116, i64* %118, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i64 @BTreeTupleGetNAtts(%struct.TYPE_20__* %128, i32 %129)
  %131 = icmp eq i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @Assert(i32 %132)
  %134 = load i64, i64* %9, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %136 = ptrtoint %struct.TYPE_20__* %135 to i32
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* @P_HIKEY, align 4
  %139 = call i64 @PageAddItem(i64 %134, i32 %136, i32 %137, i32 %138, i32 0, i32 0)
  %140 = load i64, i64* @InvalidOffsetNumber, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %86
  %143 = load i32, i32* @PANIC, align 4
  %144 = load i32, i32* %5, align 4
  %145 = call i8* @BufferGetBlockNumber(i32 %144)
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @RelationGetRelationName(i32 %146)
  %148 = call i32 @elog(i32 %143, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8* %145, i32 %147)
  br label %149

149:                                              ; preds = %142, %86
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %151 = load i32, i32* %4, align 4
  %152 = call i64 @BTreeTupleGetNAtts(%struct.TYPE_20__* %150, i32 %151)
  %153 = icmp sgt i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @Assert(i32 %154)
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %157 = load i32, i32* %4, align 4
  %158 = call i64 @BTreeTupleGetNAtts(%struct.TYPE_20__* %156, i32 %157)
  %159 = load i32, i32* %4, align 4
  %160 = call i64 @IndexRelationGetNumberOfKeyAttributes(i32 %159)
  %161 = icmp sle i64 %158, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @Assert(i32 %162)
  %164 = load i64, i64* %9, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %166 = ptrtoint %struct.TYPE_20__* %165 to i32
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* @P_FIRSTKEY, align 4
  %169 = call i64 @PageAddItem(i64 %164, i32 %166, i32 %167, i32 %168, i32 0, i32 0)
  %170 = load i64, i64* @InvalidOffsetNumber, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %149
  %173 = load i32, i32* @PANIC, align 4
  %174 = load i32, i32* %5, align 4
  %175 = call i8* @BufferGetBlockNumber(i32 %174)
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @RelationGetRelationName(i32 %176)
  %178 = call i32 @elog(i32 %173, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i8* %175, i32 %177)
  br label %179

179:                                              ; preds = %172, %149
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %181 = call i32 @P_INCOMPLETE_SPLIT(%struct.TYPE_21__* %180)
  %182 = call i32 @Assert(i32 %181)
  %183 = load i32, i32* @BTP_INCOMPLETE_SPLIT, align 4
  %184 = xor i32 %183, -1
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @MarkBufferDirty(i32 %189)
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @MarkBufferDirty(i32 %191)
  %193 = load i32, i32* %21, align 4
  %194 = call i32 @MarkBufferDirty(i32 %193)
  %195 = load i32, i32* %4, align 4
  %196 = call i64 @RelationNeedsWAL(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %283

198:                                              ; preds = %179
  %199 = load i8*, i8** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  store i8* %199, i8** %200, align 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  store i64 %203, i64* %204, align 8
  %205 = call i32 (...) @XLogBeginInsert()
  %206 = bitcast %struct.TYPE_17__* %24 to i8*
  %207 = load i32, i32* @SizeOfBtreeNewroot, align 4
  %208 = call i32 @XLogRegisterData(i8* %206, i32 %207)
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %211 = call i32 @XLogRegisterBuffer(i32 0, i32 %209, i32 %210)
  %212 = load i32, i32* %5, align 4
  %213 = load i32, i32* @REGBUF_STANDARD, align 4
  %214 = call i32 @XLogRegisterBuffer(i32 1, i32 %212, i32 %213)
  %215 = load i32, i32* %21, align 4
  %216 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %217 = load i32, i32* @REGBUF_STANDARD, align 4
  %218 = or i32 %216, %217
  %219 = call i32 @XLogRegisterBuffer(i32 2, i32 %215, i32 %218)
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %224 = icmp sge i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @Assert(i32 %225)
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  store i64 %229, i64* %230, align 8
  %231 = load i8*, i8** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 6
  store i8* %231, i8** %232, align 8
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 5
  store i64 %235, i64* %236, align 8
  %237 = load i8*, i8** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 4
  store i8* %237, i8** %238, align 8
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 3
  store i64 %241, i64* %242, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  store i32 %245, i32* %246, align 4
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  store i32 %249, i32* %250, align 8
  %251 = bitcast %struct.TYPE_18__* %26 to i8*
  %252 = call i32 @XLogRegisterBufData(i32 2, i8* %251, i32 48)
  %253 = load i64, i64* %9, align 8
  %254 = inttoptr i64 %253 to i8*
  %255 = load i64, i64* %9, align 8
  %256 = inttoptr i64 %255 to %struct.TYPE_19__*
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %254, i64 %259
  %261 = load i64, i64* %9, align 8
  %262 = inttoptr i64 %261 to %struct.TYPE_19__*
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i64, i64* %9, align 8
  %266 = inttoptr i64 %265 to %struct.TYPE_19__*
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %264, %268
  %270 = call i32 @XLogRegisterBufData(i32 0, i8* %260, i32 %269)
  %271 = load i32, i32* @RM_BTREE_ID, align 4
  %272 = load i32, i32* @XLOG_BTREE_NEWROOT, align 4
  %273 = call i32 @XLogInsert(i32 %271, i32 %272)
  store i32 %273, i32* %25, align 4
  %274 = load i64, i64* %8, align 8
  %275 = load i32, i32* %25, align 4
  %276 = call i32 @PageSetLSN(i64 %274, i32 %275)
  %277 = load i64, i64* %9, align 8
  %278 = load i32, i32* %25, align 4
  %279 = call i32 @PageSetLSN(i64 %277, i32 %278)
  %280 = load i64, i64* %22, align 8
  %281 = load i32, i32* %25, align 4
  %282 = call i32 @PageSetLSN(i64 %280, i32 %281)
  br label %283

283:                                              ; preds = %198, %179
  %284 = call i32 (...) @END_CRIT_SECTION()
  %285 = load i32, i32* %4, align 4
  %286 = load i32, i32* %21, align 4
  %287 = call i32 @_bt_relbuf(i32 %285, i32 %286)
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %289 = call i32 @pfree(%struct.TYPE_20__* %288)
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %291 = call i32 @pfree(%struct.TYPE_20__* %290)
  %292 = load i32, i32* %7, align 4
  ret i32 %292
}

declare dso_local i8* @BufferGetBlockNumber(i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i32 @_bt_getbuf(i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @BTPageGetMeta(i64) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @BTreeInnerTupleSetDownLink(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @BTreeTupleSetNAtts(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @PageGetItemId(i64, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i64 @PageGetItem(i64, i32) #1

declare dso_local %struct.TYPE_20__* @CopyIndexTuple(%struct.TYPE_20__*) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @_bt_upgrademetapage(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BTreeTupleGetNAtts(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @PageAddItem(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @IndexRelationGetNumberOfKeyAttributes(i32) #1

declare dso_local i32 @P_INCOMPLETE_SPLIT(%struct.TYPE_21__*) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
