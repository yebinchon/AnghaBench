; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_create.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mpv_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.MPContext = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"libmpv\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@core_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @mpv_create() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.MPContext* (...) @mp_create()
  store %struct.MPContext* %5, %struct.MPContext** %2, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %7 = icmp ne %struct.MPContext* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  br label %39

9:                                                ; preds = %0
  %10 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @m_config_set_profile(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  %14 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_7__* @mp_new_client(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %9
  %21 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %22 = call i32 @mp_destroy(%struct.MPContext* %21)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  br label %39

23:                                               ; preds = %9
  %24 = load i32, i32* @core_thread, align 4
  %25 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %26 = call i64 @pthread_create(i32* %4, i32* null, i32 %24, %struct.MPContext* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = call i32 @mpv_terminate_destroy(%struct.TYPE_7__* %33)
  %35 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %36 = call i32 @mp_destroy(%struct.MPContext* %35)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  br label %39

37:                                               ; preds = %23
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %1, align 8
  br label %39

39:                                               ; preds = %37, %28, %20, %8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %40
}

declare dso_local %struct.MPContext* @mp_create(...) #1

declare dso_local i32 @m_config_set_profile(i32, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @mp_new_client(i32, i8*) #1

declare dso_local i32 @mp_destroy(%struct.MPContext*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.MPContext*) #1

declare dso_local i32 @mpv_terminate_destroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
