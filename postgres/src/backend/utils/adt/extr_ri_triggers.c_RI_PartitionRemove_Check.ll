; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_RI_PartitionRemove_Check.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_RI_PartitionRemove_Check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32* }
%struct.TYPE_34__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_35__ = type { i32, i32*, i32*, i32, i32* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32 }

@MAX_QUOTED_REL_NAME_LEN = common dso_local global i32 0, align 4
@MAX_QUOTED_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"SELECT \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%sfk.%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"ONLY \00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c" FROM %s%s fk JOIN %s pk ON\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pk.\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fk.\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"pk\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c") WHERE %s AND (\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c") WHERE (\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"%sfk.%s IS NOT NULL\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" AND \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" OR \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@maintenance_work_mem = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"work_mem\00", align 1
@PGC_USERSET = common dso_local global i32 0, align 4
@PGC_S_SESSION = common dso_local global i32 0, align 4
@GUC_ACTION_SAVE = common dso_local global i32 0, align 4
@SPI_OK_CONNECT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"SPI_connect failed\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"SPI_prepare returned %s for %s\00", align 1
@SPI_result = common dso_local global i32 0, align 4
@InvalidSnapshot = common dso_local global i32 0, align 4
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"SPI_execute_snapshot returned %s\00", align 1
@SPI_processed = common dso_local global i64 0, align 8
@SPI_tuptable = common dso_local global %struct.TYPE_31__* null, align 8
@TTSOpsVirtual = common dso_local global i32 0, align 4
@SPI_OK_FINISH = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [18 x i8] c"SPI_finish failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RI_PartitionRemove_Check(i32* %0, %struct.TYPE_34__* %1, %struct.TYPE_34__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_33__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [32 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_32__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_35__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %6, align 8
  %30 = load i32, i32* @MAX_QUOTED_REL_NAME_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %10, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %11, align 8
  %34 = load i32, i32* @MAX_QUOTED_REL_NAME_LEN, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  %37 = load i32, i32* @MAX_QUOTED_NAME_LEN, align 4
  %38 = add nsw i32 %37, 3
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %13, align 8
  %41 = load i32, i32* @MAX_QUOTED_NAME_LEN, align 4
  %42 = add nsw i32 %41, 3
  %43 = zext i32 %42 to i64
  %44 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %14, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %47 = call %struct.TYPE_35__* @ri_FetchConstraintInfo(i32* %45, %struct.TYPE_34__* %46, i32 0)
  store %struct.TYPE_35__* %47, %struct.TYPE_35__** %7, align 8
  %48 = call i32 @initStringInfo(%struct.TYPE_33__* %8)
  %49 = call i32 @appendStringInfoString(%struct.TYPE_33__* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  store i32 0, i32* %21, align 4
  br label %50

50:                                               ; preds = %69, %3
  %51 = load i32, i32* %21, align 4
  %52 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %58 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %21, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @RIAttName(%struct.TYPE_34__* %57, i32 %64)
  %66 = call i32 @quoteOneName(i8* %44, i32 %65)
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 (%struct.TYPE_33__*, i8*, ...) @appendStringInfo(%struct.TYPE_33__* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %67, i8* %44)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %21, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %21, align 4
  br label %50

72:                                               ; preds = %50
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %74 = call i32 @quoteRelationName(i8* %33, %struct.TYPE_34__* %73)
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %76 = call i32 @quoteRelationName(i8* %36, %struct.TYPE_34__* %75)
  %77 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  store i8* %85, i8** %16, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = call i32 (%struct.TYPE_33__*, i8*, ...) @appendStringInfo(%struct.TYPE_33__* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %86, i8* %36, i8* %33)
  %88 = call i32 @strcpy(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %89 = call i32 @strcpy(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %15, align 8
  store i32 0, i32* %21, align 4
  br label %90

90:                                               ; preds = %173, %72
  %91 = load i32, i32* %21, align 4
  %92 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %176

96:                                               ; preds = %90
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %98 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %21, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @RIAttType(%struct.TYPE_34__* %97, i32 %104)
  store i64 %105, i64* %22, align 8
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %107 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %21, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @RIAttType(%struct.TYPE_34__* %106, i32 %113)
  store i64 %114, i64* %23, align 8
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %21, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @RIAttCollation(%struct.TYPE_34__* %115, i32 %122)
  store i64 %123, i64* %24, align 8
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %125 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %21, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @RIAttCollation(%struct.TYPE_34__* %124, i32 %131)
  store i64 %132, i64* %25, align 8
  %133 = getelementptr inbounds i8, i8* %40, i64 3
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %135 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %21, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @RIAttName(%struct.TYPE_34__* %134, i32 %141)
  %143 = call i32 @quoteOneName(i8* %133, i32 %142)
  %144 = getelementptr inbounds i8, i8* %44, i64 3
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %21, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @RIAttName(%struct.TYPE_34__* %145, i32 %152)
  %154 = call i32 @quoteOneName(i8* %144, i32 %153)
  %155 = load i8*, i8** %15, align 8
  %156 = load i64, i64* %22, align 8
  %157 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %21, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* %23, align 8
  %165 = call i32 @ri_GenerateQual(%struct.TYPE_33__* %8, i8* %155, i8* %40, i64 %156, i32 %163, i8* %44, i64 %164)
  %166 = load i64, i64* %24, align 8
  %167 = load i64, i64* %25, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %96
  %170 = load i64, i64* %24, align 8
  %171 = call i32 @ri_GenerateQualCollation(%struct.TYPE_33__* %8, i64 %170)
  br label %172

172:                                              ; preds = %169, %96
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %15, align 8
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %21, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %21, align 4
  br label %90

176:                                              ; preds = %90
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %178 = call i32 @RelationGetRelid(%struct.TYPE_34__* %177)
  %179 = call i8* @pg_get_partconstrdef_string(i32 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i8* %179, i8** %9, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %176
  %183 = load i8*, i8** %9, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 (%struct.TYPE_33__*, i8*, ...) @appendStringInfo(%struct.TYPE_33__* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %189)
  br label %193

191:                                              ; preds = %182, %176
  %192 = call i32 (%struct.TYPE_33__*, i8*, ...) @appendStringInfo(%struct.TYPE_33__* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %188
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  store i32 0, i32* %21, align 4
  br label %194

194:                                              ; preds = %219, %193
  %195 = load i32, i32* %21, align 4
  %196 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %222

200:                                              ; preds = %194
  %201 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %202 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %21, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @RIAttName(%struct.TYPE_34__* %201, i32 %208)
  %210 = call i32 @quoteOneName(i8* %44, i32 %209)
  %211 = load i8*, i8** %15, align 8
  %212 = call i32 (%struct.TYPE_33__*, i8*, ...) @appendStringInfo(%struct.TYPE_33__* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %211, i8* %44)
  %213 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  switch i32 %215, label %218 [
    i32 128, label %216
    i32 129, label %217
  ]

216:                                              ; preds = %200
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %15, align 8
  br label %218

217:                                              ; preds = %200
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %15, align 8
  br label %218

218:                                              ; preds = %200, %217, %216
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %21, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %21, align 4
  br label %194

222:                                              ; preds = %194
  %223 = call i32 @appendStringInfoChar(%struct.TYPE_33__* %8, i8 signext 41)
  %224 = call i32 (...) @NewGUCNestLevel()
  store i32 %224, i32* %17, align 4
  %225 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %226 = load i32, i32* @maintenance_work_mem, align 4
  %227 = call i32 @snprintf(i8* %225, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %226)
  %228 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %229 = load i32, i32* @PGC_USERSET, align 4
  %230 = load i32, i32* @PGC_S_SESSION, align 4
  %231 = load i32, i32* @GUC_ACTION_SAVE, align 4
  %232 = call i32 @set_config_option(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* %228, i32 %229, i32 %230, i32 %231, i32 1, i32 0, i32 0)
  %233 = call i64 (...) @SPI_connect()
  %234 = load i64, i64* @SPI_OK_CONNECT, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %222
  %237 = load i32, i32* @ERROR, align 4
  %238 = call i32 (i32, i8*, ...) @elog(i32 %237, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  br label %239

239:                                              ; preds = %236, %222
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32* @SPI_prepare(i32 %241, i32 0, i32* null)
  store i32* %242, i32** %20, align 8
  %243 = load i32*, i32** %20, align 8
  %244 = icmp eq i32* %243, null
  br i1 %244, label %245, label %252

245:                                              ; preds = %239
  %246 = load i32, i32* @ERROR, align 4
  %247 = load i32, i32* @SPI_result, align 4
  %248 = call i32 @SPI_result_code_string(i32 %247)
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i32, i8*, ...) @elog(i32 %246, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %248, i32 %250)
  br label %252

252:                                              ; preds = %245, %239
  %253 = load i32*, i32** %20, align 8
  %254 = call i32 (...) @GetLatestSnapshot()
  %255 = load i32, i32* @InvalidSnapshot, align 4
  %256 = call i32 @SPI_execute_snapshot(i32* %253, i32* null, i32* null, i32 %254, i32 %255, i32 1, i32 0, i32 1)
  store i32 %256, i32* %19, align 4
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* @SPI_OK_SELECT, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %252
  %261 = load i32, i32* @ERROR, align 4
  %262 = load i32, i32* %19, align 4
  %263 = call i32 @SPI_result_code_string(i32 %262)
  %264 = call i32 (i32, i8*, ...) @elog(i32 %261, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %260, %252
  %266 = load i64, i64* @SPI_processed, align 8
  %267 = icmp sgt i64 %266, 0
  br i1 %267, label %268, label %314

268:                                              ; preds = %265
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** @SPI_tuptable, align 8
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %27, align 4
  %274 = load %struct.TYPE_31__*, %struct.TYPE_31__** @SPI_tuptable, align 8
  %275 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  store i32 %276, i32* %28, align 4
  %277 = load i32, i32* %28, align 4
  %278 = call %struct.TYPE_32__* @MakeSingleTupleTableSlot(i32 %277, i32* @TTSOpsVirtual)
  store %struct.TYPE_32__* %278, %struct.TYPE_32__** %26, align 8
  %279 = load i32, i32* %27, align 4
  %280 = load i32, i32* %28, align 4
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %282 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %285 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @heap_deform_tuple(i32 %279, i32 %280, i32 %283, i32 %286)
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %289 = call i32 @ExecStoreVirtualTuple(%struct.TYPE_32__* %288)
  %290 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %291 = call i32 @memcpy(%struct.TYPE_35__* %29, %struct.TYPE_35__* %290, i32 40)
  store i32 0, i32* %21, align 4
  br label %292

292:                                              ; preds = %305, %268
  %293 = load i32, i32* %21, align 4
  %294 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %29, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp slt i32 %293, %295
  br i1 %296, label %297, label %308

297:                                              ; preds = %292
  %298 = load i32, i32* %21, align 4
  %299 = add nsw i32 %298, 1
  %300 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %29, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %21, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  store i32 %299, i32* %304, align 4
  br label %305

305:                                              ; preds = %297
  %306 = load i32, i32* %21, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %21, align 4
  br label %292

308:                                              ; preds = %292
  %309 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %311 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %312 = load i32, i32* %28, align 4
  %313 = call i32 @ri_ReportViolation(%struct.TYPE_35__* %29, %struct.TYPE_34__* %309, %struct.TYPE_34__* %310, %struct.TYPE_32__* %311, i32 %312, i32 0, i32 1)
  br label %314

314:                                              ; preds = %308, %265
  %315 = call i64 (...) @SPI_finish()
  %316 = load i64, i64* @SPI_OK_FINISH, align 8
  %317 = icmp ne i64 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load i32, i32* @ERROR, align 4
  %320 = call i32 (i32, i8*, ...) @elog(i32 %319, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  br label %321

321:                                              ; preds = %318, %314
  %322 = load i32, i32* %17, align 4
  %323 = call i32 @AtEOXact_GUC(i32 1, i32 %322)
  %324 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %324)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_35__* @ri_FetchConstraintInfo(i32*, %struct.TYPE_34__*, i32) #2

declare dso_local i32 @initStringInfo(%struct.TYPE_33__*) #2

declare dso_local i32 @appendStringInfoString(%struct.TYPE_33__*, i8*) #2

declare dso_local i32 @quoteOneName(i8*, i32) #2

declare dso_local i32 @RIAttName(%struct.TYPE_34__*, i32) #2

declare dso_local i32 @appendStringInfo(%struct.TYPE_33__*, i8*, ...) #2

declare dso_local i32 @quoteRelationName(i8*, %struct.TYPE_34__*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @RIAttType(%struct.TYPE_34__*, i32) #2

declare dso_local i64 @RIAttCollation(%struct.TYPE_34__*, i32) #2

declare dso_local i32 @ri_GenerateQual(%struct.TYPE_33__*, i8*, i8*, i64, i32, i8*, i64) #2

declare dso_local i32 @ri_GenerateQualCollation(%struct.TYPE_33__*, i64) #2

declare dso_local i8* @pg_get_partconstrdef_string(i32, i8*) #2

declare dso_local i32 @RelationGetRelid(%struct.TYPE_34__*) #2

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_33__*, i8 signext) #2

declare dso_local i32 @NewGUCNestLevel(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @set_config_option(i8*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @SPI_connect(...) #2

declare dso_local i32 @elog(i32, i8*, ...) #2

declare dso_local i32* @SPI_prepare(i32, i32, i32*) #2

declare dso_local i32 @SPI_result_code_string(i32) #2

declare dso_local i32 @SPI_execute_snapshot(i32*, i32*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @GetLatestSnapshot(...) #2

declare dso_local %struct.TYPE_32__* @MakeSingleTupleTableSlot(i32, i32*) #2

declare dso_local i32 @heap_deform_tuple(i32, i32, i32, i32) #2

declare dso_local i32 @ExecStoreVirtualTuple(%struct.TYPE_32__*) #2

declare dso_local i32 @memcpy(%struct.TYPE_35__*, %struct.TYPE_35__*, i32) #2

declare dso_local i32 @ri_ReportViolation(%struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_32__*, i32, i32, i32) #2

declare dso_local i64 @SPI_finish(...) #2

declare dso_local i32 @AtEOXact_GUC(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
