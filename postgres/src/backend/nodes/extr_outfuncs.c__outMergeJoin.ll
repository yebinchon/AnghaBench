; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outMergeJoin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outMergeJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"MERGEJOIN\00", align 1
@skip_mark_restore = common dso_local global i32 0, align 4
@mergeclauses = common dso_local global i32 0, align 4
@mergeFamilies = common dso_local global i32 0, align 4
@mergeCollations = common dso_local global i32 0, align 4
@mergeStrategies = common dso_local global i32 0, align 4
@mergeNullsFirst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @_outMergeJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outMergeJoin(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = bitcast %struct.TYPE_3__* %8 to i32*
  %10 = call i32 @_outJoinPlanInfo(i32 %7, i32* %9)
  %11 = load i32, i32* @skip_mark_restore, align 4
  %12 = call i32 @WRITE_BOOL_FIELD(i32 %11)
  %13 = load i32, i32* @mergeclauses, align 4
  %14 = call i32 @WRITE_NODE_FIELD(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @list_length(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @mergeFamilies, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @WRITE_OID_ARRAY(i32 %19, i32 %20)
  %22 = load i32, i32* @mergeCollations, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @WRITE_OID_ARRAY(i32 %22, i32 %23)
  %25 = load i32, i32* @mergeStrategies, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @WRITE_INT_ARRAY(i32 %25, i32 %26)
  %28 = load i32, i32* @mergeNullsFirst, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @WRITE_BOOL_ARRAY(i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @_outJoinPlanInfo(i32, i32*) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @WRITE_OID_ARRAY(i32, i32) #1

declare dso_local i32 @WRITE_INT_ARRAY(i32, i32) #1

declare dso_local i32 @WRITE_BOOL_ARRAY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
