; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_lavfi_alloc.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_lavfi_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lavfi = type { i32, %struct.TYPE_2__, i32, %struct.mp_filter* }
%struct.TYPE_2__ = type { %struct.mp_filter* }
%struct.mp_filter = type { i32, %struct.lavfi* }

@lavfi_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lavfi* (%struct.mp_filter*)* @lavfi_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lavfi* @lavfi_alloc(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.lavfi*, align 8
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.lavfi*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %7 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %6, i32* @lavfi_filter)
  store %struct.mp_filter* %7, %struct.mp_filter** %4, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %9 = icmp ne %struct.mp_filter* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.lavfi* null, %struct.lavfi** %2, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %13 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %12, i32 0, i32 1
  %14 = load %struct.lavfi*, %struct.lavfi** %13, align 8
  store %struct.lavfi* %14, %struct.lavfi** %5, align 8
  %15 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %16 = load %struct.lavfi*, %struct.lavfi** %5, align 8
  %17 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %16, i32 0, i32 3
  store %struct.mp_filter* %15, %struct.mp_filter** %17, align 8
  %18 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %19 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.lavfi*, %struct.lavfi** %5, align 8
  %22 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %24 = load %struct.lavfi*, %struct.lavfi** %5, align 8
  %25 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.mp_filter* %23, %struct.mp_filter** %26, align 8
  %27 = call i32 (...) @av_frame_alloc()
  %28 = load %struct.lavfi*, %struct.lavfi** %5, align 8
  %29 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.lavfi*, %struct.lavfi** %5, align 8
  %31 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %11
  %35 = call i32 (...) @abort() #3
  unreachable

36:                                               ; preds = %11
  %37 = load %struct.lavfi*, %struct.lavfi** %5, align 8
  store %struct.lavfi* %37, %struct.lavfi** %2, align 8
  br label %38

38:                                               ; preds = %36, %10
  %39 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  ret %struct.lavfi* %39
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @av_frame_alloc(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
