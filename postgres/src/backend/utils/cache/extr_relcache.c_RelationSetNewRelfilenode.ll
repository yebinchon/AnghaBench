; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationSetNewRelfilenode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationSetNewRelfilenode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_26__ }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64, i64, i8, i64, i64, i64, i8* }

@InvalidMultiXactId = common dso_local global i64 0, align 8
@InvalidTransactionId = common dso_local global i64 0, align 8
@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not find tuple for relation %u\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"relation \22%s\22 does not have storage\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationSetNewRelfilenode(%struct.TYPE_25__* %0, i8 signext %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_26__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store i8 %1, i8* %4, align 1
  %13 = load i64, i64* @InvalidMultiXactId, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* @InvalidTransactionId, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i8, i8* %4, align 1
  %21 = call i8* @GetNewRelFileNode(i32 %19, i32* null, i8 signext %20)
  store i8* %21, i8** %5, align 8
  %22 = load i32, i32* @RelationRelationId, align 4
  %23 = load i32, i32* @RowExclusiveLock, align 4
  %24 = call %struct.TYPE_25__* @table_open(i32 %22, i32 %23)
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %6, align 8
  %25 = load i32, i32* @RELOID, align 4
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %27 = call i32 @RelationGetRelid(%struct.TYPE_25__* %26)
  %28 = call i32 @ObjectIdGetDatum(i32 %27)
  %29 = call %struct.TYPE_27__* @SearchSysCacheCopy1(i32 %25, i32 %28)
  store %struct.TYPE_27__* %29, %struct.TYPE_27__** %7, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %31 = call i32 @HeapTupleIsValid(%struct.TYPE_27__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ERROR, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %36 = call i32 @RelationGetRelid(%struct.TYPE_25__* %35)
  %37 = call i32 @elog(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %2
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %40 = call i64 @GETSTRUCT(%struct.TYPE_27__* %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %41, %struct.TYPE_28__** %8, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %43 = call i32 @RelationDropStorage(%struct.TYPE_25__* %42)
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 2
  %46 = bitcast %struct.TYPE_26__* %11 to i8*
  %47 = bitcast %struct.TYPE_26__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %66 [
    i32 132, label %55
    i32 129, label %55
    i32 130, label %62
    i32 128, label %62
    i32 131, label %62
  ]

55:                                               ; preds = %38, %38
  %56 = load i8, i8* %4, align 1
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @RelationCreateStorage(i8* %58, i8 signext %56)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @smgrclose(i32 %60)
  br label %71

62:                                               ; preds = %38, %38, %38
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %64 = load i8, i8* %4, align 1
  %65 = call i32 @table_relation_set_new_filenode(%struct.TYPE_25__* %63, %struct.TYPE_26__* %11, i8 signext %64, i64* %10, i64* %9)
  br label %71

66:                                               ; preds = %38
  %67 = load i32, i32* @ERROR, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %69 = call i32 @RelationGetRelationName(%struct.TYPE_25__* %68)
  %70 = call i32 @elog(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %66, %62, %55
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %73 = call i64 @RelationIsMapped(%struct.TYPE_25__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %119

75:                                               ; preds = %71
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 132
  %82 = zext i1 %81 to i32
  %83 = call i32 @Assert(i32 %82)
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @Assert(i32 %96)
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 2
  %100 = load i8, i8* %99, align 8
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* %4, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @Assert(i32 %105)
  %107 = call i32 (...) @GetCurrentTransactionId()
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %109 = call i32 @RelationGetRelid(%struct.TYPE_25__* %108)
  %110 = load i8*, i8** %5, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @RelationMapUpdateMap(i32 %109, i8* %110, i32 %115, i32 0)
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %118 = call i32 @CacheInvalidateRelcache(%struct.TYPE_25__* %117)
  br label %151

119:                                              ; preds = %71
  %120 = load i8*, i8** %5, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 129
  br i1 %128, label %129, label %136

129:                                              ; preds = %119
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 5
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 4
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %129, %119
  %137 = load i64, i64* %10, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load i8, i8* %4, align 1
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 2
  store i8 %143, i8* %145, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %150 = call i32 @CatalogTupleUpdate(%struct.TYPE_25__* %146, i32* %148, %struct.TYPE_27__* %149)
  br label %151

151:                                              ; preds = %136, %75
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %153 = call i32 @heap_freetuple(%struct.TYPE_27__* %152)
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %155 = load i32, i32* @RowExclusiveLock, align 4
  %156 = call i32 @table_close(%struct.TYPE_25__* %154, i32 %155)
  %157 = call i32 (...) @CommandCounterIncrement()
  %158 = call i32 (...) @GetCurrentSubTransactionId()
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %162 = call i32 @EOXactListAdd(%struct.TYPE_25__* %161)
  ret void
}

declare dso_local i8* @GetNewRelFileNode(i32, i32*, i8 signext) #1

declare dso_local %struct.TYPE_25__* @table_open(i32, i32) #1

declare dso_local %struct.TYPE_27__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_25__*) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_27__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_27__*) #1

declare dso_local i32 @RelationDropStorage(%struct.TYPE_25__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RelationCreateStorage(i8*, i8 signext) #1

declare dso_local i32 @smgrclose(i32) #1

declare dso_local i32 @table_relation_set_new_filenode(%struct.TYPE_25__*, %struct.TYPE_26__*, i8 signext, i64*, i64*) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_25__*) #1

declare dso_local i64 @RelationIsMapped(%struct.TYPE_25__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GetCurrentTransactionId(...) #1

declare dso_local i32 @RelationMapUpdateMap(i32, i8*, i32, i32) #1

declare dso_local i32 @CacheInvalidateRelcache(%struct.TYPE_25__*) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_25__*, i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_27__*) #1

declare dso_local i32 @table_close(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @GetCurrentSubTransactionId(...) #1

declare dso_local i32 @EOXactListAdd(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
