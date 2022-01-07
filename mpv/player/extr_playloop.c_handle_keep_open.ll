; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_keep_open.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_keep_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i64, i32, i32, i32, i64, i32, %struct.MPOpts* }
%struct.MPOpts = type { i32, i32, i64 }

@AT_END_OF_FILE = common dso_local global i64 0, align 8
@KEEP_PLAYING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @handle_keep_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_keep_open(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %4 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %5 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %4, i32 0, i32 7
  %6 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  store %struct.MPOpts* %6, %struct.MPOpts** %3, align 8
  %7 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %8 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %75

11:                                               ; preds = %1
  %12 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AT_END_OF_FILE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %11
  %18 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %19 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %24 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @playlist_get_next(i32 %25, i32 1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %75, label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %30 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %75

33:                                               ; preds = %28
  %34 = load i64, i64* @KEEP_PLAYING, align 8
  %35 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %36 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %38 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %43 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @vo_has_frame(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %49 = call i32 @seek_to_last_frame(%struct.MPContext* %48)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %52 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %55 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %33
  %57 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %58 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %63 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %68 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @ao_drain(i64 %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %73 = call i32 @set_pause_state(%struct.MPContext* %72, i32 1)
  br label %74

74:                                               ; preds = %71, %56
  br label %75

75:                                               ; preds = %74, %28, %22, %11, %1
  ret void
}

declare dso_local i32 @playlist_get_next(i32, i32) #1

declare dso_local i32 @vo_has_frame(i32) #1

declare dso_local i32 @seek_to_last_frame(%struct.MPContext*) #1

declare dso_local i32 @ao_drain(i64) #1

declare dso_local i32 @set_pause_state(%struct.MPContext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
