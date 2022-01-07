; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistdoinsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistdoinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i32, i32, %struct.TYPE_17__*, i8*, i8* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__*, i8*, i8*, i32 }

@GIST_ROOT_BLKNO = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i8* null, align 8
@GIST_UNLOCK = common dso_local global i32 0, align 4
@GIST_SHARE = common dso_local global i32 0, align 4
@GIST_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"index \22%s\22 contains an inner tuple marked as invalid\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"This is caused by an incomplete page split at crash recovery before upgrading to PostgreSQL 9.1.\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Please REINDEX it.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gistdoinsert(i8* %0, %struct.TYPE_15__* %1, i32 %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_17__, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_16__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %18, align 4
  %23 = call i32 @memset(%struct.TYPE_16__* %17, i32 0, i32 40)
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %36, align 8
  %37 = load i8*, i8** @InvalidOffsetNumber, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 6
  store i8* %37, i8** %38, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %39, align 8
  br label %40

40:                                               ; preds = %428, %393, %363, %304, %280, %193, %159, %157, %6
  br label %41

41:                                               ; preds = %55, %40
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GIST_UNLOCK, align 4
  %54 = call i32 @LockBuffer(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %46
  store i32 0, i32* %18, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ReleaseBuffer(i32 %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %63, align 8
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @XLogRecPtrIsInvalid(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @ReadBuffer(i8* %72, i64 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %64
  %80 = load i32, i32* %18, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %79
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GIST_SHARE, align 4
  %87 = call i32 @LockBuffer(i32 %85, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @gistcheckpage(i8* %89, i32 %92)
  br label %94

94:                                               ; preds = %82, %79
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @BufferGetPage(i32 %97)
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 5
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @PageGetLSN(i8* %107)
  br label %114

109:                                              ; preds = %94
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @BufferGetLSNAtomic(i32 %112)
  br label %114

114:                                              ; preds = %109, %104
  %115 = phi i64 [ %108, %104 ], [ %113, %109 ]
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @RelationNeedsWAL(i8* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %114
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @XLogRecPtrIsInvalid(i64 %125)
  %127 = icmp ne i64 %126, 0
  %128 = xor i1 %127, true
  br label %129

129:                                              ; preds = %122, %114
  %130 = phi i1 [ true, %114 ], [ %128, %122 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @Assert(i32 %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 5
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @GistFollowRight(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %129
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %159, label %141

141:                                              ; preds = %138
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @GIST_UNLOCK, align 4
  %146 = call i32 @LockBuffer(i32 %144, i32 %145)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %151 = call i32 @LockBuffer(i32 %149, i32 %150)
  store i32 1, i32* %18, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 5
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @GistFollowRight(i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %141
  br label %40

158:                                              ; preds = %141
  br label %159

159:                                              ; preds = %158, %138
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @gistfixsplit(%struct.TYPE_16__* %17, i32* %160)
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @UnlockReleaseBuffer(i32 %164)
  store i32 0, i32* %18, align 4
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  store %struct.TYPE_17__* %168, %struct.TYPE_17__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store %struct.TYPE_17__* %168, %struct.TYPE_17__** %169, align 8
  br label %40

170:                                              ; preds = %129
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %170
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 4
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 5
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @GistPageGetNSN(i8* %184)
  %186 = icmp slt i64 %181, %185
  br i1 %186, label %193, label %187

187:                                              ; preds = %176, %170
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 5
  %190 = load i8*, i8** %189, align 8
  %191 = call i64 @GistPageIsDeleted(i8* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %187, %176
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @UnlockReleaseBuffer(i32 %196)
  store i32 0, i32* %18, align 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %199, align 8
  store %struct.TYPE_17__* %200, %struct.TYPE_17__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store %struct.TYPE_17__* %200, %struct.TYPE_17__** %201, align 8
  br label %40

202:                                              ; preds = %187
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 5
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @GistPageIsLeaf(i8* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %325, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 5
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %215 = load i32*, i32** %10, align 8
  %216 = call i8* @gistchoose(i8* %210, i8* %213, %struct.TYPE_15__* %214, i32* %215)
  store i8* %216, i8** %22, align 8
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 5
  %219 = load i8*, i8** %218, align 8
  %220 = load i8*, i8** %22, align 8
  %221 = call i32 @PageGetItemId(i8* %219, i8* %220)
  store i32 %221, i32* %13, align 4
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 5
  %224 = load i8*, i8** %223, align 8
  %225 = load i32, i32* %13, align 4
  %226 = call i64 @PageGetItem(i8* %224, i32 %225)
  %227 = inttoptr i64 %226 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %227, %struct.TYPE_15__** %14, align 8
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = call i64 @ItemPointerGetBlockNumber(i32* %229)
  store i64 %230, i64* %19, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %232 = call i64 @GistTupleIsInvalid(%struct.TYPE_15__* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %208
  %235 = load i32, i32* @ERROR, align 4
  %236 = load i8*, i8** %7, align 8
  %237 = call i32 @RelationGetRelationName(i8* %236)
  %238 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %237)
  %239 = call i32 @errdetail(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0))
  %240 = call i32 @errhint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %241 = call i32 @ereport(i32 %235, i32 %240)
  br label %242

242:                                              ; preds = %234, %208
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %247 = load i32*, i32** %10, align 8
  %248 = call %struct.TYPE_15__* @gistgetadjusted(i8* %244, %struct.TYPE_15__* %245, %struct.TYPE_15__* %246, i32* %247)
  store %struct.TYPE_15__* %248, %struct.TYPE_15__** %20, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %250 = icmp ne %struct.TYPE_15__* %249, null
  br i1 %250, label %251, label %306

251:                                              ; preds = %242
  %252 = load i32, i32* %18, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %282, label %254

254:                                              ; preds = %251
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @GIST_UNLOCK, align 4
  %259 = call i32 @LockBuffer(i32 %257, i32 %258)
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %264 = call i32 @LockBuffer(i32 %262, i32 %263)
  store i32 1, i32* %18, align 4
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = call i64 @BufferGetPage(i32 %267)
  %269 = inttoptr i64 %268 to i8*
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 5
  store i8* %269, i8** %271, align 8
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 5
  %274 = load i8*, i8** %273, align 8
  %275 = call i64 @PageGetLSN(i8* %274)
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %275, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %254
  br label %40

281:                                              ; preds = %254
  br label %282

282:                                              ; preds = %281, %251
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %284 = load i32*, i32** %10, align 8
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %286 = load i8*, i8** %22, align 8
  %287 = call i64 @gistinserttuple(%struct.TYPE_16__* %17, %struct.TYPE_17__* %283, i32* %284, %struct.TYPE_15__* %285, i8* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %305

289:                                              ; preds = %282
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %304

295:                                              ; preds = %289
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @UnlockReleaseBuffer(i32 %298)
  store i32 0, i32* %18, align 4
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 4
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %301, align 8
  store %struct.TYPE_17__* %302, %struct.TYPE_17__** %16, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store %struct.TYPE_17__* %302, %struct.TYPE_17__** %303, align 8
  br label %304

304:                                              ; preds = %295, %289
  br label %40

305:                                              ; preds = %282
  br label %306

306:                                              ; preds = %305, %242
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @GIST_UNLOCK, align 4
  %311 = call i32 @LockBuffer(i32 %309, i32 %310)
  store i32 0, i32* %18, align 4
  %312 = call i64 @palloc0(i32 48)
  %313 = inttoptr i64 %312 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %313, %struct.TYPE_17__** %21, align 8
  %314 = load i64, i64* %19, align 8
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 0
  store i64 %314, i64* %316, align 8
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 4
  store %struct.TYPE_17__* %317, %struct.TYPE_17__** %319, align 8
  %320 = load i8*, i8** %22, align 8
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 6
  store i8* %320, i8** %322, align 8
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %323, %struct.TYPE_17__** %16, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store %struct.TYPE_17__* %323, %struct.TYPE_17__** %324, align 8
  br label %428

325:                                              ; preds = %202
  %326 = load i32, i32* %18, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %404, label %328

328:                                              ; preds = %325
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @GIST_UNLOCK, align 4
  %333 = call i32 @LockBuffer(i32 %331, i32 %332)
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %338 = call i32 @LockBuffer(i32 %336, i32 %337)
  store i32 1, i32* %18, align 4
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = call i64 @BufferGetPage(i32 %341)
  %343 = inttoptr i64 %342 to i8*
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %344, i32 0, i32 5
  store i8* %343, i8** %345, align 8
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 5
  %348 = load i8*, i8** %347, align 8
  %349 = call i64 @PageGetLSN(i8* %348)
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 1
  store i64 %349, i64* %351, align 8
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %370

357:                                              ; preds = %328
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %359 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %358, i32 0, i32 5
  %360 = load i8*, i8** %359, align 8
  %361 = call i32 @GistPageIsLeaf(i8* %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %369, label %363

363:                                              ; preds = %357
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @GIST_UNLOCK, align 4
  %368 = call i32 @LockBuffer(i32 %366, i32 %367)
  store i32 0, i32* %18, align 4
  br label %40

369:                                              ; preds = %357
  br label %403

370:                                              ; preds = %328
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 5
  %373 = load i8*, i8** %372, align 8
  %374 = call i64 @GistFollowRight(i8* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %387, label %376

376:                                              ; preds = %370
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 4
  %379 = load %struct.TYPE_17__*, %struct.TYPE_17__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 5
  %384 = load i8*, i8** %383, align 8
  %385 = call i64 @GistPageGetNSN(i8* %384)
  %386 = icmp slt i64 %381, %385
  br i1 %386, label %387, label %402

387:                                              ; preds = %376, %370
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 5
  %390 = load i8*, i8** %389, align 8
  %391 = call i64 @GistPageIsDeleted(i8* %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %402

393:                                              ; preds = %387
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @UnlockReleaseBuffer(i32 %396)
  store i32 0, i32* %18, align 4
  %398 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 4
  %400 = load %struct.TYPE_17__*, %struct.TYPE_17__** %399, align 8
  store %struct.TYPE_17__* %400, %struct.TYPE_17__** %16, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store %struct.TYPE_17__* %400, %struct.TYPE_17__** %401, align 8
  br label %40

402:                                              ; preds = %387, %376
  br label %403

403:                                              ; preds = %402, %369
  br label %404

404:                                              ; preds = %403, %325
  %405 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %406 = load i32*, i32** %10, align 8
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %408 = load i8*, i8** @InvalidOffsetNumber, align 8
  %409 = call i64 @gistinserttuple(%struct.TYPE_16__* %17, %struct.TYPE_17__* %405, i32* %406, %struct.TYPE_15__* %407, i8* %408)
  %410 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @GIST_UNLOCK, align 4
  %414 = call i32 @LockBuffer(i32 %412, i32 %413)
  br label %415

415:                                              ; preds = %423, %404
  %416 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %417 = icmp ne %struct.TYPE_17__* %416, null
  br i1 %417, label %418, label %427

418:                                              ; preds = %415
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @ReleaseBuffer(i32 %421)
  br label %423

423:                                              ; preds = %418
  %424 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %425 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %424, i32 0, i32 4
  %426 = load %struct.TYPE_17__*, %struct.TYPE_17__** %425, align 8
  store %struct.TYPE_17__* %426, %struct.TYPE_17__** %16, align 8
  br label %415

427:                                              ; preds = %415
  br label %429

428:                                              ; preds = %306
  br label %40

429:                                              ; preds = %427
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i64 @XLogRecPtrIsInvalid(i64) #1

declare dso_local i32 @ReadBuffer(i8*, i64) #1

declare dso_local i32 @gistcheckpage(i8*, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetLSN(i8*) #1

declare dso_local i64 @BufferGetLSNAtomic(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RelationNeedsWAL(i8*) #1

declare dso_local i64 @GistFollowRight(i8*) #1

declare dso_local i32 @gistfixsplit(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @GistPageGetNSN(i8*) #1

declare dso_local i64 @GistPageIsDeleted(i8*) #1

declare dso_local i32 @GistPageIsLeaf(i8*) #1

declare dso_local i8* @gistchoose(i8*, i8*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @PageGetItemId(i8*, i8*) #1

declare dso_local i64 @PageGetItem(i8*, i32) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @GistTupleIsInvalid(%struct.TYPE_15__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local %struct.TYPE_15__* @gistgetadjusted(i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @gistinserttuple(%struct.TYPE_16__*, %struct.TYPE_17__*, i32*, %struct.TYPE_15__*, i8*) #1

declare dso_local i64 @palloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
