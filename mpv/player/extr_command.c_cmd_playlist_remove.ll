; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_playlist_remove.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_playlist_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_6__*, %struct.MPContext* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.MPContext = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.playlist_entry* }
%struct.playlist_entry = type { i32 }

@PT_NEXT_ENTRY = common dso_local global i64 0, align 8
@MP_EVENT_CHANGE_PLAYLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_playlist_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_playlist_remove(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca %struct.playlist_entry*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %7, %struct.mp_cmd_ctx** %3, align 8
  %8 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %8, i32 0, i32 2
  %10 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  store %struct.MPContext* %10, %struct.MPContext** %4, align 8
  %11 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.playlist_entry* @playlist_entry_from_index(%struct.TYPE_7__* %13, i64 %20)
  store %struct.playlist_entry* %21, %struct.playlist_entry** %5, align 8
  %22 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %32 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.playlist_entry*, %struct.playlist_entry** %34, align 8
  store %struct.playlist_entry* %35, %struct.playlist_entry** %5, align 8
  br label %36

36:                                               ; preds = %30, %1
  %37 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %38 = icmp ne %struct.playlist_entry* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %70

42:                                               ; preds = %36
  %43 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %44 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.playlist_entry*, %struct.playlist_entry** %46, align 8
  %48 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %49 = icmp eq %struct.playlist_entry* %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %52 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* @PT_NEXT_ENTRY, align 8
  %57 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %58 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %50, %42
  %60 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %61 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %64 = call i32 @playlist_remove(%struct.TYPE_7__* %62, %struct.playlist_entry* %63)
  %65 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %66 = load i32, i32* @MP_EVENT_CHANGE_PLAYLIST, align 4
  %67 = call i32 @mp_notify(%struct.MPContext* %65, i32 %66, i32* null)
  %68 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %69 = call i32 @mp_wakeup_core(%struct.MPContext* %68)
  br label %70

70:                                               ; preds = %59, %39
  ret void
}

declare dso_local %struct.playlist_entry* @playlist_entry_from_index(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @playlist_remove(%struct.TYPE_7__*, %struct.playlist_entry*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
