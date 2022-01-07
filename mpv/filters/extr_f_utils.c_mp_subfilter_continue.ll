; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_mp_subfilter_continue.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_mp_subfilter_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_subfilter = type { i32, %struct.mp_pin*, %struct.TYPE_2__* }
%struct.mp_pin = type { i32 }
%struct.TYPE_2__ = type { %struct.mp_pin** }

@MP_NO_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_subfilter_continue(%struct.mp_subfilter* %0) #0 {
  %2 = alloca %struct.mp_subfilter*, align 8
  %3 = alloca %struct.mp_pin*, align 8
  store %struct.mp_subfilter* %0, %struct.mp_subfilter** %2, align 8
  %4 = load %struct.mp_subfilter*, %struct.mp_subfilter** %2, align 8
  %5 = getelementptr inbounds %struct.mp_subfilter, %struct.mp_subfilter* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.mp_subfilter*, %struct.mp_subfilter** %2, align 8
  %10 = getelementptr inbounds %struct.mp_subfilter, %struct.mp_subfilter* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mp_pin**, %struct.mp_pin*** %12, align 8
  %14 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %13, i64 0
  %15 = load %struct.mp_pin*, %struct.mp_pin** %14, align 8
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.mp_subfilter*, %struct.mp_subfilter** %2, align 8
  %18 = getelementptr inbounds %struct.mp_subfilter, %struct.mp_subfilter* %17, i32 0, i32 1
  %19 = load %struct.mp_pin*, %struct.mp_pin** %18, align 8
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi %struct.mp_pin* [ %15, %8 ], [ %19, %16 ]
  store %struct.mp_pin* %21, %struct.mp_pin** %3, align 8
  %22 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %23 = call i32 @mp_pin_in_needs_data(%struct.mp_pin* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.mp_subfilter*, %struct.mp_subfilter** %2, align 8
  %27 = call i32 @mark_progress(%struct.mp_subfilter* %26)
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %30 = load %struct.mp_subfilter*, %struct.mp_subfilter** %2, align 8
  %31 = getelementptr inbounds %struct.mp_subfilter, %struct.mp_subfilter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mp_pin_in_write(%struct.mp_pin* %29, i32 %32)
  %34 = load i32, i32* @MP_NO_FRAME, align 4
  %35 = load %struct.mp_subfilter*, %struct.mp_subfilter** %2, align 8
  %36 = getelementptr inbounds %struct.mp_subfilter, %struct.mp_subfilter* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @mp_pin_in_needs_data(%struct.mp_pin*) #1

declare dso_local i32 @mark_progress(%struct.mp_subfilter*) #1

declare dso_local i32 @mp_pin_in_write(%struct.mp_pin*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
