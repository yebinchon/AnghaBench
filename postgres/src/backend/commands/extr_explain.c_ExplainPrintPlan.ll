; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainPrintPlan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_ExplainPrintPlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i64 }

@GatherState = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExplainPrintPlan(%struct.TYPE_19__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = icmp ne %struct.TYPE_15__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 4
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %17, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = call i32 @ExplainPreScanNode(%struct.TYPE_17__* %27, i32** %5)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @select_rtable_names_for_explain(i32 %31, i32* %32)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @deparse_context_for_plan_rtable(i32 %38, i32 %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %6, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = load i32, i32* @GatherState, align 4
  %52 = call i64 @IsA(%struct.TYPE_17__* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %2
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.TYPE_18__*
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = call %struct.TYPE_17__* @outerPlanState(%struct.TYPE_17__* %63)
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %6, align 8
  br label %65

65:                                               ; preds = %62, %54, %2
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = load i32, i32* @NIL, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = call i32 @ExplainNode(%struct.TYPE_17__* %66, i32 %67, i32* null, i32* null, %struct.TYPE_19__* %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = call i32 @ExplainPrintSettings(%struct.TYPE_19__* %70)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ExplainPreScanNode(%struct.TYPE_17__*, i32**) #1

declare dso_local i32 @select_rtable_names_for_explain(i32, i32*) #1

declare dso_local i32 @deparse_context_for_plan_rtable(i32, i32) #1

declare dso_local i64 @IsA(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_17__* @outerPlanState(%struct.TYPE_17__*) #1

declare dso_local i32 @ExplainNode(%struct.TYPE_17__*, i32, i32*, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @ExplainPrintSettings(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
