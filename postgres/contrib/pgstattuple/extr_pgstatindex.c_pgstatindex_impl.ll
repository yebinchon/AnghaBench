; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstatindex.c_pgstatindex_impl.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstatindex.c_pgstatindex_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { double, double, double, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_11__ = type { double, double, double }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@BAS_BULKREAD = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"relation \22%s\22 is not a btree index\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot access temporary tables of other sessions\00", align 1
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@SizeOfPageHeaderData = common dso_local global i32 0, align 4
@P_NONE = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@TYPEFUNC_COMPOSITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"return type must be a row type\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@INT64_FORMAT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pgstatindex_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgstatindex_impl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [10 x i8*], align 16
  %20 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %21 = load i32, i32* @BAS_BULKREAD, align 4
  %22 = call i32 @GetAccessStrategy(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @IS_INDEX(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @IS_BTREE(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @RelationGetRelationName(i32 %34)
  %36 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 @ereport(i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %30, %26
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @RELATION_IS_OTHER_TEMP(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %38
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @MAIN_FORKNUM, align 4
  %51 = load i32, i32* @RBM_NORMAL, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @ReadBufferExtended(i32 %49, i32 %50, i64 0, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @BufferGetPage(i32 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call %struct.TYPE_11__* @BTPageGetMeta(i64 %56)
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %12, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store double %60, double* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load double, double* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store double %64, double* %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load double, double* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store double %68, double* %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @ReleaseBuffer(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  store i32 0, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  store i32 0, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 6
  store i32 0, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 7
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 9
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 8
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i64 @RelationGetNumberOfBlocks(i32 %79)
  store i64 %80, i64* %6, align 8
  store i64 1, i64* %7, align 8
  br label %81

81:                                               ; preds = %172, %48
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %6, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %175

85:                                               ; preds = %81
  %86 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @MAIN_FORKNUM, align 4
  %89 = load i64, i64* %7, align 8
  %90 = load i32, i32* @RBM_NORMAL, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @ReadBufferExtended(i32 %87, i32 %88, i64 %89, i32 %90, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %95 = call i32 @LockBuffer(i32 %93, i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = call i64 @BufferGetPage(i32 %96)
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = call i64 @PageGetSpecialPointer(i64 %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %15, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %102 = call i64 @P_ISDELETED(%struct.TYPE_10__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %85
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %166

108:                                              ; preds = %85
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %110 = call i64 @P_IGNORE(%struct.TYPE_10__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %165

116:                                              ; preds = %108
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %118 = call i64 @P_ISLEAF(%struct.TYPE_10__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %160

120:                                              ; preds = %116
  %121 = load i32, i32* @BLCKSZ, align 4
  %122 = load i32, i32* @BLCKSZ, align 4
  %123 = load i64, i64* %14, align 8
  %124 = inttoptr i64 %123 to %struct.TYPE_9__*
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %122, %126
  %128 = load i32, i32* @SizeOfPageHeaderData, align 4
  %129 = add nsw i32 %127, %128
  %130 = sub nsw i32 %121, %129
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %132
  store i64 %135, i64* %133, align 8
  %136 = load i64, i64* %14, align 8
  %137 = call i64 @PageGetFreeSpace(i64 %136)
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 9
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %137
  store i64 %140, i64* %138, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @P_NONE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %120
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %7, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 8
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %156, align 8
  br label %159

159:                                              ; preds = %155, %149, %120
  br label %164

160:                                              ; preds = %116
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %160, %159
  br label %165

165:                                              ; preds = %164, %112
  br label %166

166:                                              ; preds = %165, %104
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %169 = call i32 @LockBuffer(i32 %167, i32 %168)
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @ReleaseBuffer(i32 %170)
  br label %172

172:                                              ; preds = %166
  %173 = load i64, i64* %7, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %7, align 8
  br label %81

175:                                              ; preds = %81
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @AccessShareLock, align 4
  %178 = call i32 @relation_close(i32 %176, i32 %177)
  %179 = load i32, i32* %4, align 4
  %180 = call i64 @get_call_result_type(i32 %179, i32* null, i32* %17)
  %181 = load i64, i64* @TYPEFUNC_COMPOSITE, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load i32, i32* @ERROR, align 4
  %185 = call i32 @elog(i32 %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %175
  store i32 0, i32* %18, align 4
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %188 = load double, double* %187, align 8
  %189 = call i8* @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %188)
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %18, align 4
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %192
  store i8* %189, i8** %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %195 = load double, double* %194, align 8
  %196 = call i8* @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %195)
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %18, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %199
  store i8* %196, i8** %200, align 8
  %201 = load i8*, i8** @INT64_FORMAT, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 1, %203
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %204, %206
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %207, %209
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %210, %212
  %214 = load i32, i32* @BLCKSZ, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sitofp i32 %215 to double
  %217 = call i8* @psprintf(i8* %201, double %216)
  %218 = load i32, i32* %18, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %18, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %220
  store i8* %217, i8** %221, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %223 = load double, double* %222, align 8
  %224 = call i8* @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), double %223)
  %225 = load i32, i32* %18, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %18, align 4
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %227
  store i8* %224, i8** %228, align 8
  %229 = load i8*, i8** @INT64_FORMAT, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = sitofp i32 %231 to double
  %233 = call i8* @psprintf(i8* %229, double %232)
  %234 = load i32, i32* %18, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %18, align 4
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %236
  store i8* %233, i8** %237, align 8
  %238 = load i8*, i8** @INT64_FORMAT, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = sitofp i32 %240 to double
  %242 = call i8* @psprintf(i8* %238, double %241)
  %243 = load i32, i32* %18, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %18, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %245
  store i8* %242, i8** %246, align 8
  %247 = load i8*, i8** @INT64_FORMAT, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = sitofp i32 %249 to double
  %251 = call i8* @psprintf(i8* %247, double %250)
  %252 = load i32, i32* %18, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %18, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %254
  store i8* %251, i8** %255, align 8
  %256 = load i8*, i8** @INT64_FORMAT, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 6
  %258 = load i32, i32* %257, align 4
  %259 = sitofp i32 %258 to double
  %260 = call i8* @psprintf(i8* %256, double %259)
  %261 = load i32, i32* %18, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %18, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %263
  store i8* %260, i8** %264, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 7
  %266 = load i64, i64* %265, align 8
  %267 = icmp sgt i64 %266, 0
  br i1 %267, label %268, label %283

268:                                              ; preds = %186
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 9
  %270 = load i64, i64* %269, align 8
  %271 = sitofp i64 %270 to double
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 7
  %273 = load i64, i64* %272, align 8
  %274 = sitofp i64 %273 to double
  %275 = fdiv double %271, %274
  %276 = fmul double %275, 1.000000e+02
  %277 = fsub double 1.000000e+02, %276
  %278 = call i8* @psprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), double %277)
  %279 = load i32, i32* %18, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %18, align 4
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %281
  store i8* %278, i8** %282, align 8
  br label %289

283:                                              ; preds = %186
  %284 = call i8* @pstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %285 = load i32, i32* %18, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %18, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %287
  store i8* %284, i8** %288, align 8
  br label %289

289:                                              ; preds = %283, %268
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %307

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 8
  %295 = load i64, i64* %294, align 8
  %296 = sitofp i64 %295 to double
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %298 = load i32, i32* %297, align 4
  %299 = sitofp i32 %298 to double
  %300 = fdiv double %296, %299
  %301 = fmul double %300, 1.000000e+02
  %302 = call i8* @psprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), double %301)
  %303 = load i32, i32* %18, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %18, align 4
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %305
  store i8* %302, i8** %306, align 8
  br label %313

307:                                              ; preds = %289
  %308 = call i8* @pstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %309 = load i32, i32* %18, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %18, align 4
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %311
  store i8* %308, i8** %312, align 8
  br label %313

313:                                              ; preds = %307, %293
  %314 = load i32, i32* %17, align 4
  %315 = call i32 @TupleDescGetAttInMetadata(i32 %314)
  %316 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 0
  %317 = call i32 @BuildTupleFromCStrings(i32 %315, i8** %316)
  store i32 %317, i32* %20, align 4
  %318 = load i32, i32* %20, align 4
  %319 = call i32 @HeapTupleGetDatum(i32 %318)
  store i32 %319, i32* %5, align 4
  %320 = load i32, i32* %5, align 4
  ret i32 %320
}

declare dso_local i32 @GetAccessStrategy(i32) #1

declare dso_local i32 @IS_INDEX(i32) #1

declare dso_local i32 @IS_BTREE(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @RELATION_IS_OTHER_TEMP(i32) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_11__* @BTPageGetMeta(i64) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i64 @P_ISDELETED(%struct.TYPE_10__*) #1

declare dso_local i64 @P_IGNORE(%struct.TYPE_10__*) #1

declare dso_local i64 @P_ISLEAF(%struct.TYPE_10__*) #1

declare dso_local i64 @PageGetFreeSpace(i64) #1

declare dso_local i32 @relation_close(i32, i32) #1

declare dso_local i64 @get_call_result_type(i32, i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i8* @psprintf(i8*, double) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @BuildTupleFromCStrings(i32, i8**) #1

declare dso_local i32 @TupleDescGetAttInMetadata(i32) #1

declare dso_local i32 @HeapTupleGetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
