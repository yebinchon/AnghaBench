; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_AlterTableNamespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_AlterTableNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@AccessExclusiveLock = common dso_local global i32 0, align 4
@RVR_MISSING_OK = common dso_local global i32 0, align 4
@RangeVarCallbackForAlterRelation = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"relation \22%s\22 does not exist, skipping\00", align 1
@InvalidObjectAddress = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@RELKIND_SEQUENCE = common dso_local global i64 0, align 8
@DEPENDENCY_AUTO = common dso_local global i32 0, align 4
@DEPENDENCY_INTERNAL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot move an owned sequence into another schema\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Sequence \22%s\22 is linked to table \22%s\22.\00", align 1
@RelationRelationId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterTableNamespace(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = load i32, i32* @AccessExclusiveLock, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @RVR_MISSING_OK, align 4
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = load i32, i32* @RangeVarCallbackForAlterRelation, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = bitcast %struct.TYPE_13__* %29 to i8*
  %31 = call i32 @RangeVarGetRelidExtended(%struct.TYPE_14__* %17, i32 %18, i32 %27, i32 %28, i8* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @OidIsValid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @NOTICE, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = call i32 @ereport(i32 %36, i32 %42)
  %44 = load i32, i32* @InvalidObjectAddress, align 4
  store i32 %44, i32* %3, align 4
  br label %115

45:                                               ; preds = %26
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @NoLock, align 4
  %48 = call %struct.TYPE_12__* @relation_open(i32 %46, i32 %47)
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %6, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = call i32 @RelationGetNamespace(%struct.TYPE_12__* %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RELKIND_SEQUENCE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %45
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %61 = call i64 @sequenceIsOwned(i32 %59, i32 %60, i32* %13, i32* %14)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %66 = call i64 @sequenceIsOwned(i32 %64, i32 %65, i32* %13, i32* %14)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63, %58
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = call i32 @RelationGetRelationName(%struct.TYPE_12__* %73)
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @get_rel_name(i32 %75)
  %77 = call i32 @errdetail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %76)
  %78 = call i32 @ereport(i32 %69, i32 %77)
  br label %79

79:                                               ; preds = %68, %63
  br label %80

80:                                               ; preds = %79, %45
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = call i32 @RelationGetRelationName(%struct.TYPE_12__* %84)
  %86 = call i32* @makeRangeVar(i32 %83, i32 %85, i32 -1)
  store i32* %86, i32** %10, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* @NoLock, align 4
  %89 = call i32 @RangeVarGetAndCheckCreationNamespace(i32* %87, i32 %88, i32* null)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @CheckSetNamespace(i32 %90, i32 %91)
  %93 = call i32* (...) @new_object_addresses()
  store i32* %93, i32** %11, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @AlterTableNamespaceInternal(%struct.TYPE_12__* %94, i32 %95, i32 %96, i32* %97)
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @free_object_addresses(i32* %99)
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @RelationRelationId, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @ObjectAddressSet(i32 %101, i32 %102, i32 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %80
  %108 = load i32, i32* %8, align 4
  %109 = load i32*, i32** %5, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %80
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = load i32, i32* @NoLock, align 4
  %113 = call i32 @relation_close(%struct.TYPE_12__* %111, i32 %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %110, %35
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @RangeVarGetRelidExtended(%struct.TYPE_14__*, i32, i32, i32, i8*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local %struct.TYPE_12__* @relation_open(i32, i32) #1

declare dso_local i32 @RelationGetNamespace(%struct.TYPE_12__*) #1

declare dso_local i64 @sequenceIsOwned(i32, i32, i32*, i32*) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errdetail(i8*, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_12__*) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32* @makeRangeVar(i32, i32, i32) #1

declare dso_local i32 @RangeVarGetAndCheckCreationNamespace(i32*, i32, i32*) #1

declare dso_local i32 @CheckSetNamespace(i32, i32) #1

declare dso_local i32* @new_object_addresses(...) #1

declare dso_local i32 @AlterTableNamespaceInternal(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @free_object_addresses(i32*) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @relation_close(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
