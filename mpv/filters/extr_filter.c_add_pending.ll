; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_add_pending.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_add_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.filter_runner* }
%struct.filter_runner = type { i32, %struct.mp_filter*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @add_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pending(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.filter_runner*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %4 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %5 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.filter_runner*, %struct.filter_runner** %7, align 8
  store %struct.filter_runner* %8, %struct.filter_runner** %3, align 8
  %9 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %10 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %18 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.filter_runner*, %struct.filter_runner** %3, align 8
  %22 = load %struct.filter_runner*, %struct.filter_runner** %3, align 8
  %23 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.filter_runner*, %struct.filter_runner** %3, align 8
  %26 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %29 = call i32 @MP_TARRAY_APPEND(%struct.filter_runner* %21, i32 %24, i32 %27, %struct.mp_filter* %28)
  %30 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %31 = load %struct.filter_runner*, %struct.filter_runner** %3, align 8
  %32 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %31, i32 0, i32 1
  %33 = load %struct.mp_filter*, %struct.mp_filter** %32, align 8
  %34 = icmp eq %struct.mp_filter* %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %16
  %36 = load %struct.filter_runner*, %struct.filter_runner** %3, align 8
  %37 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %15, %35, %16
  ret void
}

declare dso_local i32 @MP_TARRAY_APPEND(%struct.filter_runner*, i32, i32, %struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
