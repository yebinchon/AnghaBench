; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_create_plain_partial_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_create_plain_partial_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@max_parallel_workers_per_gather = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @create_plain_partial_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_plain_partial_paths(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @max_parallel_workers_per_gather, align 4
  %11 = call i32 @compute_parallel_worker(%struct.TYPE_6__* %6, i32 %9, i32 -1, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @create_seqscan_path(i32* %17, %struct.TYPE_6__* %18, i32* null, i32 %19)
  %21 = call i32 @add_partial_path(%struct.TYPE_6__* %16, i32 %20)
  br label %22

22:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @compute_parallel_worker(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @add_partial_path(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @create_seqscan_path(i32*, %struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
