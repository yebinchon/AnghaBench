; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_obs_encoder_stop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_obs_encoder_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.encoder_packet = type opaque
%struct.encoder_packet.0 = type opaque
%struct.encoder_packet.1 = type opaque

@.str = private unnamed_addr constant [17 x i8] c"obs_encoder_stop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_encoder_stop(%struct.TYPE_5__* %0, void (i8*, %struct.encoder_packet*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca void (i8*, %struct.encoder_packet*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store void (i8*, %struct.encoder_packet*)* %1, void (i8*, %struct.encoder_packet*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i32 @obs_encoder_valid(%struct.TYPE_5__* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %33

12:                                               ; preds = %3
  %13 = load void (i8*, %struct.encoder_packet*)*, void (i8*, %struct.encoder_packet*)** %5, align 8
  %14 = bitcast void (i8*, %struct.encoder_packet*)* %13 to void (i8*, %struct.encoder_packet.0*)*
  %15 = call i32 @obs_ptr_valid(void (i8*, %struct.encoder_packet.0*)* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %33

18:                                               ; preds = %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = load void (i8*, %struct.encoder_packet*)*, void (i8*, %struct.encoder_packet*)** %5, align 8
  %24 = bitcast void (i8*, %struct.encoder_packet*)* %23 to void (i8*, %struct.encoder_packet.1*)*
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @obs_encoder_stop_internal(%struct.TYPE_5__* %22, void (i8*, %struct.encoder_packet.1*)* %24, i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %18
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @pthread_mutex_unlock(i32* %31)
  br label %33

33:                                               ; preds = %11, %17, %29, %18
  ret void
}

declare dso_local i32 @obs_encoder_valid(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @obs_ptr_valid(void (i8*, %struct.encoder_packet.0*)*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @obs_encoder_stop_internal(%struct.TYPE_5__*, void (i8*, %struct.encoder_packet.1*)*, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
