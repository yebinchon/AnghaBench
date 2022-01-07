; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outQuery.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@commandType = common dso_local global i32 0, align 4
@CmdType = common dso_local global i32 0, align 4
@querySource = common dso_local global i32 0, align 4
@QuerySource = common dso_local global i32 0, align 4
@canSetTag = common dso_local global i32 0, align 4
@utilityStmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c" :utilityStmt ?\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" :utilityStmt <>\00", align 1
@resultRelation = common dso_local global i32 0, align 4
@hasAggs = common dso_local global i32 0, align 4
@hasWindowFuncs = common dso_local global i32 0, align 4
@hasTargetSRFs = common dso_local global i32 0, align 4
@hasSubLinks = common dso_local global i32 0, align 4
@hasDistinctOn = common dso_local global i32 0, align 4
@hasRecursive = common dso_local global i32 0, align 4
@hasModifyingCTE = common dso_local global i32 0, align 4
@hasForUpdate = common dso_local global i32 0, align 4
@hasRowSecurity = common dso_local global i32 0, align 4
@cteList = common dso_local global i32 0, align 4
@rtable = common dso_local global i32 0, align 4
@jointree = common dso_local global i32 0, align 4
@targetList = common dso_local global i32 0, align 4
@override = common dso_local global i32 0, align 4
@OverridingKind = common dso_local global i32 0, align 4
@onConflict = common dso_local global i32 0, align 4
@returningList = common dso_local global i32 0, align 4
@groupClause = common dso_local global i32 0, align 4
@groupingSets = common dso_local global i32 0, align 4
@havingQual = common dso_local global i32 0, align 4
@windowClause = common dso_local global i32 0, align 4
@distinctClause = common dso_local global i32 0, align 4
@sortClause = common dso_local global i32 0, align 4
@limitOffset = common dso_local global i32 0, align 4
@limitCount = common dso_local global i32 0, align 4
@rowMarks = common dso_local global i32 0, align 4
@setOperations = common dso_local global i32 0, align 4
@constraintDeps = common dso_local global i32 0, align 4
@withCheckOptions = common dso_local global i32 0, align 4
@stmt_location = common dso_local global i32 0, align 4
@stmt_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @_outQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outQuery(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @commandType, align 4
  %7 = load i32, i32* @CmdType, align 4
  %8 = call i32 @WRITE_ENUM_FIELD(i32 %6, i32 %7)
  %9 = load i32, i32* @querySource, align 4
  %10 = load i32, i32* @QuerySource, align 4
  %11 = call i32 @WRITE_ENUM_FIELD(i32 %9, i32 %10)
  %12 = load i32, i32* @canSetTag, align 4
  %13 = call i32 @WRITE_BOOL_FIELD(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @nodeTag(i64 %21)
  switch i32 %22, label %26 [
    i32 131, label %23
    i32 129, label %23
    i32 128, label %23
    i32 130, label %23
  ]

23:                                               ; preds = %18, %18, %18, %18
  %24 = load i32, i32* @utilityStmt, align 4
  %25 = call i32 @WRITE_NODE_FIELD(i32 %24)
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @appendStringInfoString(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @appendStringInfoString(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i32, i32* @resultRelation, align 4
  %35 = call i32 @WRITE_INT_FIELD(i32 %34)
  %36 = load i32, i32* @hasAggs, align 4
  %37 = call i32 @WRITE_BOOL_FIELD(i32 %36)
  %38 = load i32, i32* @hasWindowFuncs, align 4
  %39 = call i32 @WRITE_BOOL_FIELD(i32 %38)
  %40 = load i32, i32* @hasTargetSRFs, align 4
  %41 = call i32 @WRITE_BOOL_FIELD(i32 %40)
  %42 = load i32, i32* @hasSubLinks, align 4
  %43 = call i32 @WRITE_BOOL_FIELD(i32 %42)
  %44 = load i32, i32* @hasDistinctOn, align 4
  %45 = call i32 @WRITE_BOOL_FIELD(i32 %44)
  %46 = load i32, i32* @hasRecursive, align 4
  %47 = call i32 @WRITE_BOOL_FIELD(i32 %46)
  %48 = load i32, i32* @hasModifyingCTE, align 4
  %49 = call i32 @WRITE_BOOL_FIELD(i32 %48)
  %50 = load i32, i32* @hasForUpdate, align 4
  %51 = call i32 @WRITE_BOOL_FIELD(i32 %50)
  %52 = load i32, i32* @hasRowSecurity, align 4
  %53 = call i32 @WRITE_BOOL_FIELD(i32 %52)
  %54 = load i32, i32* @cteList, align 4
  %55 = call i32 @WRITE_NODE_FIELD(i32 %54)
  %56 = load i32, i32* @rtable, align 4
  %57 = call i32 @WRITE_NODE_FIELD(i32 %56)
  %58 = load i32, i32* @jointree, align 4
  %59 = call i32 @WRITE_NODE_FIELD(i32 %58)
  %60 = load i32, i32* @targetList, align 4
  %61 = call i32 @WRITE_NODE_FIELD(i32 %60)
  %62 = load i32, i32* @override, align 4
  %63 = load i32, i32* @OverridingKind, align 4
  %64 = call i32 @WRITE_ENUM_FIELD(i32 %62, i32 %63)
  %65 = load i32, i32* @onConflict, align 4
  %66 = call i32 @WRITE_NODE_FIELD(i32 %65)
  %67 = load i32, i32* @returningList, align 4
  %68 = call i32 @WRITE_NODE_FIELD(i32 %67)
  %69 = load i32, i32* @groupClause, align 4
  %70 = call i32 @WRITE_NODE_FIELD(i32 %69)
  %71 = load i32, i32* @groupingSets, align 4
  %72 = call i32 @WRITE_NODE_FIELD(i32 %71)
  %73 = load i32, i32* @havingQual, align 4
  %74 = call i32 @WRITE_NODE_FIELD(i32 %73)
  %75 = load i32, i32* @windowClause, align 4
  %76 = call i32 @WRITE_NODE_FIELD(i32 %75)
  %77 = load i32, i32* @distinctClause, align 4
  %78 = call i32 @WRITE_NODE_FIELD(i32 %77)
  %79 = load i32, i32* @sortClause, align 4
  %80 = call i32 @WRITE_NODE_FIELD(i32 %79)
  %81 = load i32, i32* @limitOffset, align 4
  %82 = call i32 @WRITE_NODE_FIELD(i32 %81)
  %83 = load i32, i32* @limitCount, align 4
  %84 = call i32 @WRITE_NODE_FIELD(i32 %83)
  %85 = load i32, i32* @rowMarks, align 4
  %86 = call i32 @WRITE_NODE_FIELD(i32 %85)
  %87 = load i32, i32* @setOperations, align 4
  %88 = call i32 @WRITE_NODE_FIELD(i32 %87)
  %89 = load i32, i32* @constraintDeps, align 4
  %90 = call i32 @WRITE_NODE_FIELD(i32 %89)
  %91 = load i32, i32* @withCheckOptions, align 4
  %92 = call i32 @WRITE_NODE_FIELD(i32 %91)
  %93 = load i32, i32* @stmt_location, align 4
  %94 = call i32 @WRITE_LOCATION_FIELD(i32 %93)
  %95 = load i32, i32* @stmt_len, align 4
  %96 = call i32 @WRITE_LOCATION_FIELD(i32 %95)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_ENUM_FIELD(i32, i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @nodeTag(i64) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @WRITE_INT_FIELD(i32) #1

declare dso_local i32 @WRITE_LOCATION_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
