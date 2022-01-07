; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_loadlist.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_loadlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.MPContext* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.MPContext = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.playlist_entry* }
%struct.playlist_entry = type { i32 }
%struct.playlist = type { %struct.playlist_entry* }

@MP_EVENT_CHANGE_PLAYLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to load playlist %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_loadlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_loadlist(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.playlist*, align 8
  %8 = alloca %struct.playlist_entry*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %10, %struct.mp_cmd_ctx** %3, align 8
  %11 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %11, i32 0, i32 3
  %13 = load %struct.MPContext*, %struct.MPContext** %12, align 8
  store %struct.MPContext* %13, %struct.MPContext** %4, align 8
  %14 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %35 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.playlist* @playlist_parse_file(i8* %28, i32 %33, i32 %36)
  store %struct.playlist* %37, %struct.playlist** %7, align 8
  %38 = load %struct.playlist*, %struct.playlist** %7, align 8
  %39 = icmp ne %struct.playlist* %38, null
  br i1 %39, label %40, label %92

40:                                               ; preds = %1
  %41 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %42 = load %struct.playlist*, %struct.playlist** %7, align 8
  %43 = call i32 @prepare_playlist(%struct.MPContext* %41, %struct.playlist* %42)
  %44 = load %struct.playlist*, %struct.playlist** %7, align 8
  %45 = getelementptr inbounds %struct.playlist, %struct.playlist* %44, i32 0, i32 0
  %46 = load %struct.playlist_entry*, %struct.playlist_entry** %45, align 8
  store %struct.playlist_entry* %46, %struct.playlist_entry** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %51 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = call i32 @playlist_clear(%struct.TYPE_9__* %52)
  br label %54

54:                                               ; preds = %49, %40
  %55 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %56 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load %struct.playlist*, %struct.playlist** %7, align 8
  %59 = call i32 @playlist_append_entries(%struct.TYPE_9__* %57, %struct.playlist* %58)
  %60 = load %struct.playlist*, %struct.playlist** %7, align 8
  %61 = call i32 @talloc_free(%struct.playlist* %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %54
  %65 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %66 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.playlist_entry*, %struct.playlist_entry** %68, align 8
  %70 = icmp ne %struct.playlist_entry* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %73 = load %struct.playlist_entry*, %struct.playlist_entry** %8, align 8
  %74 = icmp ne %struct.playlist_entry* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load %struct.playlist_entry*, %struct.playlist_entry** %8, align 8
  br label %83

77:                                               ; preds = %71
  %78 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %79 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.playlist_entry*, %struct.playlist_entry** %81, align 8
  br label %83

83:                                               ; preds = %77, %75
  %84 = phi %struct.playlist_entry* [ %76, %75 ], [ %82, %77 ]
  %85 = call i32 @mp_set_playlist_entry(%struct.MPContext* %72, %struct.playlist_entry* %84)
  br label %86

86:                                               ; preds = %83, %64, %54
  %87 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %88 = load i32, i32* @MP_EVENT_CHANGE_PLAYLIST, align 4
  %89 = call i32 @mp_notify(%struct.MPContext* %87, i32 %88, i32* null)
  %90 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %91 = call i32 @mp_wakeup_core(%struct.MPContext* %90)
  br label %98

92:                                               ; preds = %1
  %93 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @MP_ERR(%struct.MPContext* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %94)
  %96 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %92, %86
  ret void
}

declare dso_local %struct.playlist* @playlist_parse_file(i8*, i32, i32) #1

declare dso_local i32 @prepare_playlist(%struct.MPContext*, %struct.playlist*) #1

declare dso_local i32 @playlist_clear(%struct.TYPE_9__*) #1

declare dso_local i32 @playlist_append_entries(%struct.TYPE_9__*, %struct.playlist*) #1

declare dso_local i32 @talloc_free(%struct.playlist*) #1

declare dso_local i32 @mp_set_playlist_entry(%struct.MPContext*, %struct.playlist_entry*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
