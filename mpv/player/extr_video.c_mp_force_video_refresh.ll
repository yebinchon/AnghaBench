; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_mp_force_video_refresh.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_mp_force_video_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { double, i64, %struct.vo_chain*, %struct.MPOpts* }
%struct.vo_chain = type { i32 }
%struct.MPOpts = type { i64 }

@STATUS_EOF = common dso_local global i64 0, align 8
@MPSEEK_VERY_EXACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_force_video_refresh(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca %struct.vo_chain*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 3
  %7 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  store %struct.MPOpts* %7, %struct.MPOpts** %3, align 8
  %8 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 2
  %10 = load %struct.vo_chain*, %struct.vo_chain** %9, align 8
  store %struct.vo_chain* %10, %struct.vo_chain** %4, align 8
  %11 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %12 = icmp ne %struct.vo_chain* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %16 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = fcmp oge double %22, 5.000000e-01
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @STATUS_EOF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %19, %14
  %31 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %32 = load i32, i32* @MPSEEK_VERY_EXACT, align 4
  %33 = call i32 @issue_refresh_seek(%struct.MPContext* %31, i32 %32)
  br label %34

34:                                               ; preds = %13, %30, %24
  ret void
}

declare dso_local i32 @issue_refresh_seek(%struct.MPContext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
