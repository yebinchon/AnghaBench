; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_restrict.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_restrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32*, %struct.TYPE_32__*, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_33__ = type { i32, i32*, i32*, i32*, i32 }
%struct.TYPE_31__ = type { i32 }

@RowShareLock = common dso_local global i32 0, align 4
@SPI_OK_CONNECT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SPI_connect failed\00", align 1
@RI_PLAN_RESTRICT_CHECKREF = common dso_local global i32 0, align 4
@MAX_QUOTED_REL_NAME_LEN = common dso_local global i32 0, align 4
@MAX_QUOTED_NAME_LEN = common dso_local global i32 0, align 4
@RI_MAX_NUMKEYS = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ONLY \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SELECT 1 FROM %s%s x\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"WHERE\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"$%d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c" FOR KEY SHARE OF x\00", align 1
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@SPI_OK_FINISH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"SPI_finish failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, i32)* @ri_restrict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ri_restrict(%struct.TYPE_30__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_31__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [16 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store i32 %1, i32* %5, align 4
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %31 = call %struct.TYPE_33__* @ri_FetchConstraintInfo(i32 %27, %struct.TYPE_32__* %30, i32 1)
  store %struct.TYPE_33__* %31, %struct.TYPE_33__** %6, align 8
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RowShareLock, align 4
  %36 = call %struct.TYPE_32__* @table_open(i32 %34, i32 %35)
  store %struct.TYPE_32__* %36, %struct.TYPE_32__** %7, align 8
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %38, align 8
  store %struct.TYPE_32__* %39, %struct.TYPE_32__** %8, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %9, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %2
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %50 = call i64 @ri_Check_Pk_Match(%struct.TYPE_32__* %46, %struct.TYPE_32__* %47, i32* %48, %struct.TYPE_33__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %54 = load i32, i32* @RowShareLock, align 4
  %55 = call i32 @table_close(%struct.TYPE_32__* %53, i32 %54)
  %56 = call i32 @PointerGetDatum(i32* null)
  store i32 %56, i32* %3, align 4
  br label %212

57:                                               ; preds = %45, %2
  %58 = call i64 (...) @SPI_connect()
  %59 = load i64, i64* @SPI_OK_CONNECT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @ERROR, align 4
  %63 = call i32 @elog(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %57
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %66 = load i32, i32* @RI_PLAN_RESTRICT_CHECKREF, align 4
  %67 = call i32 @ri_BuildQueryKey(i32* %10, %struct.TYPE_33__* %65, i32 %66)
  %68 = call i32* @ri_FetchPreparedPlan(i32* %10)
  store i32* %68, i32** %11, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %193

70:                                               ; preds = %64
  %71 = load i32, i32* @MAX_QUOTED_REL_NAME_LEN, align 4
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %13, align 8
  %74 = alloca i8, i64 %72, align 16
  store i64 %72, i64* %14, align 8
  %75 = load i32, i32* @MAX_QUOTED_NAME_LEN, align 4
  %76 = zext i32 %75 to i64
  %77 = alloca i8, i64 %76, align 16
  store i64 %76, i64* %15, align 8
  %78 = load i32, i32* @RI_MAX_NUMKEYS, align 4
  %79 = zext i32 %78 to i64
  %80 = alloca i64, i64 %79, align 16
  store i64 %79, i64* %18, align 8
  %81 = call i32 @initStringInfo(%struct.TYPE_31__* %12)
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  store i8* %90, i8** %19, align 8
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %92 = call i32 @quoteRelationName(i8* %74, %struct.TYPE_32__* %91)
  %93 = load i8*, i8** %19, align 8
  %94 = call i32 @appendStringInfo(%struct.TYPE_31__* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %93, i8* %74)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  store i32 0, i32* %20, align 4
  br label %95

95:                                               ; preds = %179, %70
  %96 = load i32, i32* %20, align 4
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %182

101:                                              ; preds = %95
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @RIAttType(%struct.TYPE_32__* %102, i32 %109)
  store i64 %110, i64* %21, align 8
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @RIAttType(%struct.TYPE_32__* %111, i32 %118)
  store i64 %119, i64* %22, align 8
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %20, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @RIAttCollation(%struct.TYPE_32__* %120, i32 %127)
  store i64 %128, i64* %23, align 8
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @RIAttCollation(%struct.TYPE_32__* %129, i32 %136)
  store i64 %137, i64* %24, align 8
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %139 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %20, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @RIAttName(%struct.TYPE_32__* %138, i32 %145)
  %147 = call i32 @quoteOneName(i8* %77, i32 %146)
  %148 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %149, 1
  %151 = call i32 @sprintf(i8* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  %152 = load i8*, i8** %17, align 8
  %153 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %154 = load i64, i64* %21, align 8
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %20, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i64, i64* %22, align 8
  %163 = call i32 @ri_GenerateQual(%struct.TYPE_31__* %12, i8* %152, i8* %153, i64 %154, i32 %161, i8* %77, i64 %162)
  %164 = load i64, i64* %23, align 8
  %165 = load i64, i64* %24, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %101
  %168 = load i64, i64* %23, align 8
  %169 = call i32 @get_collation_isdeterministic(i64 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load i64, i64* %23, align 8
  %173 = call i32 @ri_GenerateQualCollation(%struct.TYPE_31__* %12, i64 %172)
  br label %174

174:                                              ; preds = %171, %167, %101
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  %175 = load i64, i64* %21, align 8
  %176 = load i32, i32* %20, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %80, i64 %177
  store i64 %175, i64* %178, align 8
  br label %179

179:                                              ; preds = %174
  %180 = load i32, i32* %20, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %20, align 4
  br label %95

182:                                              ; preds = %95
  %183 = call i32 @appendStringInfoString(%struct.TYPE_31__* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %191 = call i32* @ri_PlanCheck(i32 %185, i32 %188, i64* %80, i32* %10, %struct.TYPE_32__* %189, %struct.TYPE_32__* %190)
  store i32* %191, i32** %11, align 8
  %192 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %192)
  br label %193

193:                                              ; preds = %182, %64
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %195 = load i32*, i32** %11, align 8
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* @SPI_OK_SELECT, align 4
  %200 = call i32 @ri_PerformCheck(%struct.TYPE_33__* %194, i32* %10, i32* %195, %struct.TYPE_32__* %196, %struct.TYPE_32__* %197, i32* %198, i32* null, i32 1, i32 %199)
  %201 = call i64 (...) @SPI_finish()
  %202 = load i64, i64* @SPI_OK_FINISH, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %193
  %205 = load i32, i32* @ERROR, align 4
  %206 = call i32 @elog(i32 %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %207

207:                                              ; preds = %204, %193
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %209 = load i32, i32* @RowShareLock, align 4
  %210 = call i32 @table_close(%struct.TYPE_32__* %208, i32 %209)
  %211 = call i32 @PointerGetDatum(i32* null)
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %207, %52
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local %struct.TYPE_33__* @ri_FetchConstraintInfo(i32, %struct.TYPE_32__*, i32) #1

declare dso_local %struct.TYPE_32__* @table_open(i32, i32) #1

declare dso_local i64 @ri_Check_Pk_Match(%struct.TYPE_32__*, %struct.TYPE_32__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @table_close(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i64 @SPI_connect(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ri_BuildQueryKey(i32*, %struct.TYPE_33__*, i32) #1

declare dso_local i32* @ri_FetchPreparedPlan(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @initStringInfo(%struct.TYPE_31__*) #1

declare dso_local i32 @quoteRelationName(i8*, %struct.TYPE_32__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_31__*, i8*, i8*, i8*) #1

declare dso_local i64 @RIAttType(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @RIAttCollation(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @quoteOneName(i8*, i32) #1

declare dso_local i32 @RIAttName(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ri_GenerateQual(%struct.TYPE_31__*, i8*, i8*, i64, i32, i8*, i64) #1

declare dso_local i32 @get_collation_isdeterministic(i64) #1

declare dso_local i32 @ri_GenerateQualCollation(%struct.TYPE_31__*, i64) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_31__*, i8*) #1

declare dso_local i32* @ri_PlanCheck(i32, i32, i64*, i32*, %struct.TYPE_32__*, %struct.TYPE_32__*) #1

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
