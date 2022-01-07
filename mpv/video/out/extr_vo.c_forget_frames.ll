; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_forget_frames.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_forget_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, i32, %struct.TYPE_2__*, i32, i32*, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@VO_MAX_REQ_FRAMES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @forget_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forget_frames(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 0
  %6 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  store %struct.vo_internal* %6, %struct.vo_internal** %3, align 8
  %7 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %8 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %10 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %12 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %14 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %16 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @talloc_free(i32* %17)
  %19 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %20 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load i64, i64* @VO_MAX_REQ_FRAMES, align 8
  %22 = add nsw i64 %21, 1
  %23 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %24 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 8
  %29 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %30 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %1
  %34 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %35 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %39 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @talloc_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
