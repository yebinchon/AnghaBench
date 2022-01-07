; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_set_sync_offset.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_set_sync_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.calldata = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"obs_source_set_sync_offset\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"audio_sync\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_set_sync_offset(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.calldata, align 4
  %6 = alloca [128 x i32], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = call i64 @obs_source_valid(%struct.TYPE_7__* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %12 = call i32 @calldata_init_fixed(%struct.calldata* %5, i32* %11, i32 512)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i32 @calldata_set_ptr(%struct.calldata* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @calldata_set_int(%struct.calldata* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @signal_handler_signal(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.calldata* %5)
  %22 = call i32 @calldata_int(%struct.calldata* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %10, %2
  ret void
}

declare dso_local i64 @obs_source_valid(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @calldata_init_fixed(%struct.calldata*, i32*, i32) #1

declare dso_local i32 @calldata_set_ptr(%struct.calldata*, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @calldata_set_int(%struct.calldata*, i8*, i32) #1

declare dso_local i32 @signal_handler_signal(i32, i8*, %struct.calldata*) #1

declare dso_local i32 @calldata_int(%struct.calldata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
