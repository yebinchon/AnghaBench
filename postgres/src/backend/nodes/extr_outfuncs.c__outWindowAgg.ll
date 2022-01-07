; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outWindowAgg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outWindowAgg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"WINDOWAGG\00", align 1
@winref = common dso_local global i32 0, align 4
@partNumCols = common dso_local global i32 0, align 4
@partColIdx = common dso_local global i32 0, align 4
@partOperators = common dso_local global i32 0, align 4
@partCollations = common dso_local global i32 0, align 4
@ordNumCols = common dso_local global i32 0, align 4
@ordColIdx = common dso_local global i32 0, align 4
@ordOperators = common dso_local global i32 0, align 4
@ordCollations = common dso_local global i32 0, align 4
@frameOptions = common dso_local global i32 0, align 4
@startOffset = common dso_local global i32 0, align 4
@endOffset = common dso_local global i32 0, align 4
@startInRangeFunc = common dso_local global i32 0, align 4
@endInRangeFunc = common dso_local global i32 0, align 4
@inRangeColl = common dso_local global i32 0, align 4
@inRangeAsc = common dso_local global i32 0, align 4
@inRangeNullsFirst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @_outWindowAgg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outWindowAgg(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = bitcast %struct.TYPE_3__* %7 to i32*
  %9 = call i32 @_outPlanInfo(i32 %6, i32* %8)
  %10 = load i32, i32* @winref, align 4
  %11 = call i32 @WRITE_UINT_FIELD(i32 %10)
  %12 = load i32, i32* @partNumCols, align 4
  %13 = call i32 @WRITE_INT_FIELD(i32 %12)
  %14 = load i32, i32* @partColIdx, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @WRITE_ATTRNUMBER_ARRAY(i32 %14, i32 %17)
  %19 = load i32, i32* @partOperators, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @WRITE_OID_ARRAY(i32 %19, i32 %22)
  %24 = load i32, i32* @partCollations, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @WRITE_OID_ARRAY(i32 %24, i32 %27)
  %29 = load i32, i32* @ordNumCols, align 4
  %30 = call i32 @WRITE_INT_FIELD(i32 %29)
  %31 = load i32, i32* @ordColIdx, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WRITE_ATTRNUMBER_ARRAY(i32 %31, i32 %34)
  %36 = load i32, i32* @ordOperators, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @WRITE_OID_ARRAY(i32 %36, i32 %39)
  %41 = load i32, i32* @ordCollations, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @WRITE_OID_ARRAY(i32 %41, i32 %44)
  %46 = load i32, i32* @frameOptions, align 4
  %47 = call i32 @WRITE_INT_FIELD(i32 %46)
  %48 = load i32, i32* @startOffset, align 4
  %49 = call i32 @WRITE_NODE_FIELD(i32 %48)
  %50 = load i32, i32* @endOffset, align 4
  %51 = call i32 @WRITE_NODE_FIELD(i32 %50)
  %52 = load i32, i32* @startInRangeFunc, align 4
  %53 = call i32 @WRITE_OID_FIELD(i32 %52)
  %54 = load i32, i32* @endInRangeFunc, align 4
  %55 = call i32 @WRITE_OID_FIELD(i32 %54)
  %56 = load i32, i32* @inRangeColl, align 4
  %57 = call i32 @WRITE_OID_FIELD(i32 %56)
  %58 = load i32, i32* @inRangeAsc, align 4
  %59 = call i32 @WRITE_BOOL_FIELD(i32 %58)
  %60 = load i32, i32* @inRangeNullsFirst, align 4
  %61 = call i32 @WRITE_BOOL_FIELD(i32 %60)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @_outPlanInfo(i32, i32*) #1

declare dso_local i32 @WRITE_UINT_FIELD(i32) #1

declare dso_local i32 @WRITE_INT_FIELD(i32) #1

declare dso_local i32 @WRITE_ATTRNUMBER_ARRAY(i32, i32) #1

declare dso_local i32 @WRITE_OID_ARRAY(i32, i32) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_OID_FIELD(i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
