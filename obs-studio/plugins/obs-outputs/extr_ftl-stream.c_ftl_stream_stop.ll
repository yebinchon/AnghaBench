; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_ftl_stream_stop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_ftl_stream_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i32, i32, i64, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ftl_stream_stop\00", align 1
@OBS_OUTPUT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @ftl_stream_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftl_stream_stop(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ftl_stream*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ftl_stream*
  store %struct.ftl_stream* %7, %struct.ftl_stream** %5, align 8
  %8 = call i32 @info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %10 = call i64 @stopping(%struct.ftl_stream* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %70

16:                                               ; preds = %12, %2
  %17 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %18 = call i64 @connecting(%struct.ftl_stream* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %22 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pthread_join(i32 %23, i32* null)
  %25 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %26 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pthread_join(i32 %27, i32* null)
  br label %29

29:                                               ; preds = %20, %16
  %30 = load i64, i64* %4, align 8
  %31 = udiv i64 %30, 1000
  %32 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %33 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %39 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %40, 1000000000
  %42 = add i64 %37, %41
  %43 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %44 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %43, i32 0, i32 5
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %36, %29
  %46 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %47 = call i64 @active(%struct.ftl_stream* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %51 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @os_event_signal(i32 %52)
  %54 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %55 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %60 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @os_sem_post(i32 %61)
  br label %63

63:                                               ; preds = %58, %49
  br label %70

64:                                               ; preds = %45
  %65 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %66 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @OBS_OUTPUT_SUCCESS, align 4
  %69 = call i32 @obs_output_signal_stop(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %15, %64, %63
  ret void
}

declare dso_local i32 @info(i8*) #1

declare dso_local i64 @stopping(%struct.ftl_stream*) #1

declare dso_local i64 @connecting(%struct.ftl_stream*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i64 @active(%struct.ftl_stream*) #1

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @os_sem_post(i32) #1

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
