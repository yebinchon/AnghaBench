; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_core_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_core_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"mpv core\00", align 1
@PT_QUIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @core_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @core_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.MPContext*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.MPContext*
  store %struct.MPContext* %5, %struct.MPContext** %3, align 8
  %6 = call i32 @mpthread_set_name(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %20, %1
  %8 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PT_QUIT, align 8
  %17 = icmp ne i64 %15, %16
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi i1 [ false, %7 ], [ %17, %12 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %22 = call i32 @mp_idle(%struct.MPContext* %21)
  br label %7

23:                                               ; preds = %18
  %24 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %25 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %30 = call i32 @mp_play_files(%struct.MPContext* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %33 = call i32 @mp_shutdown_clients(%struct.MPContext* %32)
  ret i8* null
}

declare dso_local i32 @mpthread_set_name(i8*) #1

declare dso_local i32 @mp_idle(%struct.MPContext*) #1

declare dso_local i32 @mp_play_files(%struct.MPContext*) #1

declare dso_local i32 @mp_shutdown_clients(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
