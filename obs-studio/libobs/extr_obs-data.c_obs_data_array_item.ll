; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_array_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_array_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @obs_data_array_item(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %36

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %21, i64 %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  br label %26

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25, %17
  %27 = phi %struct.TYPE_7__* [ %24, %17 ], [ null, %25 ]
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i32 @os_atomic_inc_long(i32* %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %3, align 8
  br label %36

36:                                               ; preds = %34, %9
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %37
}

declare dso_local i32 @os_atomic_inc_long(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
