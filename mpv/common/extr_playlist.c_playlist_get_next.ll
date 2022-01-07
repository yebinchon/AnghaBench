; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_get_next.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { %struct.playlist_entry*, %struct.playlist_entry*, %struct.playlist* }
%struct.playlist = type { %struct.playlist_entry*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.playlist_entry* @playlist_get_next(%struct.playlist* %0, i32 %1) #0 {
  %3 = alloca %struct.playlist_entry*, align 8
  %4 = alloca %struct.playlist*, align 8
  %5 = alloca i32, align 4
  store %struct.playlist* %0, %struct.playlist** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 1
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ true, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.playlist*, %struct.playlist** %4, align 8
  %16 = getelementptr inbounds %struct.playlist, %struct.playlist* %15, i32 0, i32 0
  %17 = load %struct.playlist_entry*, %struct.playlist_entry** %16, align 8
  %18 = icmp ne %struct.playlist_entry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  store %struct.playlist_entry* null, %struct.playlist_entry** %3, align 8
  br label %55

20:                                               ; preds = %11
  %21 = load %struct.playlist*, %struct.playlist** %4, align 8
  %22 = getelementptr inbounds %struct.playlist, %struct.playlist* %21, i32 0, i32 0
  %23 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %24 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %23, i32 0, i32 2
  %25 = load %struct.playlist*, %struct.playlist** %24, align 8
  %26 = load %struct.playlist*, %struct.playlist** %4, align 8
  %27 = icmp eq %struct.playlist* %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %struct.playlist*, %struct.playlist** %4, align 8
  %34 = getelementptr inbounds %struct.playlist, %struct.playlist* %33, i32 0, i32 0
  %35 = load %struct.playlist_entry*, %struct.playlist_entry** %34, align 8
  %36 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %35, i32 0, i32 1
  %37 = load %struct.playlist_entry*, %struct.playlist_entry** %36, align 8
  store %struct.playlist_entry* %37, %struct.playlist_entry** %3, align 8
  br label %55

38:                                               ; preds = %20
  %39 = load %struct.playlist*, %struct.playlist** %4, align 8
  %40 = getelementptr inbounds %struct.playlist, %struct.playlist* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.playlist*, %struct.playlist** %4, align 8
  %45 = getelementptr inbounds %struct.playlist, %struct.playlist* %44, i32 0, i32 0
  %46 = load %struct.playlist_entry*, %struct.playlist_entry** %45, align 8
  br label %53

47:                                               ; preds = %38
  %48 = load %struct.playlist*, %struct.playlist** %4, align 8
  %49 = getelementptr inbounds %struct.playlist, %struct.playlist* %48, i32 0, i32 0
  %50 = load %struct.playlist_entry*, %struct.playlist_entry** %49, align 8
  %51 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %50, i32 0, i32 0
  %52 = load %struct.playlist_entry*, %struct.playlist_entry** %51, align 8
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi %struct.playlist_entry* [ %46, %43 ], [ %52, %47 ]
  store %struct.playlist_entry* %54, %struct.playlist_entry** %3, align 8
  br label %55

55:                                               ; preds = %53, %32, %19
  %56 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  ret %struct.playlist_entry* %56
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
