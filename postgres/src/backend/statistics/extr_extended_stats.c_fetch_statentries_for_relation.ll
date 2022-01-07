; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_extended_stats.c_fetch_statentries_for_relation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_extended_stats.c_fetch_statentries_for_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@NIL = common dso_local global i32* null, align 8
@Anum_pg_statistic_ext_stxrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@StatisticExtRelidIndexId = common dso_local global i32 0, align 4
@STATEXTOID = common dso_local global i32 0, align 4
@Anum_pg_statistic_ext_stxkind = common dso_local global i32 0, align 4
@CHAROID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"stxkind is not a 1-D char array\00", align 1
@STATS_EXT_NDISTINCT = common dso_local global i8 0, align 1
@STATS_EXT_DEPENDENCIES = common dso_local global i8 0, align 1
@STATS_EXT_MCV = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @fetch_statentries_for_relation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fetch_statentries_for_relation(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %16 = load i32*, i32** @NIL, align 8
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* @Anum_pg_statistic_ext_stxrelid, align 4
  %18 = load i32, i32* @BTEqualStrategyNumber, align 4
  %19 = load i32, i32* @F_OIDEQ, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ObjectIdGetDatum(i32 %20)
  %22 = call i32 @ScanKeyInit(i32* %6, i32 %17, i32 %18, i32 %19, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @StatisticExtRelidIndexId, align 4
  %25 = call i32 @systable_beginscan(i32 %23, i32 %24, i32 1, i32* null, i32 1, i32* %6)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %171, %2
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @systable_getnext(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = call i64 @HeapTupleIsValid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %175

31:                                               ; preds = %26
  %32 = call %struct.TYPE_7__* @palloc0(i32 24)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @GETSTRUCT(i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %15, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @get_namespace_name(i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @NameStr(i32 %49)
  %51 = call i32 @pstrdup(i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %81, %31
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @bms_add_member(i32 %69, i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %59

84:                                               ; preds = %59
  %85 = load i32, i32* @STATEXTOID, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @Anum_pg_statistic_ext_stxkind, align 4
  %88 = call i32 @SysCacheGetAttr(i32 %85, i32 %86, i32 %87, i32* %11)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @Assert(i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = call i32* @DatumGetArrayTypeP(i32 %94)
  store i32* %95, i32** %13, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @ARR_NDIM(i32* %96)
  %98 = icmp ne i32 %97, 1
  br i1 %98, label %108, label %99

99:                                               ; preds = %84
  %100 = load i32*, i32** %13, align 8
  %101 = call i64 @ARR_HASNULL(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load i32*, i32** %13, align 8
  %105 = call i64 @ARR_ELEMTYPE(i32* %104)
  %106 = load i64, i64* @CHAROID, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103, %99, %84
  %109 = load i32, i32* @ERROR, align 4
  %110 = call i32 @elog(i32 %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32*, i32** %13, align 8
  %113 = call i64 @ARR_DATA_PTR(i32* %112)
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %14, align 8
  store i32 0, i32* %12, align 4
  br label %115

115:                                              ; preds = %168, %111
  %116 = load i32, i32* %12, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = call i32* @ARR_DIMS(i32* %117)
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %116, %120
  br i1 %121, label %122, label %171

122:                                              ; preds = %115
  %123 = load i8*, i8** %14, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* @STATS_EXT_NDISTINCT, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %152, label %132

132:                                              ; preds = %122
  %133 = load i8*, i8** %14, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = load i8, i8* @STATS_EXT_DEPENDENCIES, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %152, label %142

142:                                              ; preds = %132
  %143 = load i8*, i8** %14, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = load i8, i8* @STATS_EXT_MCV, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %148, %150
  br label %152

152:                                              ; preds = %142, %132, %122
  %153 = phi i1 [ true, %132 ], [ true, %122 ], [ %151, %142 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @Assert(i32 %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i8*, i8** %14, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = call i32 @lappend_int(i32 %158, i32 %164)
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %152
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %115

171:                                              ; preds = %115
  %172 = load i32*, i32** %8, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %174 = call i32* @lappend(i32* %172, %struct.TYPE_7__* %173)
  store i32* %174, i32** %8, align 8
  br label %26

175:                                              ; preds = %26
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @systable_endscan(i32 %176)
  %178 = load i32*, i32** %8, align 8
  ret i32* %178
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local %struct.TYPE_7__* @palloc0(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @bms_add_member(i32, i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @lappend_int(i32, i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @systable_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
