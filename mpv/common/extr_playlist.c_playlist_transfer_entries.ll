; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_transfer_entries.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_transfer_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { %struct.playlist_entry*, %struct.playlist_entry*, %struct.playlist_entry*, i64 }
%struct.playlist_entry = type { %struct.playlist_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_transfer_entries(%struct.playlist* %0, %struct.playlist* %1) #0 {
  %3 = alloca %struct.playlist*, align 8
  %4 = alloca %struct.playlist*, align 8
  %5 = alloca %struct.playlist_entry*, align 8
  %6 = alloca %struct.playlist_entry*, align 8
  store %struct.playlist* %0, %struct.playlist** %3, align 8
  store %struct.playlist* %1, %struct.playlist** %4, align 8
  %7 = load %struct.playlist*, %struct.playlist** %3, align 8
  %8 = getelementptr inbounds %struct.playlist, %struct.playlist* %7, i32 0, i32 2
  %9 = load %struct.playlist_entry*, %struct.playlist_entry** %8, align 8
  store %struct.playlist_entry* %9, %struct.playlist_entry** %5, align 8
  %10 = load %struct.playlist*, %struct.playlist** %3, align 8
  %11 = getelementptr inbounds %struct.playlist, %struct.playlist* %10, i32 0, i32 2
  %12 = load %struct.playlist_entry*, %struct.playlist_entry** %11, align 8
  %13 = icmp ne %struct.playlist_entry* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.playlist*, %struct.playlist** %3, align 8
  %16 = getelementptr inbounds %struct.playlist, %struct.playlist* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.playlist*, %struct.playlist** %3, align 8
  %21 = getelementptr inbounds %struct.playlist, %struct.playlist* %20, i32 0, i32 2
  %22 = load %struct.playlist_entry*, %struct.playlist_entry** %21, align 8
  %23 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 0
  %24 = load %struct.playlist_entry*, %struct.playlist_entry** %23, align 8
  store %struct.playlist_entry* %24, %struct.playlist_entry** %5, align 8
  br label %25

25:                                               ; preds = %19, %14, %2
  %26 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %27 = icmp ne %struct.playlist_entry* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load %struct.playlist*, %struct.playlist** %3, align 8
  %30 = getelementptr inbounds %struct.playlist, %struct.playlist* %29, i32 0, i32 1
  %31 = load %struct.playlist_entry*, %struct.playlist_entry** %30, align 8
  store %struct.playlist_entry* %31, %struct.playlist_entry** %5, align 8
  br label %32

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %38, %32
  %34 = load %struct.playlist*, %struct.playlist** %4, align 8
  %35 = getelementptr inbounds %struct.playlist, %struct.playlist* %34, i32 0, i32 0
  %36 = load %struct.playlist_entry*, %struct.playlist_entry** %35, align 8
  %37 = icmp ne %struct.playlist_entry* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.playlist*, %struct.playlist** %4, align 8
  %40 = getelementptr inbounds %struct.playlist, %struct.playlist* %39, i32 0, i32 0
  %41 = load %struct.playlist_entry*, %struct.playlist_entry** %40, align 8
  store %struct.playlist_entry* %41, %struct.playlist_entry** %6, align 8
  %42 = load %struct.playlist*, %struct.playlist** %4, align 8
  %43 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %44 = call i32 @playlist_unlink(%struct.playlist* %42, %struct.playlist_entry* %43)
  %45 = load %struct.playlist*, %struct.playlist** %3, align 8
  %46 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %47 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %48 = call i32 @playlist_insert(%struct.playlist* %45, %struct.playlist_entry* %46, %struct.playlist_entry* %47)
  %49 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  store %struct.playlist_entry* %49, %struct.playlist_entry** %5, align 8
  br label %33

50:                                               ; preds = %33
  ret void
}

declare dso_local i32 @playlist_unlink(%struct.playlist*, %struct.playlist_entry*) #1

declare dso_local i32 @playlist_insert(%struct.playlist*, %struct.playlist_entry*, %struct.playlist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
