; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_play_files.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_play_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i32*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.playlist_entry* }
%struct.playlist_entry = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Waiting for scripts...\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Done loading scripts.\0A\00", align 1
@PT_QUIT = common dso_local global i64 0, align 8
@PT_NEXT_ENTRY = common dso_local global i64 0, align 8
@PT_ERROR = common dso_local global i64 0, align 8
@AT_END_OF_FILE = common dso_local global i64 0, align 8
@PT_STOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_play_files(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.playlist_entry*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %4 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %5 = call i32 @mp_clients_all_initialized(%struct.MPContext* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %9 = call i32 @MP_VERBOSE(%struct.MPContext* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %15, %7
  %11 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %12 = call i32 @mp_clients_all_initialized(%struct.MPContext* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %17 = call i32 @mp_idle(%struct.MPContext* %16)
  br label %10

18:                                               ; preds = %10
  %19 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %20 = call i32 @mp_wakeup_core(%struct.MPContext* %19)
  %21 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %22 = call i32 @MP_VERBOSE(%struct.MPContext* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %25 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @prepare_playlist(%struct.MPContext* %24, %struct.TYPE_4__* %27)
  br label %29

29:                                               ; preds = %110, %23
  %30 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %31 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @assert(i64 %32)
  %34 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %35 = call i32 @idle_loop(%struct.MPContext* %34)
  %36 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %37 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PT_QUIT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %111

42:                                               ; preds = %29
  %43 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %44 = call i32 @play_current_file(%struct.MPContext* %43)
  %45 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PT_QUIT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %111

51:                                               ; preds = %42
  %52 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.playlist_entry*, %struct.playlist_entry** %55, align 8
  store %struct.playlist_entry* %56, %struct.playlist_entry** %3, align 8
  %57 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %58 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PT_NEXT_ENTRY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %80, label %62

62:                                               ; preds = %51
  %63 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %64 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PT_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %80, label %68

68:                                               ; preds = %62
  %69 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %70 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AT_END_OF_FILE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %76 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PT_STOP, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %68, %62, %51
  %81 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %82 = call %struct.playlist_entry* @mp_next_file(%struct.MPContext* %81, i32 1, i32 0, i32 1)
  store %struct.playlist_entry* %82, %struct.playlist_entry** %3, align 8
  br label %83

83:                                               ; preds = %80, %74
  %84 = load %struct.playlist_entry*, %struct.playlist_entry** %3, align 8
  %85 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %86 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store %struct.playlist_entry* %84, %struct.playlist_entry** %88, align 8
  %89 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %90 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load i64, i64* @PT_STOP, align 8
  %94 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %95 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %97 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.playlist_entry*, %struct.playlist_entry** %99, align 8
  %101 = icmp ne %struct.playlist_entry* %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %83
  %103 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %104 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 2
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %111

110:                                              ; preds = %102, %83
  br label %29

111:                                              ; preds = %109, %50, %41
  %112 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %113 = call i32 @cancel_open(%struct.MPContext* %112)
  %114 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %115 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %135

118:                                              ; preds = %111
  %119 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %120 = call i32 @uninit_audio_out(%struct.MPContext* %119)
  %121 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %122 = call i32 @uninit_video_out(%struct.MPContext* %121)
  %123 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %124 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @encode_lavc_free(i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %118
  %129 = load i64, i64* @PT_ERROR, align 8
  %130 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %131 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %118
  %133 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %134 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %133, i32 0, i32 1
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %132, %111
  ret void
}

declare dso_local i32 @mp_clients_all_initialized(%struct.MPContext*) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*) #1

declare dso_local i32 @mp_idle(%struct.MPContext*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @prepare_playlist(%struct.MPContext*, %struct.TYPE_4__*) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @idle_loop(%struct.MPContext*) #1

declare dso_local i32 @play_current_file(%struct.MPContext*) #1

declare dso_local %struct.playlist_entry* @mp_next_file(%struct.MPContext*, i32, i32, i32) #1

declare dso_local i32 @cancel_open(%struct.MPContext*) #1

declare dso_local i32 @uninit_audio_out(%struct.MPContext*) #1

declare dso_local i32 @uninit_video_out(%struct.MPContext*) #1

declare dso_local i32 @encode_lavc_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
