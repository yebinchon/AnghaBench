; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_spgAddNodeAction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_spgAddNodeAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_20__ = type { i64, i32, i64, i64, i32, i64, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32 }

@InvalidOffsetNumber = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to add item of size %u to SPGiST index page\00", align 1
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_SPGIST_ID = common dso_local global i32 0, align 4
@XLOG_SPGIST_ADD_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot enlarge root tuple any more\00", align 1
@InvalidBuffer = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"SPGiST new buffer shouldn't be same as old buffer\00", align 1
@SPGIST_PLACEHOLDER = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@SPGIST_REDIRECT = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32)* @spgAddNodeAction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spgAddNodeAction(i32 %0, %struct.TYPE_21__* %1, %struct.TYPE_22__* %2, %struct.TYPE_24__* %3, %struct.TYPE_24__* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_20__, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.TYPE_24__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* %4, %struct.TYPE_24__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @SpGistPageStoresNulls(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call %struct.TYPE_22__* @addNode(%struct.TYPE_21__* %30, %struct.TYPE_22__* %31, i32 %32, i32 %33)
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %15, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @STORE_STATE(%struct.TYPE_21__* %35, i32 %37)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  store i32 -1, i32* %43, align 8
  %44 = load i8*, i8** @InvalidOffsetNumber, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load i8*, i8** @InvalidOffsetNumber, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 3
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 4
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @PageGetExactFreeSpace(i32 %54)
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = icmp sge i64 %55, %62
  br i1 %63, label %64, label %134

64:                                               ; preds = %7
  %65 = call i32 (...) @START_CRIT_SECTION()
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @PageIndexTupleDelete(i32 %68, i64 %71)
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %77 = ptrtoint %struct.TYPE_22__* %76 to i32
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @PageAddItem(i32 %75, i32 %77, i64 %80, i64 %83, i32 0, i32 0)
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %64
  %90 = load i32, i32* @ERROR, align 4
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i32, i8*, ...) @elog(i32 %90, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %89, %64
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @MarkBufferDirty(i64 %98)
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @RelationNeedsWAL(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %95
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %132, label %108

108:                                              ; preds = %103
  %109 = call i32 (...) @XLogBeginInsert()
  %110 = bitcast %struct.TYPE_20__* %16 to i8*
  %111 = call i32 @XLogRegisterData(i8* %110, i32 56)
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %113 = bitcast %struct.TYPE_22__* %112 to i8*
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @XLogRegisterData(i8* %113, i32 %117)
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @REGBUF_STANDARD, align 4
  %123 = call i32 @XLogRegisterBuffer(i32 0, i64 %121, i32 %122)
  %124 = load i32, i32* @RM_SPGIST_ID, align 4
  %125 = load i32, i32* @XLOG_SPGIST_ADD_NODE, align 4
  %126 = call i32 @XLogInsert(i32 %124, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @PageSetLSN(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %108, %103, %95
  %133 = call i32 (...) @END_CRIT_SECTION()
  br label %405

134:                                              ; preds = %7
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @SpGistBlockIsRoot(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* @ERROR, align 4
  %142 = call i32 (i32, i8*, ...) @elog(i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %134
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @InvalidBuffer, align 8
  %148 = icmp ne i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @Assert(i32 %149)
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %152 = bitcast %struct.TYPE_24__* %19 to i8*
  %153 = bitcast %struct.TYPE_24__* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 40, i1 false)
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  store i64 %156, i64* %157, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 5
  store i64 %160, i64* %161, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @GBUF_INNER_PARITY(i64 %165)
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, 4
  %171 = trunc i64 %170 to i32
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 4
  %173 = call i64 @SpGistGetBuffer(i32 %162, i32 %166, i32 %171, i32* %172)
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i64 @BufferGetBlockNumber(i64 %178)
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 2
  store i64 %179, i64* %181, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @BufferGetPage(i64 %184)
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %190, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %143
  %195 = load i32, i32* @ERROR, align 4
  %196 = call i32 (i32, i8*, ...) @elog(i32 %195, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %143
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %200, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  store i32 0, i32* %205, align 8
  br label %219

206:                                              ; preds = %197
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %209, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  store i32 1, i32* %215, align 8
  br label %218

216:                                              ; preds = %206
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  store i32 2, i32* %217, align 8
  br label %218

218:                                              ; preds = %216, %214
  br label %219

219:                                              ; preds = %218, %204
  %220 = call i32 (...) @START_CRIT_SECTION()
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %226 = ptrtoint %struct.TYPE_22__* %225 to i32
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i64 @SpGistPageAddNewItem(%struct.TYPE_21__* %221, i32 %224, i32 %226, i32 %230, i32* null, i32 0)
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 3
  store i64 %231, i64* %234, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @MarkBufferDirty(i64 %237)
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @saveNodeLink(i32 %239, %struct.TYPE_24__* %240, i64 %243, i64 %246)
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %219
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %254 = load i32, i32* @SPGIST_PLACEHOLDER, align 4
  %255 = load i64, i64* @InvalidBlockNumber, align 8
  %256 = load i8*, i8** @InvalidOffsetNumber, align 8
  %257 = call %struct.TYPE_23__* @spgFormDeadTuple(%struct.TYPE_21__* %253, i32 %254, i64 %255, i8* %256)
  store %struct.TYPE_23__* %257, %struct.TYPE_23__** %18, align 8
  br label %269

258:                                              ; preds = %219
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %260 = load i32, i32* @SPGIST_REDIRECT, align 4
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = inttoptr i64 %266 to i8*
  %268 = call %struct.TYPE_23__* @spgFormDeadTuple(%struct.TYPE_21__* %259, i32 %260, i64 %263, i8* %267)
  store %struct.TYPE_23__* %268, %struct.TYPE_23__** %18, align 8
  br label %269

269:                                              ; preds = %258, %252
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @PageIndexTupleDelete(i32 %271, i64 %273)
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %278 = ptrtoint %struct.TYPE_23__* %277 to i32
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i64 @PageAddItem(i32 %276, i32 %278, i64 %281, i64 %283, i32 0, i32 0)
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %284, %286
  br i1 %287, label %288, label %294

288:                                              ; preds = %269
  %289 = load i32, i32* @ERROR, align 4
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = call i32 (i32, i8*, ...) @elog(i32 %289, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %292)
  br label %294

294:                                              ; preds = %288, %269
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = call %struct.TYPE_19__* @SpGistPageGetOpaque(i32 %301)
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %303, align 4
  br label %313

306:                                              ; preds = %294
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = call %struct.TYPE_19__* @SpGistPageGetOpaque(i32 %308)
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %306, %299
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = call i32 @MarkBufferDirty(i64 %315)
  %317 = load i32, i32* %8, align 4
  %318 = call i64 @RelationNeedsWAL(i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %381

320:                                              ; preds = %313
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %381, label %325

325:                                              ; preds = %320
  %326 = call i32 (...) @XLogBeginInsert()
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = load i32, i32* @REGBUF_STANDARD, align 4
  %330 = call i32 @XLogRegisterBuffer(i32 0, i64 %328, i32 %329)
  %331 = load i32, i32* @REGBUF_STANDARD, align 4
  store i32 %331, i32* %21, align 4
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %325
  %336 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %337 = load i32, i32* %21, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %21, align 4
  br label %339

339:                                              ; preds = %335, %325
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = load i32, i32* %21, align 4
  %344 = call i32 @XLogRegisterBuffer(i32 1, i64 %342, i32 %343)
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = icmp eq i32 %346, 2
  br i1 %347, label %348, label %354

348:                                              ; preds = %339
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = load i32, i32* @REGBUF_STANDARD, align 4
  %353 = call i32 @XLogRegisterBuffer(i32 2, i64 %351, i32 %352)
  br label %354

354:                                              ; preds = %348, %339
  %355 = bitcast %struct.TYPE_20__* %16 to i8*
  %356 = call i32 @XLogRegisterData(i8* %355, i32 56)
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %358 = bitcast %struct.TYPE_22__* %357 to i8*
  %359 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %360 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = trunc i64 %361 to i32
  %363 = call i32 @XLogRegisterData(i8* %358, i32 %362)
  %364 = load i32, i32* @RM_SPGIST_ID, align 4
  %365 = load i32, i32* @XLOG_SPGIST_ADD_NODE, align 4
  %366 = call i32 @XLogInsert(i32 %364, i32 %365)
  store i32 %366, i32* %20, align 4
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* %20, align 4
  %371 = call i32 @PageSetLSN(i32 %369, i32 %370)
  %372 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* %20, align 4
  %376 = call i32 @PageSetLSN(i32 %374, i32 %375)
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* %20, align 4
  %380 = call i32 @PageSetLSN(i32 %378, i32 %379)
  br label %381

381:                                              ; preds = %354, %320, %313
  %382 = call i32 (...) @END_CRIT_SECTION()
  %383 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %384, %387
  br i1 %388, label %389, label %404

389:                                              ; preds = %381
  %390 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %393 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %391, %394
  br i1 %395, label %396, label %404

396:                                              ; preds = %389
  %397 = load i32, i32* %8, align 4
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = call i32 @SpGistSetLastUsedPage(i32 %397, i64 %399)
  %401 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = call i32 @UnlockReleaseBuffer(i64 %402)
  br label %404

404:                                              ; preds = %396, %389, %381
  br label %405

405:                                              ; preds = %404, %132
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SpGistPageStoresNulls(i32) #1

declare dso_local %struct.TYPE_22__* @addNode(%struct.TYPE_21__*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @STORE_STATE(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @PageGetExactFreeSpace(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @PageIndexTupleDelete(i32, i64) #1

declare dso_local i64 @PageAddItem(i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i64 @SpGistBlockIsRoot(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @SpGistGetBuffer(i32, i32, i32, i32*) #1

declare dso_local i32 @GBUF_INNER_PARITY(i64) #1

declare dso_local i64 @BufferGetBlockNumber(i64) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i64 @SpGistPageAddNewItem(%struct.TYPE_21__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @saveNodeLink(i32, %struct.TYPE_24__*, i64, i64) #1

declare dso_local %struct.TYPE_23__* @spgFormDeadTuple(%struct.TYPE_21__*, i32, i64, i8*) #1

declare dso_local %struct.TYPE_19__* @SpGistPageGetOpaque(i32) #1

declare dso_local i32 @SpGistSetLastUsedPage(i32, i64) #1

declare dso_local i32 @UnlockReleaseBuffer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
