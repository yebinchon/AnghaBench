; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_append_entries.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_append_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { %struct.playlist_entry* }
%struct.playlist_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_append_entries(%struct.playlist* %0, %struct.playlist* %1) #0 {
  %3 = alloca %struct.playlist*, align 8
  %4 = alloca %struct.playlist*, align 8
  %5 = alloca %struct.playlist_entry*, align 8
  store %struct.playlist* %0, %struct.playlist** %3, align 8
  store %struct.playlist* %1, %struct.playlist** %4, align 8
  br label %6

6:                                                ; preds = %11, %2
  %7 = load %struct.playlist*, %struct.playlist** %4, align 8
  %8 = getelementptr inbounds %struct.playlist, %struct.playlist* %7, i32 0, i32 0
  %9 = load %struct.playlist_entry*, %struct.playlist_entry** %8, align 8
  %10 = icmp ne %struct.playlist_entry* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load %struct.playlist*, %struct.playlist** %4, align 8
  %13 = getelementptr inbounds %struct.playlist, %struct.playlist* %12, i32 0, i32 0
  %14 = load %struct.playlist_entry*, %struct.playlist_entry** %13, align 8
  store %struct.playlist_entry* %14, %struct.playlist_entry** %5, align 8
  %15 = load %struct.playlist*, %struct.playlist** %4, align 8
  %16 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %17 = call i32 @playlist_unlink(%struct.playlist* %15, %struct.playlist_entry* %16)
  %18 = load %struct.playlist*, %struct.playlist** %3, align 8
  %19 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %20 = call i32 @playlist_add(%struct.playlist* %18, %struct.playlist_entry* %19)
  br label %6

21:                                               ; preds = %6
  ret void
}

declare dso_local i32 @playlist_unlink(%struct.playlist*, %struct.playlist_entry*) #1

declare dso_local i32 @playlist_add(%struct.playlist*, %struct.playlist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
