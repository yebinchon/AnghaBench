; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_dist.c_nn_dist_out.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_dist.c_nn_dist_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_dist = type { i32, i32 }
%struct.nn_dist_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_dist_out(%struct.nn_dist* %0, %struct.nn_dist_data* %1) #0 {
  %3 = alloca %struct.nn_dist*, align 8
  %4 = alloca %struct.nn_dist_data*, align 8
  store %struct.nn_dist* %0, %struct.nn_dist** %3, align 8
  store %struct.nn_dist_data* %1, %struct.nn_dist_data** %4, align 8
  %5 = load %struct.nn_dist*, %struct.nn_dist** %3, align 8
  %6 = getelementptr inbounds %struct.nn_dist, %struct.nn_dist* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.nn_dist*, %struct.nn_dist** %3, align 8
  %10 = getelementptr inbounds %struct.nn_dist, %struct.nn_dist* %9, i32 0, i32 0
  %11 = load %struct.nn_dist_data*, %struct.nn_dist_data** %4, align 8
  %12 = getelementptr inbounds %struct.nn_dist_data, %struct.nn_dist_data* %11, i32 0, i32 0
  %13 = load %struct.nn_dist*, %struct.nn_dist** %3, align 8
  %14 = getelementptr inbounds %struct.nn_dist, %struct.nn_dist* %13, i32 0, i32 0
  %15 = call i32 @nn_list_end(i32* %14)
  %16 = call i32 @nn_list_insert(i32* %10, i32* %12, i32 %15)
  ret void
}

declare dso_local i32 @nn_list_insert(i32*, i32*, i32) #1

declare dso_local i32 @nn_list_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
