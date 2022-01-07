; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_check_playlist_resume.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_configfiles.c_mp_check_playlist_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i32, %struct.playlist_entry* }
%struct.MPContext = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.playlist = type { %struct.playlist_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.playlist_entry* @mp_check_playlist_resume(%struct.MPContext* %0, %struct.playlist* %1) #0 {
  %3 = alloca %struct.playlist_entry*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca %struct.playlist*, align 8
  %6 = alloca %struct.playlist_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store %struct.playlist* %1, %struct.playlist** %5, align 8
  %9 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %10 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.playlist_entry* null, %struct.playlist_entry** %3, align 8
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.playlist*, %struct.playlist** %5, align 8
  %18 = getelementptr inbounds %struct.playlist, %struct.playlist* %17, i32 0, i32 0
  %19 = load %struct.playlist_entry*, %struct.playlist_entry** %18, align 8
  store %struct.playlist_entry* %19, %struct.playlist_entry** %6, align 8
  br label %20

20:                                               ; preds = %45, %16
  %21 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %22 = icmp ne %struct.playlist_entry* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %25 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %26 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @mp_get_playback_resume_config_filename(%struct.MPContext* %24, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @mp_path_exists(i8* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi i1 [ false, %23 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @talloc_free(i8* %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  store %struct.playlist_entry* %43, %struct.playlist_entry** %3, align 8
  br label %50

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %47 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %46, i32 0, i32 1
  %48 = load %struct.playlist_entry*, %struct.playlist_entry** %47, align 8
  store %struct.playlist_entry* %48, %struct.playlist_entry** %6, align 8
  br label %20

49:                                               ; preds = %20
  store %struct.playlist_entry* null, %struct.playlist_entry** %3, align 8
  br label %50

50:                                               ; preds = %49, %42, %15
  %51 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  ret %struct.playlist_entry* %51
}

declare dso_local i8* @mp_get_playback_resume_config_filename(%struct.MPContext*, i32) #1

declare dso_local i64 @mp_path_exists(i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
