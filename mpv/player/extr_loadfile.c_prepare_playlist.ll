; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_prepare_playlist.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_prepare_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.MPOpts* }
%struct.MPOpts = type { i64, i64, i64 }
%struct.playlist = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_playlist(%struct.MPContext* %0, %struct.playlist* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.playlist*, align 8
  %5 = alloca %struct.MPOpts*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.playlist* %1, %struct.playlist** %4, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 0
  %8 = load %struct.MPOpts*, %struct.MPOpts** %7, align 8
  store %struct.MPOpts* %8, %struct.MPOpts** %5, align 8
  %9 = load %struct.playlist*, %struct.playlist** %4, align 8
  %10 = getelementptr inbounds %struct.playlist, %struct.playlist* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %12 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.playlist*, %struct.playlist** %4, align 8
  %17 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %18 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32* @playlist_entry_from_index(%struct.playlist* %16, i64 %19)
  %21 = load %struct.playlist*, %struct.playlist** %4, align 8
  %22 = getelementptr inbounds %struct.playlist, %struct.playlist* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %25 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.playlist*, %struct.playlist** %4, align 8
  %30 = call i32 @playlist_shuffle(%struct.playlist* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %33 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.playlist*, %struct.playlist** %4, align 8
  %38 = call i32 @merge_playlist_files(%struct.playlist* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.playlist*, %struct.playlist** %4, align 8
  %41 = getelementptr inbounds %struct.playlist, %struct.playlist* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %46 = load %struct.playlist*, %struct.playlist** %4, align 8
  %47 = call i32* @mp_check_playlist_resume(%struct.MPContext* %45, %struct.playlist* %46)
  %48 = load %struct.playlist*, %struct.playlist** %4, align 8
  %49 = getelementptr inbounds %struct.playlist, %struct.playlist* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.playlist*, %struct.playlist** %4, align 8
  %52 = getelementptr inbounds %struct.playlist, %struct.playlist* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.playlist*, %struct.playlist** %4, align 8
  %57 = getelementptr inbounds %struct.playlist, %struct.playlist* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.playlist*, %struct.playlist** %4, align 8
  %60 = getelementptr inbounds %struct.playlist, %struct.playlist* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32* @playlist_entry_from_index(%struct.playlist*, i64) #1

declare dso_local i32 @playlist_shuffle(%struct.playlist*) #1

declare dso_local i32 @merge_playlist_files(%struct.playlist*) #1

declare dso_local i32* @mp_check_playlist_resume(%struct.MPContext*, %struct.playlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
