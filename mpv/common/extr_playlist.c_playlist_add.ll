; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_add.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { i32 }
%struct.playlist_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_add(%struct.playlist* %0, %struct.playlist_entry* %1) #0 {
  %3 = alloca %struct.playlist*, align 8
  %4 = alloca %struct.playlist_entry*, align 8
  store %struct.playlist* %0, %struct.playlist** %3, align 8
  store %struct.playlist_entry* %1, %struct.playlist_entry** %4, align 8
  %5 = load %struct.playlist*, %struct.playlist** %3, align 8
  %6 = load %struct.playlist*, %struct.playlist** %3, align 8
  %7 = getelementptr inbounds %struct.playlist, %struct.playlist* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %10 = call i32 @playlist_insert(%struct.playlist* %5, i32 %8, %struct.playlist_entry* %9)
  ret void
}

declare dso_local i32 @playlist_insert(%struct.playlist*, i32, %struct.playlist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
