; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_subselect.c_inline_cte.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_subselect.c_inline_cte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.inline_cte_walker_context = type { i32, i64, i32, i32 }

@Query = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @inline_cte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inline_cte(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.inline_cte_walker_context, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.inline_cte_walker_context, %struct.inline_cte_walker_context* %5, i32 0, i32 3
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.inline_cte_walker_context, %struct.inline_cte_walker_context* %5, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.inline_cte_walker_context, %struct.inline_cte_walker_context* %5, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = load i32, i32* @Query, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @castNode(i32 %15, i32 %18)
  %20 = getelementptr inbounds %struct.inline_cte_walker_context, %struct.inline_cte_walker_context* %5, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @inline_cte_walker(i32* %24, %struct.inline_cte_walker_context* %5)
  %26 = getelementptr inbounds %struct.inline_cte_walker_context, %struct.inline_cte_walker_context* %5, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  ret void
}

declare dso_local i32 @castNode(i32, i32) #1

declare dso_local i32 @inline_cte_walker(i32*, %struct.inline_cte_walker_context*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
