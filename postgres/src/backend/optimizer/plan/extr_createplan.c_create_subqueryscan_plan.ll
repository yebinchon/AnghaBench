; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_subqueryscan_plan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_createplan.c_create_subqueryscan_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }

@RTE_SUBQUERY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, %struct.TYPE_10__*, i32*, i32*)* @create_subqueryscan_plan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @create_subqueryscan_plan(i32* %0, %struct.TYPE_10__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %10, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp sgt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RTE_SUBQUERY, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32* @create_plan(i32 %33, i32 %36)
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @order_qual_clauses(i32* %38, i32* %39)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32* @extract_actual_clauses(i32* %41, i32 0)
  store i32* %42, i32** %8, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i64 @replace_nestloop_params(i32* %49, i32* %50)
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @process_subquery_nestloop_params(i32* %53, i32 %56)
  br label %58

58:                                               ; preds = %48, %4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call %struct.TYPE_11__* @make_subqueryscan(i32* %59, i32* %60, i64 %61, i32* %62)
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %9, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i32 @copy_generic_path_info(i32* %66, %struct.TYPE_13__* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  ret %struct.TYPE_11__* %70
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @create_plan(i32, i32) #1

declare dso_local i32* @order_qual_clauses(i32*, i32*) #1

declare dso_local i32* @extract_actual_clauses(i32*, i32) #1

declare dso_local i64 @replace_nestloop_params(i32*, i32*) #1

declare dso_local i32 @process_subquery_nestloop_params(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @make_subqueryscan(i32*, i32*, i64, i32*) #1

declare dso_local i32 @copy_generic_path_info(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
