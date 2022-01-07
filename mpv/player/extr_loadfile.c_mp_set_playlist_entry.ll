; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_set_playlist_entry.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_set_playlist_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.playlist_entry* }
%struct.playlist_entry = type { i32 }

@PT_CURRENT_ENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_set_playlist_entry(%struct.MPContext* %0, %struct.playlist_entry* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.playlist_entry*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.playlist_entry* %1, %struct.playlist_entry** %4, align 8
  %5 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %6 = icmp ne %struct.playlist_entry* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %12 = call i64 @playlist_entry_to_index(%struct.TYPE_2__* %10, %struct.playlist_entry* %11)
  %13 = icmp sge i64 %12, 0
  br label %14

14:                                               ; preds = %7, %2
  %15 = phi i1 [ true, %2 ], [ %13, %7 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %19 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.playlist_entry* %18, %struct.playlist_entry** %22, align 8
  %23 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %24 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %14
  %32 = load i64, i64* @PT_CURRENT_ENTRY, align 8
  %33 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %34 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %14
  %36 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %37 = call i32 @mp_wakeup_core(%struct.MPContext* %36)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @playlist_entry_to_index(%struct.TYPE_2__*, %struct.playlist_entry*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
