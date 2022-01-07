; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_move.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { i32, %struct.playlist_entry*, i32 }
%struct.playlist_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_move(%struct.playlist* %0, %struct.playlist_entry* %1, %struct.playlist_entry* %2) #0 {
  %4 = alloca %struct.playlist*, align 8
  %5 = alloca %struct.playlist_entry*, align 8
  %6 = alloca %struct.playlist_entry*, align 8
  %7 = alloca %struct.playlist_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.playlist* %0, %struct.playlist** %4, align 8
  store %struct.playlist_entry* %1, %struct.playlist_entry** %5, align 8
  store %struct.playlist_entry* %2, %struct.playlist_entry** %6, align 8
  %9 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %10 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %11 = icmp eq %struct.playlist_entry* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %44

13:                                               ; preds = %3
  %14 = load %struct.playlist*, %struct.playlist** %4, align 8
  %15 = getelementptr inbounds %struct.playlist, %struct.playlist* %14, i32 0, i32 1
  %16 = load %struct.playlist_entry*, %struct.playlist_entry** %15, align 8
  store %struct.playlist_entry* %16, %struct.playlist_entry** %7, align 8
  %17 = load %struct.playlist*, %struct.playlist** %4, align 8
  %18 = getelementptr inbounds %struct.playlist, %struct.playlist* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.playlist*, %struct.playlist** %4, align 8
  %21 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %22 = call i32 @playlist_unlink(%struct.playlist* %20, %struct.playlist_entry* %21)
  %23 = load %struct.playlist*, %struct.playlist** %4, align 8
  %24 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %25 = icmp ne %struct.playlist_entry* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %28 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %34

30:                                               ; preds = %13
  %31 = load %struct.playlist*, %struct.playlist** %4, align 8
  %32 = getelementptr inbounds %struct.playlist, %struct.playlist* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %29, %26 ], [ %33, %30 ]
  %36 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %37 = call i32 @playlist_insert(%struct.playlist* %23, i32 %35, %struct.playlist_entry* %36)
  %38 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %39 = load %struct.playlist*, %struct.playlist** %4, align 8
  %40 = getelementptr inbounds %struct.playlist, %struct.playlist* %39, i32 0, i32 1
  store %struct.playlist_entry* %38, %struct.playlist_entry** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.playlist*, %struct.playlist** %4, align 8
  %43 = getelementptr inbounds %struct.playlist, %struct.playlist* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %34, %12
  ret void
}

declare dso_local i32 @playlist_unlink(%struct.playlist*, %struct.playlist_entry*) #1

declare dso_local i32 @playlist_insert(%struct.playlist*, i32, %struct.playlist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
