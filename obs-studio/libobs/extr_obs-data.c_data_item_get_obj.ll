; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_data_item_get_obj.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_data_item_get_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@OBS_DATA_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*, %struct.TYPE_5__* (i32*)*)* @data_item_get_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @data_item_get_obj(i32* %0, %struct.TYPE_5__* (i32*)* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__* (i32*)*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* (i32*)* %1, %struct.TYPE_5__* (i32*)** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @OBS_DATA_OBJECT, align 4
  %8 = call i64 @item_valid(i32* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__* (i32*)*, %struct.TYPE_5__* (i32*)** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_5__* %11(i32* %12)
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi %struct.TYPE_5__* [ %13, %10 ], [ null, %14 ]
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @os_atomic_inc_long(i32* %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %24
}

declare dso_local i64 @item_valid(i32*, i32) #1

declare dso_local i32 @os_atomic_inc_long(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
