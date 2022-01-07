; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_frame_step.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_frame_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_2__*, %struct.MPContext* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.MPContext = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_frame_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_frame_step(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %6, %struct.mp_cmd_ctx** %3, align 8
  %7 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %7, i32 0, i32 2
  %9 = load %struct.MPContext*, %struct.MPContext** %8, align 8
  store %struct.MPContext* %9, %struct.MPContext** %4, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %17
  %25 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %38 = call i32 @set_pause_state(%struct.MPContext* %37, i32 1)
  br label %39

39:                                               ; preds = %36, %31
  br label %54

40:                                               ; preds = %24
  %41 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %49 = call i32 @set_pause_state(%struct.MPContext* %48, i32 0)
  br label %53

50:                                               ; preds = %40
  %51 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %52 = call i32 @add_step_frame(%struct.MPContext* %51, i32 1)
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %39
  br label %58

55:                                               ; preds = %17
  %56 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %57 = call i32 @add_step_frame(%struct.MPContext* %56, i32 1)
  br label %58

58:                                               ; preds = %14, %55, %54
  ret void
}

declare dso_local i32 @set_pause_state(%struct.MPContext*, i32) #1

declare dso_local i32 @add_step_frame(%struct.MPContext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
