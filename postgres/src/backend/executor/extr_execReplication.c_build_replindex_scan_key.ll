; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_build_replindex_scan_key.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_build_replindex_scan_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i64*, i32* }
%struct.TYPE_16__ = type { i32* }

@INDEXRELID = common dso_local global i32 0, align 4
@Anum_pg_index_indclass = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"missing operator %d(%u,%u) in opfamily %u\00", align 1
@SK_ISNULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_18__*)* @build_replindex_scan_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_replindex_scan_key(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %8, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %13, align 8
  store i32 0, i32* %14, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = call i64 @RelationGetReplicaIndex(%struct.TYPE_20__* %25)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %28 = call i64 @RelationGetRelid(%struct.TYPE_20__* %27)
  %29 = icmp eq i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32, i32* @INDEXRELID, align 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @Anum_pg_index_indclass, align 4
  %37 = call i32 @SysCacheGetAttr(i32 %32, i32 %35, i32 %36, i32* %10)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @DatumGetPointer(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %12, align 8
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %142, %4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %49 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_20__* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %145

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %18, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %19, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @get_opclass_input_type(i32 %67)
  store i32 %68, i32* %20, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @get_opclass_family(i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* @BTEqualStrategyNumber, align 4
  %81 = call i32 @get_opfamily_member(i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @OidIsValid(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %51
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @BTEqualStrategyNumber, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @elog(i32 %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %51
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @get_opcode(i32 %93)
  store i32 %94, i32* %17, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i64 %97
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* @BTEqualStrategyNumber, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ScanKeyInit(%struct.TYPE_19__* %98, i32 %99, i32 %100, i32 %101, i32 %109)
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  store i32 %117, i32* %122, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %92
  store i32 1, i32* %14, align 4
  %133 = load i32, i32* @SK_ISNULL, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %133
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %132, %92
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %46

145:                                              ; preds = %46
  %146 = load i32, i32* %14, align 4
  ret i32 %146
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @RelationGetReplicaIndex(%struct.TYPE_20__*) #1

declare dso_local i64 @RelationGetRelid(%struct.TYPE_20__*) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_20__*) #1

declare dso_local i32 @get_opclass_input_type(i32) #1

declare dso_local i32 @get_opclass_family(i32) #1

declare dso_local i32 @get_opfamily_member(i32, i32, i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @get_opcode(i32) #1

declare dso_local i32 @ScanKeyInit(%struct.TYPE_19__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
