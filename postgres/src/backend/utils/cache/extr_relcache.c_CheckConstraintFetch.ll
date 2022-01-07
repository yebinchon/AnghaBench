; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_CheckConstraintFetch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_CheckConstraintFetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }

@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@CONSTRAINT_CHECK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unexpected constraint record found for rel %s\00", align 1
@CacheMemoryContext = common dso_local global i32 0, align 4
@Anum_pg_constraint_conbin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"null conbin for rel %s\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%d constraint record(s) missing for rel %s\00", align 1
@CheckConstraintCmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @CheckConstraintFetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckConstraintFetch(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %3, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %30 = load i32, i32* @BTEqualStrategyNumber, align 4
  %31 = load i32, i32* @F_OIDEQ, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %33 = call i32 @RelationGetRelid(%struct.TYPE_14__* %32)
  %34 = call i32 @ObjectIdGetDatum(i32 %33)
  %35 = call i32 @ScanKeyInit(i32* %28, i32 %29, i32 %30, i32 %31, i32 %34)
  %36 = load i32, i32* @ConstraintRelationId, align 4
  %37 = load i32, i32* @AccessShareLock, align 4
  %38 = call %struct.TYPE_14__* @table_open(i32 %36, i32 %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %5, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %41 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %42 = call i32 @systable_beginscan(%struct.TYPE_14__* %39, i32 %40, i32 1, i32* null, i32 1, i32* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %109, %58, %1
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @systable_getnext(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = call i64 @HeapTupleIsValid(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %124

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @GETSTRUCT(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %10, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CONSTRAINT_CHECK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %43

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @ERROR, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %65)
  %67 = call i32 (i32, i8*, i32, ...) @elog(i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %59
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 3
  store i32 %71, i32* %76, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  store i32 %79, i32* %84, align 8
  %85 = load i32, i32* @CacheMemoryContext, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @NameStr(i32 %88)
  %90 = call i8* @MemoryContextStrdup(i32 %85, i8* %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  store i8* %90, i8** %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @Anum_pg_constraint_conbin, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = call i32 @fastgetattr(i32 %96, i32 %97, %struct.TYPE_17__* %100, i32* %12)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %68
  %105 = load i32, i32* @ERROR, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %107 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %106)
  %108 = call i32 (i32, i8*, i32, ...) @elog(i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %104, %68
  %110 = load i32, i32* %11, align 4
  %111 = call i8* @TextDatumGetCString(i32 %110)
  store i8* %111, i8** %13, align 8
  %112 = load i32, i32* @CacheMemoryContext, align 4
  %113 = load i8*, i8** %13, align 8
  %114 = call i8* @MemoryContextStrdup(i32 %112, i8* %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  store i8* %114, i8** %119, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 @pfree(i8* %120)
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %43

124:                                              ; preds = %43
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @systable_endscan(i32 %125)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = load i32, i32* @AccessShareLock, align 4
  %129 = call i32 @table_close(%struct.TYPE_14__* %127, i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %124
  %134 = load i32, i32* @ERROR, align 4
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %139 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %138)
  %140 = call i32 (i32, i8*, i32, ...) @elog(i32 %134, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %139)
  br label %141

141:                                              ; preds = %133, %124
  %142 = load i32, i32* %4, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @CheckConstraintCmp, align 4
  %148 = call i32 @qsort(%struct.TYPE_16__* %145, i32 %146, i32 24, i32 %147)
  br label %149

149:                                              ; preds = %144, %141
  ret void
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_14__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_14__*) #1

declare dso_local i8* @MemoryContextStrdup(i32, i8*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @fastgetattr(i32, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_16__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
