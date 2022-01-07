; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_loadfile.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_loadfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { %struct.TYPE_7__*, %struct.MPContext* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i8** }
%struct.MPContext = type { %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.playlist_entry = type { i32 }

@MP_EVENT_CHANGE_PLAYLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_loadfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_loadfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.playlist_entry*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %11, %struct.mp_cmd_ctx** %3, align 8
  %12 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %12, i32 0, i32 1
  %14 = load %struct.MPContext*, %struct.MPContext** %13, align 8
  store %struct.MPContext* %14, %struct.MPContext** %4, align 8
  %15 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  %22 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = call i32 @playlist_clear(%struct.TYPE_9__* %34)
  br label %36

36:                                               ; preds = %31, %1
  %37 = load i8*, i8** %5, align 8
  %38 = call %struct.playlist_entry* @playlist_entry_new(i8* %37)
  store %struct.playlist_entry* %38, %struct.playlist_entry** %7, align 8
  %39 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i8**, i8*** %44, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %92

47:                                               ; preds = %36
  %48 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i8**, i8*** %53, align 8
  store i8** %54, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %88, %47
  %56 = load i8**, i8*** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i8**, i8*** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br label %70

70:                                               ; preds = %62, %55
  %71 = phi i1 [ false, %55 ], [ %69, %62 ]
  br i1 %71, label %72, label %91

72:                                               ; preds = %70
  %73 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %74 = load i8**, i8*** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @bstr0(i8* %78)
  %80 = load i8**, i8*** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %80, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @bstr0(i8* %85)
  %87 = call i32 @playlist_entry_add_param(%struct.playlist_entry* %73, i32 %79, i32 %86)
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %9, align 4
  br label %55

91:                                               ; preds = %70
  br label %92

92:                                               ; preds = %91, %36
  %93 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %94 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %97 = call i32 @playlist_add(%struct.TYPE_9__* %95, %struct.playlist_entry* %96)
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %92
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %124

103:                                              ; preds = %100
  %104 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %105 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %103, %92
  %111 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %112 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %119 = call i32 @mp_write_watch_later_conf(%struct.MPContext* %118)
  br label %120

120:                                              ; preds = %117, %110
  %121 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %122 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %123 = call i32 @mp_set_playlist_entry(%struct.MPContext* %121, %struct.playlist_entry* %122)
  br label %124

124:                                              ; preds = %120, %103, %100
  %125 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %126 = load i32, i32* @MP_EVENT_CHANGE_PLAYLIST, align 4
  %127 = call i32 @mp_notify(%struct.MPContext* %125, i32 %126, i32* null)
  %128 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %129 = call i32 @mp_wakeup_core(%struct.MPContext* %128)
  ret void
}

declare dso_local i32 @playlist_clear(%struct.TYPE_9__*) #1

declare dso_local %struct.playlist_entry* @playlist_entry_new(i8*) #1

declare dso_local i32 @playlist_entry_add_param(%struct.playlist_entry*, i32, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @playlist_add(%struct.TYPE_9__*, %struct.playlist_entry*) #1

declare dso_local i32 @mp_write_watch_later_conf(%struct.MPContext*) #1

declare dso_local i32 @mp_set_playlist_entry(%struct.MPContext*, %struct.playlist_entry*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
