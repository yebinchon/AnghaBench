; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_run_command_on_worker_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_run_command_on_worker_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { %struct.TYPE_4__*, %struct.MPContext* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 (%struct.mp_cmd_ctx*)* }
%struct.MPContext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_command_on_worker_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_command_on_worker_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %7, %struct.mp_cmd_ctx** %3, align 8
  %8 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %8, i32 0, i32 1
  %10 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  store %struct.MPContext* %10, %struct.MPContext** %4, align 8
  %11 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %12 = call i32 @mp_core_lock(%struct.MPContext* %11)
  %13 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32 (%struct.mp_cmd_ctx*)*, i32 (%struct.mp_cmd_ctx*)** %25, align 8
  %27 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %28 = call i32 %26(%struct.mp_cmd_ctx* %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %33 = call i32 @mp_cmd_ctx_complete(%struct.mp_cmd_ctx* %32)
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %36 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %40 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %45 = call i64 @mp_is_shutting_down(%struct.MPContext* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %49 = call i32 @mp_wakeup_core(%struct.MPContext* %48)
  br label %50

50:                                               ; preds = %47, %43, %34
  %51 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %52 = call i32 @mp_core_unlock(%struct.MPContext* %51)
  ret void
}

declare dso_local i32 @mp_core_lock(%struct.MPContext*) #1

declare dso_local i32 @mp_cmd_ctx_complete(%struct.mp_cmd_ctx*) #1

declare dso_local i64 @mp_is_shutting_down(%struct.MPContext*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @mp_core_unlock(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
