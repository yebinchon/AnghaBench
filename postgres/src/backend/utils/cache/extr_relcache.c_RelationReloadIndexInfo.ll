; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationReloadIndexInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationReloadIndexInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_20__*, i32*, %struct.TYPE_25__*, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RELKIND_INDEX = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@criticalRelcachesBuilt = common dso_local global i32 0, align 4
@ClassOidIndexId = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not find pg_class tuple for index %u\00", align 1
@CLASS_TUPLE_SIZE = common dso_local global i32 0, align 4
@INDEXRELID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cache lookup failed for index %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @RelationReloadIndexInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RelationReloadIndexInfo(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RELKIND_INDEX, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15, %1
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %15
  %30 = phi i1 [ false, %15 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %34 = call i32 @RelationCloseSmgr(%struct.TYPE_22__* %33)
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @pfree(i32* %42)
  br label %44

44:                                               ; preds = %39, %29
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 5
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i32, i32* @criticalRelcachesBuilt, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %202

59:                                               ; preds = %53, %44
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %61 = call i64 @RelationGetRelid(%struct.TYPE_22__* %60)
  %62 = load i64, i64* @ClassOidIndexId, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %66 = call i64 @RelationGetRelid(%struct.TYPE_22__* %65)
  %67 = load i32, i32* %3, align 4
  %68 = call %struct.TYPE_23__* @ScanPgRelation(i64 %66, i32 %67, i32 0)
  store %struct.TYPE_23__* %68, %struct.TYPE_23__** %4, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %70 = call i32 @HeapTupleIsValid(%struct.TYPE_23__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* @ERROR, align 4
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %75 = call i64 @RelationGetRelid(%struct.TYPE_22__* %74)
  %76 = call i32 @elog(i32 %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %72, %59
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %79 = call i64 @GETSTRUCT(%struct.TYPE_23__* %78)
  store i64 %79, i64* %5, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i32, i32* @CLASS_TUPLE_SIZE, align 4
  %85 = call i32 @memcpy(%struct.TYPE_25__* %82, i64 %83, i32 %84)
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %77
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @pfree(i32* %93)
  br label %95

95:                                               ; preds = %90, %77
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %98 = call i32 @RelationParseRelOptions(%struct.TYPE_22__* %96, %struct.TYPE_23__* %97)
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %100 = call i32 @heap_freetuple(%struct.TYPE_23__* %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %102 = call i32 @RelationInitPhysicalAddr(%struct.TYPE_22__* %101)
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %104 = call i32 @IsSystemRelation(%struct.TYPE_22__* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %199, label %106

106:                                              ; preds = %95
  %107 = load i32, i32* @INDEXRELID, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %109 = call i64 @RelationGetRelid(%struct.TYPE_22__* %108)
  %110 = call i32 @ObjectIdGetDatum(i64 %109)
  %111 = call %struct.TYPE_23__* @SearchSysCache1(i32 %107, i32 %110)
  store %struct.TYPE_23__* %111, %struct.TYPE_23__** %6, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %113 = call i32 @HeapTupleIsValid(%struct.TYPE_23__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %106
  %116 = load i32, i32* @ERROR, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %118 = call i64 @RelationGetRelid(%struct.TYPE_22__* %117)
  %119 = call i32 @elog(i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %115, %106
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %122 = call i64 @GETSTRUCT(%struct.TYPE_23__* %121)
  %123 = inttoptr i64 %122 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %7, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 8
  store i32 %126, i32* %130, align 4
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 7
  store i32 %133, i32* %137, align 4
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 6
  store i32 %140, i32* %144, align 4
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 5
  store i32 %147, i32* %151, align 4
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 4
  store i32 %154, i32* %158, align 4
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 3
  store i32 %161, i32* %165, align 4
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  store i32 %168, i32* %172, align 4
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  store i32 %175, i32* %179, align 4
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  store i32 %182, i32* %186, align 4
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @HeapTupleHeaderGetXmin(i32 %194)
  %196 = call i32 @HeapTupleHeaderSetXmin(i32 %191, i32 %195)
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %198 = call i32 @ReleaseSysCache(%struct.TYPE_23__* %197)
  br label %199

199:                                              ; preds = %120, %95
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  store i32 1, i32* %201, align 8
  br label %202

202:                                              ; preds = %199, %56
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RelationCloseSmgr(%struct.TYPE_22__*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i64 @RelationGetRelid(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_23__* @ScanPgRelation(i64, i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_23__*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_23__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_25__*, i64, i32) #1

declare dso_local i32 @RelationParseRelOptions(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_23__*) #1

declare dso_local i32 @RelationInitPhysicalAddr(%struct.TYPE_22__*) #1

declare dso_local i32 @IsSystemRelation(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_23__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleHeaderSetXmin(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetXmin(i32) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
