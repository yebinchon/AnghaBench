; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_namedtuplestorescan_plan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_namedtuplestorescan_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32 }

@RTE_NAMEDTUPLESTORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i32*, %struct.TYPE_14__*, i32*, i32*)* @create_namedtuplestorescan_plan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @create_namedtuplestorescan_plan(i32* %0, %struct.TYPE_14__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp sgt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i64, i64* %10, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.TYPE_13__* @planner_rt_fetch(i64 %21, i32* %22)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %11, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RTE_NAMEDTUPLESTORE, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32* @order_qual_clauses(i32* %31, i32* %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @extract_actual_clauses(i32* %34, i32 0)
  store i32* %35, i32** %8, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @replace_nestloop_params(i32* %41, i32* %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %8, align 8
  br label %45

45:                                               ; preds = %40, %4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_15__* @make_namedtuplestorescan(i32* %46, i32* %47, i64 %48, i32 %51)
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %9, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = call i32 @copy_generic_path_info(i32* %55, %struct.TYPE_14__* %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  ret %struct.TYPE_15__* %58
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_13__* @planner_rt_fetch(i64, i32*) #1

declare dso_local i32* @order_qual_clauses(i32*, i32*) #1

declare dso_local i32* @extract_actual_clauses(i32*, i32) #1

declare dso_local i64 @replace_nestloop_params(i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @make_namedtuplestorescan(i32*, i32*, i64, i32) #1

declare dso_local i32 @copy_generic_path_info(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
