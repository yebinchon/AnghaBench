; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_filter_wakeup.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_filter_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.filter_runner* }
%struct.filter_runner = type { i32, i32, i32, i32 (i32)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*, i32)* @filter_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_wakeup(%struct.mp_filter* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.filter_runner*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %7 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.filter_runner*, %struct.filter_runner** %9, align 8
  store %struct.filter_runner* %10, %struct.filter_runner** %5, align 8
  %11 = load %struct.filter_runner*, %struct.filter_runner** %5, align 8
  %12 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %11, i32 0, i32 1
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %15 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %2
  %21 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %22 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.filter_runner*, %struct.filter_runner** %5, align 8
  %26 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.filter_runner*, %struct.filter_runner** %5, align 8
  %29 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %32 = call i32 @MP_TARRAY_APPEND(i32* null, i32 %27, i32 %30, %struct.mp_filter* %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %20
  %36 = load %struct.filter_runner*, %struct.filter_runner** %5, align 8
  %37 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %35
  %41 = load %struct.filter_runner*, %struct.filter_runner** %5, align 8
  %42 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %41, i32 0, i32 3
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = icmp ne i32 (i32)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.filter_runner*, %struct.filter_runner** %5, align 8
  %47 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %46, i32 0, i32 3
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load %struct.filter_runner*, %struct.filter_runner** %5, align 8
  %50 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %48(i32 %51)
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.filter_runner*, %struct.filter_runner** %5, align 8
  %55 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %35, %20
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.filter_runner*, %struct.filter_runner** %5, align 8
  %59 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %58, i32 0, i32 1
  %60 = call i32 @pthread_mutex_unlock(i32* %59)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, i32, i32, %struct.mp_filter*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
