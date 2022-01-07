; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_addLeafTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_addLeafTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64, i8* }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i64, i64 }

@InvalidOffsetNumber = common dso_local global i64 0, align 8
@InvalidBuffer = common dso_local global i64 0, align 8
@SPGIST_LIVE = common dso_local global i64 0, align 8
@SPGIST_DEAD = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to add item of size %u to SPGiST index page\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unexpected SPGiST tuple state: %d\00", align 1
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@RM_SPGIST_ID = common dso_local global i32 0, align 4
@XLOG_SPGIST_ADD_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32)* @addLeafTuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addLeafTuple(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2, %struct.TYPE_14__* %3, %struct.TYPE_14__* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %13, align 4
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i64, i64* @InvalidOffsetNumber, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i64 %24, i64* %25, align 8
  %26 = load i64, i64* @InvalidOffsetNumber, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* @InvalidOffsetNumber, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = call i32 (...) @START_CRIT_SECTION()
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @InvalidOffsetNumber, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %7
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @SpGistBlockIsRoot(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %37, %7
  %44 = load i64, i64* @InvalidOffsetNumber, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = ptrtoint %struct.TYPE_13__* %52 to i32
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @SpGistPageAddNewItem(%struct.TYPE_12__* %48, i32 %51, i32 %53, i32 %56, i32* null, i32 0)
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i64 %63, i64* %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @InvalidBuffer, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %43
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  store i64 %73, i64* %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 5
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @saveNodeLink(i32 %79, %struct.TYPE_14__* %80, i32 %83, i64 %86)
  br label %88

88:                                               ; preds = %70, %43
  br label %203

89:                                               ; preds = %37
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @PageGetItemId(i32 %95, i64 %98)
  %100 = call i64 @PageGetItem(i32 %92, i32 %99)
  %101 = inttoptr i64 %100 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %16, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SPGIST_LIVE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %145

107:                                              ; preds = %89
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %118 = ptrtoint %struct.TYPE_13__* %117 to i32
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @SpGistPageAddNewItem(%struct.TYPE_12__* %113, i32 %116, i32 %118, i32 %121, i32* null, i32 0)
  store i8* %122, i8** %17, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @PageGetItemId(i32 %128, i64 %131)
  %133 = call i64 @PageGetItem(i32 %125, i32 %132)
  %134 = inttoptr i64 %133 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %134, %struct.TYPE_13__** %16, align 8
  %135 = load i8*, i8** %17, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** %17, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i64 %139, i64* %140, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  store i64 %143, i64* %144, align 8
  br label %202

145:                                              ; preds = %89
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SPGIST_DEAD, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %194

151:                                              ; preds = %145
  %152 = load i64, i64* @InvalidOffsetNumber, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @PageIndexTupleDelete(i32 %158, i64 %161)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %167 = ptrtoint %struct.TYPE_13__* %166 to i32
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @PageAddItem(i32 %165, i32 %167, i32 %170, i64 %173, i32 0, i32 0)
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %174, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %151
  %180 = load i32, i32* @ERROR, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @elog(i32 %180, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %179, %151
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i64 %188, i64* %189, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  store i64 %192, i64* %193, align 8
  br label %201

194:                                              ; preds = %145
  %195 = load i32, i32* @ERROR, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = call i32 @elog(i32 %195, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %194, %185
  br label %202

202:                                              ; preds = %201, %107
  br label %203

203:                                              ; preds = %202, %88
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @MarkBufferDirty(i64 %206)
  %208 = load i32, i32* %8, align 4
  %209 = call i64 @RelationNeedsWAL(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %270

211:                                              ; preds = %203
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %270, label %216

216:                                              ; preds = %211
  %217 = call i32 (...) @XLogBeginInsert()
  %218 = bitcast %struct.TYPE_11__* %15 to i8*
  %219 = call i32 @XLogRegisterData(i8* %218, i32 40)
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %221 = bitcast %struct.TYPE_13__* %220 to i8*
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @XLogRegisterData(i8* %221, i32 %224)
  %226 = load i32, i32* @REGBUF_STANDARD, align 4
  store i32 %226, i32* %19, align 4
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %216
  %231 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %232 = load i32, i32* %19, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %19, align 4
  br label %234

234:                                              ; preds = %230, %216
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %19, align 4
  %239 = call i32 @XLogRegisterBuffer(i32 0, i64 %237, i32 %238)
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @InvalidOffsetNumber, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %234
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* @REGBUF_STANDARD, align 4
  %249 = call i32 @XLogRegisterBuffer(i32 1, i64 %247, i32 %248)
  br label %250

250:                                              ; preds = %244, %234
  %251 = load i32, i32* @RM_SPGIST_ID, align 4
  %252 = load i32, i32* @XLOG_SPGIST_ADD_LEAF, align 4
  %253 = call i32 @XLogInsert(i32 %251, i32 %252)
  store i32 %253, i32* %18, align 4
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %18, align 4
  %258 = call i32 @PageSetLSN(i32 %256, i32 %257)
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @InvalidOffsetNumber, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %250
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %18, align 4
  %268 = call i32 @PageSetLSN(i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %263, %250
  br label %270

270:                                              ; preds = %269, %211, %203
  %271 = call i32 (...) @END_CRIT_SECTION()
  ret void
}

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i64 @SpGistBlockIsRoot(i32) #1

declare dso_local i8* @SpGistPageAddNewItem(%struct.TYPE_12__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @saveNodeLink(i32, %struct.TYPE_14__*, i32, i64) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @PageIndexTupleDelete(i32, i64) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
