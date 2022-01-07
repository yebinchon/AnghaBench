; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_valuesscan_plan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_valuesscan_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32* }

@RTE_VALUES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, %struct.TYPE_15__*, i32*, i32*)* @create_valuesscan_plan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @create_valuesscan_plan(i32* %0, %struct.TYPE_15__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load i64, i64* %10, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.TYPE_14__* @planner_rt_fetch(i64 %22, i32* %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %11, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RTE_VALUES, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @order_qual_clauses(i32* %35, i32* %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @extract_actual_clauses(i32* %38, i32 0)
  store i32* %39, i32** %8, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @replace_nestloop_params(i32* %45, i32* %46)
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i64 @replace_nestloop_params(i32* %49, i32* %50)
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %12, align 8
  br label %53

53:                                               ; preds = %44, %4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call %struct.TYPE_13__* @make_valuesscan(i32* %54, i32* %55, i64 %56, i32* %57)
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %9, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = call i32 @copy_generic_path_info(i32* %61, %struct.TYPE_15__* %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  ret %struct.TYPE_13__* %64
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_14__* @planner_rt_fetch(i64, i32*) #1

declare dso_local i32* @order_qual_clauses(i32*, i32*) #1

declare dso_local i32* @extract_actual_clauses(i32*, i32) #1

declare dso_local i64 @replace_nestloop_params(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @make_valuesscan(i32*, i32*, i64, i32*) #1

declare dso_local i32 @copy_generic_path_info(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
