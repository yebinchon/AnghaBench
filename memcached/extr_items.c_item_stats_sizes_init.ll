; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_item_stats_sizes_init.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_item_stats_sizes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@stats_sizes_hist = common dso_local global i32* null, align 8
@settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stats_sizes_buckets = common dso_local global i32 0, align 4
@stats_sizes_cas_min = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @item_stats_sizes_init() #0 {
  %1 = load i32*, i32** @stats_sizes_hist, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %17

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 0), align 8
  %6 = sdiv i32 %5, 32
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @stats_sizes_buckets, align 4
  %8 = load i32, i32* @stats_sizes_buckets, align 4
  %9 = call i32* @calloc(i32 %8, i32 4)
  store i32* %9, i32** @stats_sizes_hist, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 1), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = call i32 (...) @get_cas_id()
  br label %15

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  store i32 %16, i32* @stats_sizes_cas_min, align 4
  br label %17

17:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @get_cas_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
