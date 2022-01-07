; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_audio_setup.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_audio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_source = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*, i32*)* @vlcs_audio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlcs_audio_setup(i8** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vlc_source*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.vlc_source*
  store %struct.vlc_source* %14, %struct.vlc_source** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @convert_vlc_audio_format(i8* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ugt i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  store i32 2, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %4
  %23 = load %struct.vlc_source*, %struct.vlc_source** %10, align 8
  %24 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = load %struct.vlc_source*, %struct.vlc_source** %10, align 8
  %31 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.vlc_source*, %struct.vlc_source** %10, align 8
  %39 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %74

46:                                               ; preds = %37, %29, %22
  %47 = load %struct.vlc_source*, %struct.vlc_source** %10, align 8
  %48 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.vlc_source*, %struct.vlc_source** %10, align 8
  %50 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @bfree(i8* %55)
  %57 = load %struct.vlc_source*, %struct.vlc_source** %10, align 8
  %58 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %57, i32 0, i32 0
  %59 = call i32 @memset(%struct.TYPE_2__* %58, i32 0, i32 24)
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vlc_source*, %struct.vlc_source** %10, align 8
  %63 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vlc_source*, %struct.vlc_source** %10, align 8
  %68 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.vlc_source*, %struct.vlc_source** %10, align 8
  %72 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %46, %45
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @convert_vlc_audio_format(i8*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
