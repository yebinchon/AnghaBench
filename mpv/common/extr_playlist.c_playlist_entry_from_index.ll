; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_entry_from_index.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_entry_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { %struct.playlist_entry* }
%struct.playlist = type { %struct.playlist_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.playlist_entry* @playlist_entry_from_index(%struct.playlist* %0, i32 %1) #0 {
  %3 = alloca %struct.playlist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.playlist_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.playlist* %0, %struct.playlist** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.playlist*, %struct.playlist** %3, align 8
  %8 = getelementptr inbounds %struct.playlist, %struct.playlist* %7, i32 0, i32 0
  %9 = load %struct.playlist_entry*, %struct.playlist_entry** %8, align 8
  store %struct.playlist_entry* %9, %struct.playlist_entry** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %12 = icmp ne %struct.playlist_entry* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %10
  %18 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  ret %struct.playlist_entry* %18

19:                                               ; preds = %13
  %20 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %21 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %20, i32 0, i32 0
  %22 = load %struct.playlist_entry*, %struct.playlist_entry** %21, align 8
  store %struct.playlist_entry* %22, %struct.playlist_entry** %5, align 8
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
