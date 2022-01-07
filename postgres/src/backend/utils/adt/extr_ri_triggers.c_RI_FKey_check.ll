; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_RI_FKey_check.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_RI_FKey_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_32__*, i32*, i32*, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_33__ = type { i32, i32*, i32*, i32*, i32, i32, i32 }
%struct.TYPE_31__ = type { i32 }

@SnapshotSelf = common dso_local global i32 0, align 4
@RowShareLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FOREIGN_KEY_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"insert or update on table \22%s\22 violates foreign key constraint \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"MATCH FULL does not allow mixing of null and nonnull key values.\00", align 1
@SPI_OK_CONNECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"SPI_connect failed\00", align 1
@RI_PLAN_CHECK_LOOKUPPK = common dso_local global i32 0, align 4
@MAX_QUOTED_REL_NAME_LEN = common dso_local global i32 0, align 4
@MAX_QUOTED_NAME_LEN = common dso_local global i32 0, align 4
@RI_MAX_NUMKEYS = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ONLY \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SELECT 1 FROM %s%s x\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"WHERE\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"$%d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c" FOR KEY SHARE OF x\00", align 1
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@SPI_OK_FINISH = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"SPI_finish failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*)* @RI_FKey_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RI_FKey_check(%struct.TYPE_30__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_31__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %27 = call %struct.TYPE_33__* @ri_FetchConstraintInfo(i32 %23, %struct.TYPE_32__* %26, i32 0)
  store %struct.TYPE_33__* %27, %struct.TYPE_33__** %4, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @TRIGGER_FIRED_BY_UPDATE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %7, align 8
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %7, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @SnapshotSelf, align 4
  %47 = call i32 @table_tuple_satisfies_snapshot(%struct.TYPE_32__* %44, i32* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = call i32 @PointerGetDatum(i32* null)
  store i32 %50, i32* %2, align 4
  br label %230

51:                                               ; preds = %41
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %53, align 8
  store %struct.TYPE_32__* %54, %struct.TYPE_32__** %5, align 8
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RowShareLock, align 4
  %59 = call %struct.TYPE_32__* @table_open(i32 %57, i32 %58)
  store %struct.TYPE_32__* %59, %struct.TYPE_32__** %6, align 8
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %61 = call i32 @RelationGetDescr(%struct.TYPE_32__* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %64 = call i32 @ri_NullCheck(i32 %61, i32* %62, %struct.TYPE_33__* %63, i32 0)
  switch i32 %64, label %104 [
    i32 130, label %65
    i32 128, label %70
    i32 129, label %103
  ]

65:                                               ; preds = %51
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %67 = load i32, i32* @RowShareLock, align 4
  %68 = call i32 @table_close(%struct.TYPE_32__* %66, i32 %67)
  %69 = call i32 @PointerGetDatum(i32* null)
  store i32 %69, i32* %2, align 4
  br label %230

70:                                               ; preds = %51
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %102 [
    i32 133, label %74
    i32 131, label %97
  ]

74:                                               ; preds = %70
  %75 = load i32, i32* @ERROR, align 4
  %76 = load i32, i32* @ERRCODE_FOREIGN_KEY_VIOLATION, align 4
  %77 = call i32 @errcode(i32 %76)
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %79 = call i32 @RelationGetRelationName(%struct.TYPE_32__* %78)
  %80 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @NameStr(i32 %82)
  %84 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %83)
  %85 = call i32 @errdetail(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @NameStr(i32 %89)
  %91 = call i32 @errtableconstraint(%struct.TYPE_32__* %86, i32 %90)
  %92 = call i32 @ereport(i32 %75, i32 %91)
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %94 = load i32, i32* @RowShareLock, align 4
  %95 = call i32 @table_close(%struct.TYPE_32__* %93, i32 %94)
  %96 = call i32 @PointerGetDatum(i32* null)
  store i32 %96, i32* %2, align 4
  br label %230

97:                                               ; preds = %70
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %99 = load i32, i32* @RowShareLock, align 4
  %100 = call i32 @table_close(%struct.TYPE_32__* %98, i32 %99)
  %101 = call i32 @PointerGetDatum(i32* null)
  store i32 %101, i32* %2, align 4
  br label %230

102:                                              ; preds = %70
  br label %103

103:                                              ; preds = %51, %102
  br label %104

104:                                              ; preds = %51, %103
  %105 = call i64 (...) @SPI_connect()
  %106 = load i64, i64* @SPI_OK_CONNECT, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @ERROR, align 4
  %110 = call i32 @elog(i32 %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %104
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %113 = load i32, i32* @RI_PLAN_CHECK_LOOKUPPK, align 4
  %114 = call i32 @ri_BuildQueryKey(i32* %8, %struct.TYPE_33__* %112, i32 %113)
  %115 = call i32* @ri_FetchPreparedPlan(i32* %8)
  store i32* %115, i32** %9, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %211

117:                                              ; preds = %111
  %118 = load i32, i32* @MAX_QUOTED_REL_NAME_LEN, align 4
  %119 = zext i32 %118 to i64
  %120 = call i8* @llvm.stacksave()
  store i8* %120, i8** %11, align 8
  %121 = alloca i8, i64 %119, align 16
  store i64 %119, i64* %12, align 8
  %122 = load i32, i32* @MAX_QUOTED_NAME_LEN, align 4
  %123 = zext i32 %122 to i64
  %124 = alloca i8, i64 %123, align 16
  store i64 %123, i64* %13, align 8
  %125 = load i32, i32* @RI_MAX_NUMKEYS, align 4
  %126 = zext i32 %125 to i64
  %127 = alloca i32, i64 %126, align 16
  store i64 %126, i64* %16, align 8
  %128 = call i32 @initStringInfo(%struct.TYPE_31__* %10)
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  store i8* %137, i8** %17, align 8
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %139 = call i32 @quoteRelationName(i8* %121, %struct.TYPE_32__* %138)
  %140 = load i8*, i8** %17, align 8
  %141 = call i32 @appendStringInfo(%struct.TYPE_31__* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %140, i8* %121)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  store i32 0, i32* %18, align 4
  br label %142

142:                                              ; preds = %197, %117
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %200

148:                                              ; preds = %142
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @RIAttType(%struct.TYPE_32__* %149, i32 %156)
  store i32 %157, i32* %19, align 4
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @RIAttType(%struct.TYPE_32__* %158, i32 %165)
  store i32 %166, i32* %20, align 4
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %168 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @RIAttName(%struct.TYPE_32__* %167, i32 %174)
  %176 = call i32 @quoteOneName(i8* %124, i32 %175)
  %177 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %178, 1
  %180 = call i32 @sprintf(i8* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %179)
  %181 = load i8*, i8** %15, align 8
  %182 = load i32, i32* %19, align 4
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %191 = load i32, i32* %20, align 4
  %192 = call i32 @ri_GenerateQual(%struct.TYPE_31__* %10, i8* %181, i8* %124, i32 %182, i32 %189, i8* %190, i32 %191)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %15, align 8
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %127, i64 %195
  store i32 %193, i32* %196, align 4
  br label %197

197:                                              ; preds = %148
  %198 = load i32, i32* %18, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %18, align 4
  br label %142

200:                                              ; preds = %142
  %201 = call i32 @appendStringInfoString(%struct.TYPE_31__* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %209 = call i32* @ri_PlanCheck(i32 %203, i32 %206, i32* %127, i32* %8, %struct.TYPE_32__* %207, %struct.TYPE_32__* %208)
  store i32* %209, i32** %9, align 8
  %210 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %210)
  br label %211

211:                                              ; preds = %200, %111
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %213 = load i32*, i32** %9, align 8
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %216 = load i32*, i32** %7, align 8
  %217 = load i32, i32* @SPI_OK_SELECT, align 4
  %218 = call i32 @ri_PerformCheck(%struct.TYPE_33__* %212, i32* %8, i32* %213, %struct.TYPE_32__* %214, %struct.TYPE_32__* %215, i32* null, i32* %216, i32 0, i32 %217)
  %219 = call i64 (...) @SPI_finish()
  %220 = load i64, i64* @SPI_OK_FINISH, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %211
  %223 = load i32, i32* @ERROR, align 4
  %224 = call i32 @elog(i32 %223, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %211
  %226 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %227 = load i32, i32* @RowShareLock, align 4
  %228 = call i32 @table_close(%struct.TYPE_32__* %226, i32 %227)
  %229 = call i32 @PointerGetDatum(i32* null)
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %225, %97, %74, %65, %49
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.TYPE_33__* @ri_FetchConstraintInfo(i32, %struct.TYPE_32__*, i32) #1

declare dso_local i64 @TRIGGER_FIRED_BY_UPDATE(i32) #1

declare dso_local i32 @table_tuple_satisfies_snapshot(%struct.TYPE_32__*, i32*, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local %struct.TYPE_32__* @table_open(i32, i32) #1

declare dso_local i32 @ri_NullCheck(i32, i32*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_32__*) #1

declare dso_local i32 @table_close(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_32__*) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errtableconstraint(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @SPI_connect(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ri_BuildQueryKey(i32*, %struct.TYPE_33__*, i32) #1

declare dso_local i32* @ri_FetchPreparedPlan(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @initStringInfo(%struct.TYPE_31__*) #1

declare dso_local i32 @quoteRelationName(i8*, %struct.TYPE_32__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_31__*, i8*, i8*, i8*) #1

declare dso_local i32 @RIAttType(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @quoteOneName(i8*, i32) #1

declare dso_local i32 @RIAttName(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ri_GenerateQual(%struct.TYPE_31__*, i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_31__*, i8*) #1

declare dso_local i32* @ri_PlanCheck(i32, i32, i32*, i32*, %struct.TYPE_32__*, %struct.TYPE_32__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ri_PerformCheck(%struct.TYPE_33__*, i32*, i32*, %struct.TYPE_32__*, %struct.TYPE_32__*, i32*, i32*, i32, i32) #1

declare dso_local i64 @SPI_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
