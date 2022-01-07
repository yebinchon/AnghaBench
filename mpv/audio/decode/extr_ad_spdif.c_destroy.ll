; ModuleID = '/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.spdifContext* }
%struct.spdifContext = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.spdifContext*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %5 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %6 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %5, i32 0, i32 0
  %7 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  store %struct.spdifContext* %7, %struct.spdifContext** %3, align 8
  %8 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %9 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %15 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = call i32 @av_write_trailer(%struct.TYPE_5__* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @av_freep(%struct.TYPE_6__** %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @av_freep(%struct.TYPE_6__** %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = call i32 @avformat_free_context(%struct.TYPE_5__* %36)
  %38 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %39 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %38, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %39, align 8
  br label %40

40:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @av_write_trailer(%struct.TYPE_5__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_6__**) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
