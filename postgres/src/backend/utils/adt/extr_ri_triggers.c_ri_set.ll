; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_set.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32*, %struct.TYPE_30__*, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_31__ = type { i32, i32*, i32*, i32*, i32 }
%struct.TYPE_29__ = type { i32, i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@SPI_OK_CONNECT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SPI_connect failed\00", align 1
@RI_PLAN_SETNULL_DOUPDATE = common dso_local global i32 0, align 4
@RI_PLAN_SETDEFAULT_DOUPDATE = common dso_local global i32 0, align 4
@MAX_QUOTED_REL_NAME_LEN = common dso_local global i32 0, align 4
@MAX_QUOTED_NAME_LEN = common dso_local global i32 0, align 4
@RI_MAX_NUMKEYS = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ONLY \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"UPDATE %s%s SET\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"WHERE\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s %s = %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"$%d\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@SPI_OK_UPDATE = common dso_local global i32 0, align 4
@SPI_OK_FINISH = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"SPI_finish failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, i32)* @ri_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ri_set(%struct.TYPE_28__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_29__, align 4
  %13 = alloca %struct.TYPE_29__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [16 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i32 %1, i32* %5, align 4
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %33 = call %struct.TYPE_31__* @ri_FetchConstraintInfo(i32 %29, %struct.TYPE_30__* %32, i32 1)
  store %struct.TYPE_31__* %33, %struct.TYPE_31__** %6, align 8
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RowExclusiveLock, align 4
  %38 = call %struct.TYPE_30__* @table_open(i32 %36, i32 %37)
  store %struct.TYPE_30__* %38, %struct.TYPE_30__** %7, align 8
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %40, align 8
  store %struct.TYPE_30__* %41, %struct.TYPE_30__** %8, align 8
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %9, align 8
  %45 = call i64 (...) @SPI_connect()
  %46 = load i64, i64* @SPI_OK_CONNECT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %2
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @RI_PLAN_SETNULL_DOUPDATE, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @RI_PLAN_SETDEFAULT_DOUPDATE, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = call i32 @ri_BuildQueryKey(i32* %10, %struct.TYPE_31__* %52, i32 %60)
  %62 = call i32* @ri_FetchPreparedPlan(i32* %10)
  store i32* %62, i32** %11, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %198

64:                                               ; preds = %59
  %65 = load i32, i32* @MAX_QUOTED_REL_NAME_LEN, align 4
  %66 = zext i32 %65 to i64
  %67 = call i8* @llvm.stacksave()
  store i8* %67, i8** %14, align 8
  %68 = alloca i8, i64 %66, align 16
  store i64 %66, i64* %15, align 8
  %69 = load i32, i32* @MAX_QUOTED_NAME_LEN, align 4
  %70 = zext i32 %69 to i64
  %71 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %16, align 8
  %72 = load i32, i32* @RI_MAX_NUMKEYS, align 4
  %73 = zext i32 %72 to i64
  %74 = alloca i64, i64 %73, align 16
  store i64 %73, i64* %20, align 8
  %75 = call i32 @initStringInfo(%struct.TYPE_29__* %12)
  %76 = call i32 @initStringInfo(%struct.TYPE_29__* %13)
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  store i8* %85, i8** %21, align 8
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %87 = call i32 @quoteRelationName(i8* %68, %struct.TYPE_30__* %86)
  %88 = load i8*, i8** %21, align 8
  %89 = call i32 (%struct.TYPE_29__*, i8*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_29__* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %88, i8* %68)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %19, align 8
  store i32 0, i32* %22, align 4
  br label %90

90:                                               ; preds = %180, %64
  %91 = load i32, i32* %22, align 4
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %183

96:                                               ; preds = %90
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %22, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @RIAttType(%struct.TYPE_30__* %97, i32 %104)
  store i64 %105, i64* %23, align 8
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %22, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @RIAttType(%struct.TYPE_30__* %106, i32 %113)
  store i64 %114, i64* %24, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %22, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @RIAttCollation(%struct.TYPE_30__* %115, i32 %122)
  store i64 %123, i64* %25, align 8
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @RIAttCollation(%struct.TYPE_30__* %124, i32 %131)
  store i64 %132, i64* %26, align 8
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %22, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @RIAttName(%struct.TYPE_30__* %133, i32 %140)
  %142 = call i32 @quoteOneName(i8* %71, i32 %141)
  %143 = load i8*, i8** %18, align 8
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %148 = call i32 (%struct.TYPE_29__*, i8*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_29__* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %143, i8* %71, i8* %147)
  %149 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %150 = load i32, i32* %22, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i32 @sprintf(i8* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %151)
  %153 = load i8*, i8** %19, align 8
  %154 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %155 = load i64, i64* %23, align 8
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %22, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* %24, align 8
  %164 = call i32 @ri_GenerateQual(%struct.TYPE_29__* %13, i8* %153, i8* %154, i64 %155, i32 %162, i8* %71, i64 %163)
  %165 = load i64, i64* %25, align 8
  %166 = load i64, i64* %26, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %96
  %169 = load i64, i64* %25, align 8
  %170 = call i32 @get_collation_isdeterministic(i64 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %25, align 8
  %174 = call i32 @ri_GenerateQualCollation(%struct.TYPE_29__* %12, i64 %173)
  br label %175

175:                                              ; preds = %172, %168, %96
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %19, align 8
  %176 = load i64, i64* %23, align 8
  %177 = load i32, i32* %22, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %74, i64 %178
  store i64 %176, i64* %179, align 8
  br label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %22, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %22, align 4
  br label %90

183:                                              ; preds = %90
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @appendBinaryStringInfo(%struct.TYPE_29__* %12, i32 %185, i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %196 = call i32* @ri_PlanCheck(i32 %190, i32 %193, i64* %74, i32* %10, %struct.TYPE_30__* %194, %struct.TYPE_30__* %195)
  store i32* %196, i32** %11, align 8
  %197 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %197)
  br label %198

198:                                              ; preds = %183, %59
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %200 = load i32*, i32** %11, align 8
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = load i32, i32* @SPI_OK_UPDATE, align 4
  %205 = call i32 @ri_PerformCheck(%struct.TYPE_31__* %199, i32* %10, i32* %200, %struct.TYPE_30__* %201, %struct.TYPE_30__* %202, i32* %203, i32* null, i32 1, i32 %204)
  %206 = call i64 (...) @SPI_finish()
  %207 = load i64, i64* @SPI_OK_FINISH, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %198
  %210 = load i32, i32* @ERROR, align 4
  %211 = call i32 @elog(i32 %210, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %198
  %213 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %214 = load i32, i32* @RowExclusiveLock, align 4
  %215 = call i32 @table_close(%struct.TYPE_30__* %213, i32 %214)
  %216 = load i32, i32* %5, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = call i32 @PointerGetDatum(i32* null)
  store i32 %219, i32* %3, align 4
  br label %223

220:                                              ; preds = %212
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %222 = call i32 @ri_restrict(%struct.TYPE_28__* %221, i32 1)
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %220, %218
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local %struct.TYPE_31__* @ri_FetchConstraintInfo(i32, %struct.TYPE_30__*, i32) #1

declare dso_local %struct.TYPE_30__* @table_open(i32, i32) #1

declare dso_local i64 @SPI_connect(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ri_BuildQueryKey(i32*, %struct.TYPE_31__*, i32) #1

declare dso_local i32* @ri_FetchPreparedPlan(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @initStringInfo(%struct.TYPE_29__*) #1

declare dso_local i32 @quoteRelationName(i8*, %struct.TYPE_30__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_29__*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @RIAttType(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @RIAttCollation(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @quoteOneName(i8*, i32) #1

declare dso_local i32 @RIAttName(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ri_GenerateQual(%struct.TYPE_29__*, i8*, i8*, i64, i32, i8*, i64) #1

declare dso_local i32 @get_collation_isdeterministic(i64) #1

declare dso_local i32 @ri_GenerateQualCollation(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32* @ri_PlanCheck(i32, i32, i64*, i32*, %struct.TYPE_30__*, %struct.TYPE_30__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ri_PerformCheck(%struct.TYPE_31__*, i32*, i32*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32*, i32*, i32, i32) #1

declare dso_local i64 @SPI_finish(...) #1

declare dso_local i32 @table_close(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @ri_restrict(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
