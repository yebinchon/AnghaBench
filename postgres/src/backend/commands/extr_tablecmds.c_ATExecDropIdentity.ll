; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecDropIdentity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecDropIdentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i8 }

@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot alter system column \22%s\22\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"column \22%s\22 of relation \22%s\22 is not an identity column\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"column \22%s\22 of relation \22%s\22 is not an identity column, skipping\00", align 1
@InvalidObjectAddress = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@RelationRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_INTERNAL = common dso_local global i32 0, align 4
@DROP_RESTRICT = common dso_local global i32 0, align 4
@PERFORM_DELETION_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i32, i8*, i32, i32)* @ATExecDropIdentity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @ATExecDropIdentity(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @AttributeRelationId, align 4
  %18 = load i32, i32* @RowExclusiveLock, align 4
  %19 = call i32 @table_open(i32 %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @RelationGetRelid(i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call %struct.TYPE_14__* @SearchSysCacheCopyAttName(i32 %21, i8* %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %10, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = call i32 @HeapTupleIsValid(%struct.TYPE_14__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @RelationGetRelationName(i32 %32)
  %34 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %33)
  %35 = call i32 @ereport(i32 %28, i32 %34)
  br label %36

36:                                               ; preds = %27, %4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %38 = call i64 @GETSTRUCT(%struct.TYPE_14__* %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %11, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = call i32 @ereport(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %36
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i8, i8* %54, align 8
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %83, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @RelationGetRelationName(i32 %65)
  %67 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %64, i32 %66)
  %68 = call i32 @ereport(i32 %61, i32 %67)
  br label %82

69:                                               ; preds = %57
  %70 = load i32, i32* @NOTICE, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @RelationGetRelationName(i32 %72)
  %74 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i8* %71, i32 %73)
  %75 = call i32 @ereport(i32 %70, i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = call i32 @heap_freetuple(%struct.TYPE_14__* %76)
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @RowExclusiveLock, align 4
  %80 = call i32 @table_close(i32 %78, i32 %79)
  %81 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 bitcast (%struct.TYPE_13__* @InvalidObjectAddress to i8*), i64 16, i1 false)
  br label %133

82:                                               ; preds = %60
  br label %83

83:                                               ; preds = %82, %52
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  store i8 0, i8* %85, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %90 = call i32 @CatalogTupleUpdate(i32 %86, i32* %88, %struct.TYPE_14__* %89)
  %91 = load i32, i32* @RelationRelationId, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @RelationGetRelid(i32 %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @InvokeObjectPostAlterHook(i32 %91, i32 %93, i64 %96)
  %98 = load i32, i32* @RelationRelationId, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @RelationGetRelid(i32 %99)
  %101 = load i64, i64* %12, align 8
  %102 = bitcast %struct.TYPE_13__* %14 to { i64, i64 }*
  %103 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %102, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @ObjectAddressSubSet(i64 %104, i64 %106, i32 %98, i32 %100, i64 %101)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %109 = call i32 @heap_freetuple(%struct.TYPE_14__* %108)
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @RowExclusiveLock, align 4
  %112 = call i32 @table_close(i32 %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @RelationGetRelid(i32 %113)
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @getIdentitySequence(i32 %114, i64 %115, i32 0)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* @RelationRelationId, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @RelationRelationId, align 4
  %120 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %121 = call i32 @deleteDependencyRecordsForClass(i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = call i32 (...) @CommandCounterIncrement()
  %123 = load i32, i32* @RelationRelationId, align 4
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %15, align 4
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i32 %125, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* @DROP_RESTRICT, align 4
  %129 = load i32, i32* @PERFORM_DELETION_INTERNAL, align 4
  %130 = call i32 @performDeletion(%struct.TYPE_13__* %16, i32 %128, i32 %129)
  %131 = bitcast %struct.TYPE_13__* %5 to i8*
  %132 = bitcast %struct.TYPE_13__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 16, i1 false)
  br label %133

133:                                              ; preds = %83, %69
  %134 = bitcast %struct.TYPE_13__* %5 to { i64, i64 }*
  %135 = load { i64, i64 }, { i64, i64 }* %134, align 8
  ret { i64, i64 } %135
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_14__* @SearchSysCacheCopyAttName(i32, i8*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_14__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_14__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_14__*) #1

declare dso_local i32 @table_close(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i64) #1

declare dso_local i32 @ObjectAddressSubSet(i64, i64, i32, i32, i64) #1

declare dso_local i32 @getIdentitySequence(i32, i64, i32) #1

declare dso_local i32 @deleteDependencyRecordsForClass(i32, i32, i32, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @performDeletion(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
