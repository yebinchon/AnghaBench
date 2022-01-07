; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_RenameConstraint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_RenameConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__*, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@OBJECT_DOMCONSTRAINT = common dso_local global i64 0, align 8
@List = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@NoLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@RVR_MISSING_OK = common dso_local global i32 0, align 4
@RangeVarCallbackForRenameAttribute = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"relation \22%s\22 does not exist, skipping\00", align 1
@InvalidObjectAddress = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RenameConstraint(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* @InvalidOid, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @InvalidOid, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OBJECT_DOMCONSTRAINT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %1
  %16 = load i32, i32* @List, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @castNode(i32 %16, i32 %19)
  %21 = call i32 @makeTypeNameFromNameList(i32 %20)
  %22 = call i32 @typenameTypeId(i32* null, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @TypeRelationId, align 4
  %24 = load i32, i32* @RowExclusiveLock, align 4
  %25 = call i32 @table_open(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @TYPEOID, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ObjectIdGetDatum(i32 %27)
  %29 = call i32 @SearchSysCache1(i32 %26, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @HeapTupleIsValid(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %15
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @elog(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %15
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @checkDomainOwner(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ReleaseSysCache(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @NoLock, align 4
  %44 = call i32 @table_close(i32 %42, i32 %43)
  br label %75

45:                                               ; preds = %1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* @AccessExclusiveLock, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @RVR_MISSING_OK, align 4
  br label %57

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = load i32, i32* @RangeVarCallbackForRenameAttribute, align 4
  %60 = call i32 @RangeVarGetRelidExtended(%struct.TYPE_5__* %48, i32 %49, i32 %58, i32 %59, i32* null)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @OidIsValid(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @NOTICE, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = call i32 @ereport(i32 %65, i32 %71)
  %73 = load i32, i32* @InvalidObjectAddress, align 4
  store i32 %73, i32* %2, align 4
  br label %99

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %37
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = icmp ne %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %75
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %88, %75
  %96 = phi i1 [ false, %75 ], [ %94, %88 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @rename_constraint_internal(i32 %76, i32 %77, i32 %80, i32 %83, i32 %97, i32 0, i32 0)
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %64
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @typenameTypeId(i32*, i32) #1

declare dso_local i32 @makeTypeNameFromNameList(i32) #1

declare dso_local i32 @castNode(i32, i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @checkDomainOwner(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @RangeVarGetRelidExtended(%struct.TYPE_5__*, i32, i32, i32, i32*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @rename_constraint_internal(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
