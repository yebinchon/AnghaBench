; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tsearchcmds.c_makeConfigurationDependencies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tsearchcmds.c_makeConfigurationDependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@TSConfigRelationId = common dso_local global i32 0, align 4
@NamespaceRelationId = common dso_local global i32 0, align 4
@TSParserRelationId = common dso_local global i32 0, align 4
@Anum_pg_ts_config_map_mapcfg = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@TSConfigMapIndexId = common dso_local global i32 0, align 4
@TSDictionaryRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i32, i32, i64)* @makeConfigurationDependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @makeConfigurationDependencies(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @GETSTRUCT(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  %19 = load i32, i32* @TSConfigRelationId, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @deleteDependencyRecordsFor(i32 %30, i32 %32, i32 1)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @deleteSharedDependencyRecordsFor(i32 %35, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %28, %3
  %40 = call i32* (...) @new_object_addresses()
  store i32* %40, i32** %9, align 8
  %41 = load i32, i32* @NamespaceRelationId, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @add_exact_object_address(%struct.TYPE_8__* %10, i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @recordDependencyOnOwner(i32 %51, i32 %53, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_8__* %4, i32 %58)
  %60 = load i32, i32* @TSParserRelationId, align 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @add_exact_object_address(%struct.TYPE_8__* %10, i32* %67)
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %105

71:                                               ; preds = %39
  %72 = call i32 (...) @CommandCounterIncrement()
  %73 = load i32, i32* @Anum_pg_ts_config_map_mapcfg, align 4
  %74 = load i32, i32* @BTEqualStrategyNumber, align 4
  %75 = load i32, i32* @F_OIDEQ, align 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ObjectIdGetDatum(i32 %77)
  %79 = call i32 @ScanKeyInit(i32* %11, i32 %73, i32 %74, i32 %75, i32 %78)
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* @TSConfigMapIndexId, align 4
  %82 = call i32 @systable_beginscan(i64 %80, i32 %81, i32 1, i32* null, i32 1, i32* %11)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %88, %71
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @systable_getnext(i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = call i64 @HeapTupleIsValid(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @GETSTRUCT(i32 %89)
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %14, align 8
  %93 = load i32, i32* @TSDictionaryRelationId, align 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 %93, i32* %94, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @add_exact_object_address(%struct.TYPE_8__* %10, i32* %100)
  br label %83

102:                                              ; preds = %83
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @systable_endscan(i32 %103)
  br label %105

105:                                              ; preds = %102, %39
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %108 = call i32 @record_object_address_dependencies(%struct.TYPE_8__* %4, i32* %106, i32 %107)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @free_object_addresses(i32* %109)
  %111 = bitcast %struct.TYPE_8__* %4 to { i64, i64 }*
  %112 = load { i64, i64 }, { i64, i64 }* %111, align 8
  ret { i64, i64 } %112
}

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @deleteDependencyRecordsFor(i32, i32, i32) #1

declare dso_local i32 @deleteSharedDependencyRecordsFor(i32, i32, i32) #1

declare dso_local i32* @new_object_addresses(...) #1

declare dso_local i32 @add_exact_object_address(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @recordDependencyOnOwner(i32, i32, i32) #1

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i64, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @record_object_address_dependencies(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @free_object_addresses(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
