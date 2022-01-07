; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_video_lock.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_video_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_source = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32** }

@MAX_AV_PLANES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**)* @vlcs_video_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlcs_video_lock(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.vlc_source*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.vlc_source*
  store %struct.vlc_source* %8, %struct.vlc_source** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %36, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @MAX_AV_PLANES, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load %struct.vlc_source*, %struct.vlc_source** %5, align 8
  %15 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br label %22

22:                                               ; preds = %13, %9
  %23 = phi i1 [ false, %9 ], [ %21, %13 ]
  br i1 %23, label %24, label %39

24:                                               ; preds = %22
  %25 = load %struct.vlc_source*, %struct.vlc_source** %5, align 8
  %26 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i8**, i8*** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  store i8* %32, i8** %35, align 8
  br label %36

36:                                               ; preds = %24
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %9

39:                                               ; preds = %22
  ret i8* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
