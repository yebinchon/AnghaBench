; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_df_extent_insert.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_df_extent_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_info = type { %struct.extent_info*, %struct.rrdengine_datafile* }
%struct.rrdengine_datafile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.extent_info*, %struct.extent_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_extent_insert(%struct.extent_info* %0) #0 {
  %2 = alloca %struct.extent_info*, align 8
  %3 = alloca %struct.rrdengine_datafile*, align 8
  store %struct.extent_info* %0, %struct.extent_info** %2, align 8
  %4 = load %struct.extent_info*, %struct.extent_info** %2, align 8
  %5 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %4, i32 0, i32 1
  %6 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %5, align 8
  store %struct.rrdengine_datafile* %6, %struct.rrdengine_datafile** %3, align 8
  %7 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %8 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.extent_info*, %struct.extent_info** %9, align 8
  %11 = icmp ne %struct.extent_info* null, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.extent_info*, %struct.extent_info** %2, align 8
  %17 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %18 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.extent_info*, %struct.extent_info** %19, align 8
  %21 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %20, i32 0, i32 0
  store %struct.extent_info* %16, %struct.extent_info** %21, align 8
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %24 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.extent_info*, %struct.extent_info** %25, align 8
  %27 = icmp eq %struct.extent_info* null, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.extent_info*, %struct.extent_info** %2, align 8
  %33 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %34 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store %struct.extent_info* %32, %struct.extent_info** %35, align 8
  br label %36

36:                                               ; preds = %31, %22
  %37 = load %struct.extent_info*, %struct.extent_info** %2, align 8
  %38 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %39 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.extent_info* %37, %struct.extent_info** %40, align 8
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
