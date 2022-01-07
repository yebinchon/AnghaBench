; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_release.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_data_item_release(%struct.TYPE_4__** %0) #0 {
  %2 = alloca %struct.TYPE_4__**, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %2, align 8
  %4 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %5 = icmp ne %struct.TYPE_4__** %4, null
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i64 @os_atomic_dec_long(i32* %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i32 @obs_data_item_destroy(%struct.TYPE_4__* %19)
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %21, align 8
  br label %22

22:                                               ; preds = %17, %10
  br label %23

23:                                               ; preds = %22, %6, %1
  ret void
}

declare dso_local i64 @os_atomic_dec_long(i32*) #1

declare dso_local i32 @obs_data_item_destroy(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
