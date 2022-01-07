; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_Check_Pk_Match.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_Check_Pk_Match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32*, i32* }
%struct.TYPE_24__ = type { i32 }

@RI_KEYS_NONE_NULL = common dso_local global i64 0, align 8
@SPI_OK_CONNECT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SPI_connect failed\00", align 1
@RI_PLAN_CHECK_LOOKUPPK_FROM_PK = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_25__*, i32*, %struct.TYPE_26__*)* @ri_Check_Pk_Match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ri_Check_Pk_Match(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1, i32* %2, %struct.TYPE_26__* %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [16 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %8, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %23 = call i32 @RelationGetDescr(%struct.TYPE_25__* %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %26 = call i64 @ri_NullCheck(i32 %23, i32* %24, %struct.TYPE_26__* %25, i32 1)
  %27 = load i64, i64* @RI_KEYS_NONE_NULL, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = call i64 (...) @SPI_connect()
  %32 = load i64, i64* @SPI_OK_CONNECT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @ERROR, align 4
  %36 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %4
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %39 = load i32, i32* @RI_PLAN_CHECK_LOOKUPPK_FROM_PK, align 4
  %40 = call i32 @ri_BuildQueryKey(i32* %10, %struct.TYPE_26__* %38, i32 %39)
  %41 = call i32* @ri_FetchPreparedPlan(i32* %10)
  store i32* %41, i32** %9, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %128

43:                                               ; preds = %37
  %44 = load i32, i32* @MAX_QUOTED_REL_NAME_LEN, align 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %13, align 8
  %47 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %14, align 8
  %48 = load i32, i32* @MAX_QUOTED_NAME_LEN, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %15, align 8
  %51 = load i32, i32* @RI_MAX_NUMKEYS, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %19, align 8
  %54 = call i32 @initStringInfo(%struct.TYPE_24__* %12)
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  store i8* %63, i8** %18, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %65 = call i32 @quoteRelationName(i8* %47, %struct.TYPE_25__* %64)
  %66 = load i8*, i8** %18, align 8
  %67 = call i32 @appendStringInfo(%struct.TYPE_24__* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %66, i8* %47)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  store i32 0, i32* %20, align 4
  br label %68

68:                                               ; preds = %114, %43
  %69 = load i32, i32* %20, align 4
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %117

74:                                               ; preds = %68
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @RIAttType(%struct.TYPE_25__* %75, i32 %82)
  store i32 %83, i32* %21, align 4
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %20, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @RIAttName(%struct.TYPE_25__* %84, i32 %91)
  %93 = call i32 @quoteOneName(i8* %50, i32 %92)
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i32 @sprintf(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i8*, i8** %17, align 8
  %99 = load i32, i32* %21, align 4
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %108 = load i32, i32* %21, align 4
  %109 = call i32 @ri_GenerateQual(%struct.TYPE_24__* %12, i8* %98, i8* %50, i32 %99, i32 %106, i8* %107, i32 %108)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %53, i64 %112
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %74
  %115 = load i32, i32* %20, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %20, align 4
  br label %68

117:                                              ; preds = %68
  %118 = call i32 @appendStringInfoString(%struct.TYPE_24__* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %126 = call i32* @ri_PlanCheck(i32 %120, i32 %123, i32* %53, i32* %10, %struct.TYPE_25__* %124, %struct.TYPE_25__* %125)
  store i32* %126, i32** %9, align 8
  %127 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %127)
  br label %128

128:                                              ; preds = %117, %37
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* @SPI_OK_SELECT, align 4
  %135 = call i32 @ri_PerformCheck(%struct.TYPE_26__* %129, i32* %10, i32* %130, %struct.TYPE_25__* %131, %struct.TYPE_25__* %132, i32* %133, i32* null, i32 1, i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = call i64 (...) @SPI_finish()
  %137 = load i64, i64* @SPI_OK_FINISH, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %128
  %140 = load i32, i32* @ERROR, align 4
  %141 = call i32 @elog(i32 %140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %128
  %143 = load i32, i32* %11, align 4
  ret i32 %143
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @ri_NullCheck(i32, i32*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_25__*) #1

declare dso_local i64 @SPI_connect(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ri_BuildQueryKey(i32*, %struct.TYPE_26__*, i32) #1

declare dso_local i32* @ri_FetchPreparedPlan(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @initStringInfo(%struct.TYPE_24__*) #1

declare dso_local i32 @quoteRelationName(i8*, %struct.TYPE_25__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_24__*, i8*, i8*, i8*) #1

declare dso_local i32 @RIAttType(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @quoteOneName(i8*, i32) #1

declare dso_local i32 @RIAttName(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ri_GenerateQual(%struct.TYPE_24__*, i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_24__*, i8*) #1

declare dso_local i32* @ri_PlanCheck(i32, i32, i32*, i32*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ri_PerformCheck(%struct.TYPE_26__*, i32*, i32*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32*, i32*, i32, i32) #1

declare dso_local i64 @SPI_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
