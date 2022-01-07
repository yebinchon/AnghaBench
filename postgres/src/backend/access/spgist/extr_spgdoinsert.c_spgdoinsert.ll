; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_spgdoinsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_spgdoinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_67__ = type { i32* }
%struct.TYPE_75__ = type { %struct.TYPE_72__, %struct.TYPE_73__, %struct.TYPE_71__ }
%struct.TYPE_72__ = type { i64 }
%struct.TYPE_73__ = type { i32 }
%struct.TYPE_71__ = type { i64, i32 }
%struct.TYPE_66__ = type { i64, i64, i32, i32, i32* }
%struct.TYPE_76__ = type { i32 }
%struct.TYPE_65__ = type { i64, i32, i64 }
%struct.TYPE_74__ = type { i32, i32, i32, i32, %struct.TYPE_70__, i32*, i32, i64, i8*, i8* }
%struct.TYPE_70__ = type { %struct.TYPE_69__, %struct.TYPE_68__ }
%struct.TYPE_69__ = type { i32, i32 }
%struct.TYPE_68__ = type { i32, i32, i8* }

@SPGIST_CHOOSE_PROC = common dso_local global i32 0, align 4
@SPGIST_COMPRESS_PROC = common dso_local global i32 0, align 4
@SGLTHDRSZ = common dso_local global i32 0, align 4
@SGDTSIZE = common dso_local global i32 0, align 4
@SPGIST_PAGE_CAPACITY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"index row size %zu exceeds maximum %zu for index \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Values larger than a buffer page cannot be indexed.\00", align 1
@SPGIST_NULL_BLKNO = common dso_local global i64 0, align 8
@SPGIST_ROOT_BLKNO = common dso_local global i64 0, align 8
@InvalidBuffer = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@GBUF_LEAF = common dso_local global i32 0, align 4
@GBUF_NULLS = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"SPGiST index page %u has wrong nulls flag\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"cannot add a node to an allTheSame inner tuple\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"cannot add a node to an inner tuple without node labels\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"unrecognized SPGiST choose result: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spgdoinsert(%struct.TYPE_67__* %0, %struct.TYPE_75__* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_67__*, align 8
  %8 = alloca %struct.TYPE_75__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_66__, align 8
  %16 = alloca %struct.TYPE_66__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_76__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_65__*, align 8
  %24 = alloca %struct.TYPE_74__, align 8
  %25 = alloca %struct.TYPE_74__, align 8
  store %struct.TYPE_67__* %0, %struct.TYPE_67__** %7, align 8
  store %struct.TYPE_75__* %1, %struct.TYPE_75__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %17, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %5
  %29 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %30 = load i32, i32* @SPGIST_CHOOSE_PROC, align 4
  %31 = call i32* @index_getprocinfo(%struct.TYPE_67__* %29, i32 1, i32 %30)
  store i32* %31, i32** %17, align 8
  br label %32

32:                                               ; preds = %28, %5
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %78, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %37 = load i32, i32* @SPGIST_COMPRESS_PROC, align 4
  %38 = call i32 @index_getprocid(%struct.TYPE_67__* %36, i32 1, i32 %37)
  %39 = call i64 @OidIsValid(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  store i32* null, i32** %18, align 8
  %42 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %43 = load i32, i32* @SPGIST_COMPRESS_PROC, align 4
  %44 = call i32* @index_getprocinfo(%struct.TYPE_67__* %42, i32 1, i32 %43)
  store i32* %44, i32** %18, align 8
  %45 = load i32*, i32** %18, align 8
  %46 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* @FunctionCall1Coll(i32* %45, i32 %50, i8* %51)
  store i8* %52, i8** %13, align 8
  br label %77

53:                                               ; preds = %35
  %54 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %57, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  %65 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %53
  %71 = load i8*, i8** %10, align 8
  %72 = call %struct.TYPE_74__* @PG_DETOAST_DATUM(i8* %71)
  %73 = call i8* @PointerGetDatum(%struct.TYPE_74__* %72)
  store i8* %73, i8** %13, align 8
  br label %76

74:                                               ; preds = %53
  %75 = load i8*, i8** %10, align 8
  store i8* %75, i8** %13, align 8
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %41
  br label %79

78:                                               ; preds = %32
  store i8* null, i8** %13, align 8
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @SGLTHDRSZ, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, 4
  %86 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %86, i32 0, i32 0
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @SpGistGetTypeSize(%struct.TYPE_72__* %87, i8* %88)
  %90 = sext i32 %89 to i64
  %91 = add i64 %85, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %14, align 4
  br label %98

93:                                               ; preds = %79
  %94 = load i32, i32* @SGDTSIZE, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, 4
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %93, %82
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @SPGIST_PAGE_CAPACITY, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %98
  %103 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %125, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @ERROR, align 4
  %110 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %111 = call i32 @errcode(i32 %110)
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = load i32, i32* @SPGIST_PAGE_CAPACITY, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %121 = call i32 @RelationGetRelationName(%struct.TYPE_67__* %120)
  %122 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %119, i32 %121)
  %123 = call i32 @errhint(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %124 = call i32 @ereport(i32 %109, i32 %123)
  br label %125

125:                                              ; preds = %108, %102, %98
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i64, i64* @SPGIST_NULL_BLKNO, align 8
  br label %132

130:                                              ; preds = %125
  %131 = load i64, i64* @SPGIST_ROOT_BLKNO, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i64 [ %129, %128 ], [ %131, %130 ]
  %134 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 0
  store i64 %133, i64* %134, align 8
  %135 = load i64, i64* @InvalidBuffer, align 8
  %136 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  store i64 %135, i64* %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 4
  store i32* null, i32** %137, align 8
  %138 = load i32, i32* @FirstOffsetNumber, align 4
  %139 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 3
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 2
  store i32 -1, i32* %140, align 8
  %141 = load i64, i64* @InvalidBlockNumber, align 8
  %142 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 0
  store i64 %141, i64* %142, align 8
  %143 = load i64, i64* @InvalidBuffer, align 8
  %144 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 1
  store i64 %143, i64* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 4
  store i32* null, i32** %145, align 8
  %146 = load i32, i32* @InvalidOffsetNumber, align 4
  %147 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 3
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 2
  store i32 -1, i32* %148, align 8
  br label %149

149:                                              ; preds = %474, %132
  store i32 0, i32* %19, align 4
  %150 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %151 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @InvalidBlockNumber, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %149
  %156 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %157 = load i32, i32* @GBUF_LEAF, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* @GBUF_NULLS, align 4
  br label %163

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %160
  %164 = phi i32 [ %161, %160 ], [ 0, %162 ]
  %165 = or i32 %157, %164
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @SPGIST_PAGE_CAPACITY, align 4
  %168 = call i32 @Min(i32 %166, i32 %167)
  %169 = call i64 @SpGistGetBuffer(%struct.TYPE_67__* %156, i32 %165, i32 %168, i32* %19)
  %170 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  store i64 %169, i64* %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @BufferGetBlockNumber(i64 %172)
  %174 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 0
  store i64 %173, i64* %174, align 8
  br label %222

175:                                              ; preds = %149
  %176 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @InvalidBuffer, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %175
  %181 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i8* @ReadBuffer(%struct.TYPE_67__* %181, i64 %183)
  %185 = ptrtoint i8* %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  store i64 %185, i64* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %190 = call i32 @LockBuffer(i64 %188, i32 %189)
  br label %221

191:                                              ; preds = %175
  %192 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %193, %195
  br i1 %196, label %197, label %216

197:                                              ; preds = %191
  %198 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i8* @ReadBuffer(%struct.TYPE_67__* %198, i64 %200)
  %202 = ptrtoint i8* %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  store i64 %202, i64* %203, align 8
  %204 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @ConditionalLockBuffer(i64 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %197
  %209 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @ReleaseBuffer(i64 %210)
  %212 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @UnlockReleaseBuffer(i64 %213)
  store i32 0, i32* %6, align 4
  br label %508

215:                                              ; preds = %197
  br label %220

216:                                              ; preds = %191
  %217 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  store i64 %218, i64* %219, align 8
  br label %220

220:                                              ; preds = %216, %215
  br label %221

221:                                              ; preds = %220, %180
  br label %222

222:                                              ; preds = %221, %163
  %223 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = call i32* @BufferGetPage(i64 %224)
  %226 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 4
  store i32* %225, i32** %226, align 8
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %222
  %230 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @SpGistPageStoresNulls(i32* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %244, label %239

234:                                              ; preds = %222
  %235 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = call i32 @SpGistPageStoresNulls(i32* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %234, %229
  %240 = load i32, i32* @ERROR, align 4
  %241 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = call i32 (i32, i8*, ...) @elog(i32 %240, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %242)
  br label %244

244:                                              ; preds = %239, %234, %229
  %245 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = call i64 @SpGistPageIsLeaf(i32* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %325

249:                                              ; preds = %244
  %250 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load i8*, i8** %13, align 8
  %253 = load i32, i32* %11, align 4
  %254 = call %struct.TYPE_76__* @spgFormLeafTuple(%struct.TYPE_75__* %250, i32 %251, i8* %252, i32 %253)
  store %struct.TYPE_76__* %254, %struct.TYPE_76__** %20, align 8
  %255 = load %struct.TYPE_76__*, %struct.TYPE_76__** %20, align 8
  %256 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = add i64 %258, 4
  %260 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 4
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @SpGistPageGetFreeSpace(i32* %261, i32 1)
  %263 = sext i32 %262 to i64
  %264 = icmp ule i64 %259, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %249
  %266 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %267 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %268 = load %struct.TYPE_76__*, %struct.TYPE_76__** %20, align 8
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* %19, align 4
  %271 = call i32 @addLeafTuple(%struct.TYPE_67__* %266, %struct.TYPE_75__* %267, %struct.TYPE_76__* %268, %struct.TYPE_66__* %15, %struct.TYPE_66__* %16, i32 %269, i32 %270)
  br label %475

272:                                              ; preds = %249
  %273 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %274 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %275 = call i32 @checkSplitConditions(%struct.TYPE_67__* %273, %struct.TYPE_75__* %274, %struct.TYPE_66__* %15, i32* %21)
  store i32 %275, i32* %22, align 4
  %276 = load i32, i32* @SPGIST_PAGE_CAPACITY, align 4
  %277 = sdiv i32 %276, 2
  %278 = icmp slt i32 %275, %277
  br i1 %278, label %279, label %305

279:                                              ; preds = %272
  %280 = load i32, i32* %21, align 4
  %281 = icmp slt i32 %280, 64
  br i1 %281, label %282, label %305

282:                                              ; preds = %279
  %283 = load %struct.TYPE_76__*, %struct.TYPE_76__** %20, align 8
  %284 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = add i64 %286, 4
  %288 = load i32, i32* %22, align 4
  %289 = sext i32 %288 to i64
  %290 = add i64 %287, %289
  %291 = load i32, i32* @SPGIST_PAGE_CAPACITY, align 4
  %292 = sext i32 %291 to i64
  %293 = icmp ule i64 %290, %292
  br i1 %293, label %294, label %305

294:                                              ; preds = %282
  %295 = load i32, i32* %19, align 4
  %296 = icmp ne i32 %295, 0
  %297 = xor i1 %296, true
  %298 = zext i1 %297 to i32
  %299 = call i32 @Assert(i32 %298)
  %300 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %301 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %302 = load %struct.TYPE_76__*, %struct.TYPE_76__** %20, align 8
  %303 = load i32, i32* %11, align 4
  %304 = call i32 @moveLeafs(%struct.TYPE_67__* %300, %struct.TYPE_75__* %301, %struct.TYPE_66__* %15, %struct.TYPE_66__* %16, %struct.TYPE_76__* %302, i32 %303)
  br label %475

305:                                              ; preds = %282, %279, %272
  %306 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %307 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %308 = load %struct.TYPE_76__*, %struct.TYPE_76__** %20, align 8
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* %11, align 4
  %311 = load i32, i32* %19, align 4
  %312 = call i64 @doPickSplit(%struct.TYPE_67__* %306, %struct.TYPE_75__* %307, %struct.TYPE_66__* %15, %struct.TYPE_66__* %16, %struct.TYPE_76__* %308, i32 %309, i32 %310, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %305
  br label %475

315:                                              ; preds = %305
  %316 = load %struct.TYPE_76__*, %struct.TYPE_76__** %20, align 8
  %317 = call i32 @pfree(%struct.TYPE_76__* %316)
  %318 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 4
  %319 = load i32*, i32** %318, align 8
  %320 = call i64 @SpGistPageIsLeaf(i32* %319)
  %321 = icmp ne i64 %320, 0
  %322 = xor i1 %321, true
  %323 = zext i1 %322 to i32
  %324 = call i32 @Assert(i32 %323)
  br label %326

325:                                              ; preds = %244
  br label %326

326:                                              ; preds = %463, %450, %325, %315
  %327 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %328 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 4
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 4
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @PageGetItemId(i32* %331, i32 %333)
  %335 = call i64 @PageGetItem(i32* %329, i32 %334)
  %336 = inttoptr i64 %335 to %struct.TYPE_65__*
  store %struct.TYPE_65__* %336, %struct.TYPE_65__** %23, align 8
  %337 = load i8*, i8** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %24, i32 0, i32 9
  store i8* %337, i8** %338, align 8
  %339 = load i8*, i8** %13, align 8
  %340 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %24, i32 0, i32 8
  store i8* %339, i8** %340, align 8
  %341 = load i32, i32* %12, align 4
  %342 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %24, i32 0, i32 0
  store i32 %341, i32* %342, align 8
  %343 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %344 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %24, i32 0, i32 7
  store i64 %345, i64* %346, align 8
  %347 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %348 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = icmp sgt i64 %349, 0
  %351 = zext i1 %350 to i32
  %352 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %24, i32 0, i32 1
  store i32 %351, i32* %352, align 4
  %353 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %354 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %355 = call i32 @SGITDATUM(%struct.TYPE_65__* %353, %struct.TYPE_75__* %354)
  %356 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %24, i32 0, i32 6
  store i32 %355, i32* %356, align 8
  %357 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %358 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %24, i32 0, i32 2
  store i32 %359, i32* %360, align 8
  %361 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %362 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %363 = call i32* @spgExtractNodeLabels(%struct.TYPE_75__* %361, %struct.TYPE_65__* %362)
  %364 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %24, i32 0, i32 5
  store i32* %363, i32** %364, align 8
  %365 = call i32 @memset(%struct.TYPE_74__* %25, i32 0, i32 80)
  %366 = load i32, i32* %11, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %378, label %368

368:                                              ; preds = %326
  %369 = load i32*, i32** %17, align 8
  %370 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  %374 = load i32, i32* %373, align 4
  %375 = call i8* @PointerGetDatum(%struct.TYPE_74__* %24)
  %376 = call i8* @PointerGetDatum(%struct.TYPE_74__* %25)
  %377 = call i32 @FunctionCall2Coll(i32* %369, i32 %374, i8* %375, i8* %376)
  br label %380

378:                                              ; preds = %326
  %379 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %25, i32 0, i32 3
  store i32 129, i32* %379, align 4
  br label %380

380:                                              ; preds = %378, %368
  %381 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %382 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %407

385:                                              ; preds = %380
  %386 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %25, i32 0, i32 3
  %387 = load i32, i32* %386, align 4
  %388 = icmp eq i32 %387, 130
  br i1 %388, label %389, label %392

389:                                              ; preds = %385
  %390 = load i32, i32* @ERROR, align 4
  %391 = call i32 (i32, i8*, ...) @elog(i32 %390, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %406

392:                                              ; preds = %385
  %393 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %25, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  %395 = icmp eq i32 %394, 129
  br i1 %395, label %396, label %405

396:                                              ; preds = %392
  %397 = call i32 (...) @random()
  %398 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %399 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = srem i32 %397, %400
  %402 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %25, i32 0, i32 4
  %403 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %403, i32 0, i32 0
  store i32 %401, i32* %404, align 8
  br label %405

405:                                              ; preds = %396, %392
  br label %406

406:                                              ; preds = %405, %389
  br label %407

407:                                              ; preds = %406, %380
  %408 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %25, i32 0, i32 3
  %409 = load i32, i32* %408, align 4
  switch i32 %409, label %468 [
    i32 129, label %410
    i32 130, label %443
    i32 128, label %463
  ]

410:                                              ; preds = %407
  %411 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %412 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %413 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %414 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %25, i32 0, i32 4
  %415 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @spgMatchNodeAction(%struct.TYPE_67__* %411, %struct.TYPE_75__* %412, %struct.TYPE_65__* %413, %struct.TYPE_66__* %15, %struct.TYPE_66__* %16, i32 %417)
  %419 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %25, i32 0, i32 4
  %420 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* %12, align 4
  %424 = add nsw i32 %423, %422
  store i32 %424, i32* %12, align 4
  %425 = load i32, i32* %11, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %442, label %427

427:                                              ; preds = %410
  %428 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %25, i32 0, i32 4
  %429 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %429, i32 0, i32 2
  %431 = load i8*, i8** %430, align 8
  store i8* %431, i8** %13, align 8
  %432 = load i32, i32* @SGLTHDRSZ, align 4
  %433 = sext i32 %432 to i64
  %434 = add i64 %433, 4
  %435 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %436 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %435, i32 0, i32 0
  %437 = load i8*, i8** %13, align 8
  %438 = call i32 @SpGistGetTypeSize(%struct.TYPE_72__* %436, i8* %437)
  %439 = sext i32 %438 to i64
  %440 = add i64 %434, %439
  %441 = trunc i64 %440 to i32
  store i32 %441, i32* %14, align 4
  br label %442

442:                                              ; preds = %427, %410
  br label %473

443:                                              ; preds = %407
  %444 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %24, i32 0, i32 5
  %445 = load i32*, i32** %444, align 8
  %446 = icmp eq i32* %445, null
  br i1 %446, label %447, label %450

447:                                              ; preds = %443
  %448 = load i32, i32* @ERROR, align 4
  %449 = call i32 (i32, i8*, ...) @elog(i32 %448, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %450

450:                                              ; preds = %447, %443
  %451 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %452 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %453 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %454 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %25, i32 0, i32 4
  %455 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %25, i32 0, i32 4
  %459 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = call i32 @spgAddNodeAction(%struct.TYPE_67__* %451, %struct.TYPE_75__* %452, %struct.TYPE_65__* %453, %struct.TYPE_66__* %15, %struct.TYPE_66__* %16, i32 %457, i32 %461)
  br label %326

463:                                              ; preds = %407
  %464 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %465 = load %struct.TYPE_75__*, %struct.TYPE_75__** %8, align 8
  %466 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %467 = call i32 @spgSplitNodeAction(%struct.TYPE_67__* %464, %struct.TYPE_75__* %465, %struct.TYPE_65__* %466, %struct.TYPE_66__* %15, %struct.TYPE_74__* %25)
  br label %326

468:                                              ; preds = %407
  %469 = load i32, i32* @ERROR, align 4
  %470 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %25, i32 0, i32 3
  %471 = load i32, i32* %470, align 4
  %472 = call i32 (i32, i8*, ...) @elog(i32 %469, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %471)
  br label %473

473:                                              ; preds = %468, %442
  br label %474

474:                                              ; preds = %473
  br label %149

475:                                              ; preds = %314, %294, %265
  %476 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @InvalidBuffer, align 8
  %479 = icmp ne i64 %477, %478
  br i1 %479, label %480, label %488

480:                                              ; preds = %475
  %481 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = call i32 @SpGistSetLastUsedPage(%struct.TYPE_67__* %481, i64 %483)
  %485 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  %486 = load i64, i64* %485, align 8
  %487 = call i32 @UnlockReleaseBuffer(i64 %486)
  br label %488

488:                                              ; preds = %480, %475
  %489 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 1
  %490 = load i64, i64* %489, align 8
  %491 = load i64, i64* @InvalidBuffer, align 8
  %492 = icmp ne i64 %490, %491
  br i1 %492, label %493, label %507

493:                                              ; preds = %488
  %494 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 1
  %495 = load i64, i64* %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %15, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = icmp ne i64 %495, %497
  br i1 %498, label %499, label %507

499:                                              ; preds = %493
  %500 = load %struct.TYPE_67__*, %struct.TYPE_67__** %7, align 8
  %501 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 1
  %502 = load i64, i64* %501, align 8
  %503 = call i32 @SpGistSetLastUsedPage(%struct.TYPE_67__* %500, i64 %502)
  %504 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %16, i32 0, i32 1
  %505 = load i64, i64* %504, align 8
  %506 = call i32 @UnlockReleaseBuffer(i64 %505)
  br label %507

507:                                              ; preds = %499, %493, %488
  store i32 1, i32* %6, align 4
  br label %508

508:                                              ; preds = %507, %208
  %509 = load i32, i32* %6, align 4
  ret i32 %509
}

declare dso_local i32* @index_getprocinfo(%struct.TYPE_67__*, i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @index_getprocid(%struct.TYPE_67__*, i32, i32) #1

declare dso_local i8* @FunctionCall1Coll(i32*, i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @PointerGetDatum(%struct.TYPE_74__*) #1

declare dso_local %struct.TYPE_74__* @PG_DETOAST_DATUM(i8*) #1

declare dso_local i32 @SpGistGetTypeSize(%struct.TYPE_72__*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_67__*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @SpGistGetBuffer(%struct.TYPE_67__*, i32, i32, i32*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i64 @BufferGetBlockNumber(i64) #1

declare dso_local i8* @ReadBuffer(%struct.TYPE_67__*, i64) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @ConditionalLockBuffer(i64) #1

declare dso_local i32 @ReleaseBuffer(i64) #1

declare dso_local i32 @UnlockReleaseBuffer(i64) #1

declare dso_local i32* @BufferGetPage(i64) #1

declare dso_local i32 @SpGistPageStoresNulls(i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @SpGistPageIsLeaf(i32*) #1

declare dso_local %struct.TYPE_76__* @spgFormLeafTuple(%struct.TYPE_75__*, i32, i8*, i32) #1

declare dso_local i32 @SpGistPageGetFreeSpace(i32*, i32) #1

declare dso_local i32 @addLeafTuple(%struct.TYPE_67__*, %struct.TYPE_75__*, %struct.TYPE_76__*, %struct.TYPE_66__*, %struct.TYPE_66__*, i32, i32) #1

declare dso_local i32 @checkSplitConditions(%struct.TYPE_67__*, %struct.TYPE_75__*, %struct.TYPE_66__*, i32*) #1

declare dso_local i32 @moveLeafs(%struct.TYPE_67__*, %struct.TYPE_75__*, %struct.TYPE_66__*, %struct.TYPE_66__*, %struct.TYPE_76__*, i32) #1

declare dso_local i64 @doPickSplit(%struct.TYPE_67__*, %struct.TYPE_75__*, %struct.TYPE_66__*, %struct.TYPE_66__*, %struct.TYPE_76__*, i32, i32, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_76__*) #1

declare dso_local i64 @PageGetItem(i32*, i32) #1

declare dso_local i32 @PageGetItemId(i32*, i32) #1

declare dso_local i32 @SGITDATUM(%struct.TYPE_65__*, %struct.TYPE_75__*) #1

declare dso_local i32* @spgExtractNodeLabels(%struct.TYPE_75__*, %struct.TYPE_65__*) #1

declare dso_local i32 @memset(%struct.TYPE_74__*, i32, i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i8*, i8*) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @spgMatchNodeAction(%struct.TYPE_67__*, %struct.TYPE_75__*, %struct.TYPE_65__*, %struct.TYPE_66__*, %struct.TYPE_66__*, i32) #1

declare dso_local i32 @spgAddNodeAction(%struct.TYPE_67__*, %struct.TYPE_75__*, %struct.TYPE_65__*, %struct.TYPE_66__*, %struct.TYPE_66__*, i32, i32) #1

declare dso_local i32 @spgSplitNodeAction(%struct.TYPE_67__*, %struct.TYPE_75__*, %struct.TYPE_65__*, %struct.TYPE_66__*, %struct.TYPE_74__*) #1

declare dso_local i32 @SpGistSetLastUsedPage(%struct.TYPE_67__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
