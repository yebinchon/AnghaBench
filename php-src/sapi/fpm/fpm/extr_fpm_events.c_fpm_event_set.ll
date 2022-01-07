; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_set.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_s = type { i32, void (%struct.fpm_event_s*, i16, i8*)*, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_event_set(%struct.fpm_event_s* %0, i32 %1, i32 %2, void (%struct.fpm_event_s*, i16, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fpm_event_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.fpm_event_s*, i16, i8*)*, align 8
  %11 = alloca i8*, align 8
  store %struct.fpm_event_s* %0, %struct.fpm_event_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store void (%struct.fpm_event_s*, i16, i8*)* %3, void (%struct.fpm_event_s*, i16, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load %struct.fpm_event_s*, %struct.fpm_event_s** %7, align 8
  %13 = icmp ne %struct.fpm_event_s* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load void (%struct.fpm_event_s*, i16, i8*)*, void (%struct.fpm_event_s*, i16, i8*)** %10, align 8
  %16 = icmp ne void (%struct.fpm_event_s*, i16, i8*)* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %5
  store i32 -1, i32* %6, align 4
  br label %36

21:                                               ; preds = %17
  %22 = load %struct.fpm_event_s*, %struct.fpm_event_s** %7, align 8
  %23 = call i32 @memset(%struct.fpm_event_s* %22, i32 0, i32 32)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.fpm_event_s*, %struct.fpm_event_s** %7, align 8
  %26 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load void (%struct.fpm_event_s*, i16, i8*)*, void (%struct.fpm_event_s*, i16, i8*)** %10, align 8
  %28 = load %struct.fpm_event_s*, %struct.fpm_event_s** %7, align 8
  %29 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %28, i32 0, i32 1
  store void (%struct.fpm_event_s*, i16, i8*)* %27, void (%struct.fpm_event_s*, i16, i8*)** %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.fpm_event_s*, %struct.fpm_event_s** %7, align 8
  %32 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.fpm_event_s*, %struct.fpm_event_s** %7, align 8
  %35 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %21, %20
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @memset(%struct.fpm_event_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
