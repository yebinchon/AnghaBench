; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_drain_oldest_buffered_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_drain_oldest_buffered_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*)* @drain_oldest_buffered_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_oldest_buffered_frame(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  %3 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %2, align 8
  %4 = load %struct.priv*, %struct.priv** %2, align 8
  %5 = getelementptr inbounds %struct.priv, %struct.priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %50

9:                                                ; preds = %1
  %10 = load %struct.priv*, %struct.priv** %2, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @talloc_free(i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %38, %9
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.priv*, %struct.priv** %2, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = load %struct.priv*, %struct.priv** %2, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.priv*, %struct.priv** %2, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.priv*, %struct.priv** %2, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.priv*, %struct.priv** %2, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %41, %8
  ret void
}

declare dso_local i32 @talloc_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
