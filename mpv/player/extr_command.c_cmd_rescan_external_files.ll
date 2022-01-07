; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_rescan_external_files.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_rescan_external_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.MPContext* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.MPContext = type { i64, i64 }
%struct.track = type { i64 }

@STREAM_AUDIO = common dso_local global i32 0, align 4
@STREAM_SUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Track list:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_rescan_external_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_rescan_external_files(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca %struct.track*, align 8
  %6 = alloca %struct.track*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %8, %struct.mp_cmd_ctx** %3, align 8
  %9 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %9, i32 0, i32 3
  %11 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  store %struct.MPContext* %11, %struct.MPContext** %4, align 8
  %12 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %75

19:                                               ; preds = %1
  %20 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %21 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @autoload_external_files(%struct.MPContext* %20, i32 %25)
  %27 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %75, label %35

35:                                               ; preds = %19
  %36 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %37 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %35
  %41 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %42 = load i32, i32* @STREAM_AUDIO, align 4
  %43 = call %struct.track* @select_default_track(%struct.MPContext* %41, i32 0, i32 %42)
  store %struct.track* %43, %struct.track** %5, align 8
  %44 = load %struct.track*, %struct.track** %5, align 8
  %45 = icmp ne %struct.track* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.track*, %struct.track** %5, align 8
  %48 = getelementptr inbounds %struct.track, %struct.track* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %53 = load i32, i32* @STREAM_AUDIO, align 4
  %54 = load %struct.track*, %struct.track** %5, align 8
  %55 = call i32 @mp_switch_track(%struct.MPContext* %52, i32 %53, %struct.track* %54, i32 0)
  br label %56

56:                                               ; preds = %51, %46, %40
  %57 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %58 = load i32, i32* @STREAM_SUB, align 4
  %59 = call %struct.track* @select_default_track(%struct.MPContext* %57, i32 0, i32 %58)
  store %struct.track* %59, %struct.track** %6, align 8
  %60 = load %struct.track*, %struct.track** %6, align 8
  %61 = icmp ne %struct.track* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.track*, %struct.track** %6, align 8
  %64 = getelementptr inbounds %struct.track, %struct.track* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %69 = load i32, i32* @STREAM_SUB, align 4
  %70 = load %struct.track*, %struct.track** %6, align 8
  %71 = call i32 @mp_switch_track(%struct.MPContext* %68, i32 %69, %struct.track* %70, i32 0)
  br label %72

72:                                               ; preds = %67, %62, %56
  %73 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %74 = call i32 @print_track_list(%struct.MPContext* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %16, %72, %35, %19
  ret void
}

declare dso_local i32 @autoload_external_files(%struct.MPContext*, i32) #1

declare dso_local %struct.track* @select_default_track(%struct.MPContext*, i32, i32) #1

declare dso_local i32 @mp_switch_track(%struct.MPContext*, i32, %struct.track*, i32) #1

declare dso_local i32 @print_track_list(%struct.MPContext*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
