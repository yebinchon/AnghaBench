; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_playlist_clear.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_playlist_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { %struct.MPContext* }
%struct.MPContext = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.playlist_entry*, %struct.playlist_entry*, i64 }
%struct.playlist_entry = type { %struct.playlist_entry* }

@MP_EVENT_CHANGE_PLAYLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_playlist_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_playlist_clear(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca %struct.playlist_entry*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %7, %struct.mp_cmd_ctx** %3, align 8
  %8 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %8, i32 0, i32 0
  %10 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  store %struct.MPContext* %10, %struct.MPContext** %4, align 8
  %11 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.playlist_entry* null, %struct.playlist_entry** %21, align 8
  br label %22

22:                                               ; preds = %17, %1
  br label %23

23:                                               ; preds = %51, %22
  %24 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %25 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.playlist_entry*, %struct.playlist_entry** %27, align 8
  %29 = icmp ne %struct.playlist_entry* %28, null
  br i1 %29, label %30, label %57

30:                                               ; preds = %23
  %31 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %32 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.playlist_entry*, %struct.playlist_entry** %34, align 8
  store %struct.playlist_entry* %35, %struct.playlist_entry** %5, align 8
  %36 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %37 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %38 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.playlist_entry*, %struct.playlist_entry** %40, align 8
  %42 = icmp eq %struct.playlist_entry* %36, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %45 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %44, i32 0, i32 0
  %46 = load %struct.playlist_entry*, %struct.playlist_entry** %45, align 8
  store %struct.playlist_entry* %46, %struct.playlist_entry** %5, align 8
  %47 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %48 = icmp ne %struct.playlist_entry* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %57

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %56 = call i32 @playlist_remove(%struct.TYPE_2__* %54, %struct.playlist_entry* %55)
  br label %23

57:                                               ; preds = %49, %23
  %58 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %59 = load i32, i32* @MP_EVENT_CHANGE_PLAYLIST, align 4
  %60 = call i32 @mp_notify(%struct.MPContext* %58, i32 %59, i32* null)
  %61 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %62 = call i32 @mp_wakeup_core(%struct.MPContext* %61)
  ret void
}

declare dso_local i32 @playlist_remove(%struct.TYPE_2__*, %struct.playlist_entry*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
