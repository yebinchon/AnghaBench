; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output-delay.c_pop_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output-delay.c_pop_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i32, i64, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.delay_data = type { i64 }

@OBS_OUTPUT_DELAY_PRESERVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_output*, i64)* @pop_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop_packet(%struct.obs_output* %0, i64 %1) #0 {
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.delay_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %10 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @OBS_OUTPUT_DELAY_PRESERVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %17 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %16, i32 0, i32 2
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  %19 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %20 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %2
  %25 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %26 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %25, i32 0, i32 3
  %27 = call i32 @circlebuf_peek_front(%struct.TYPE_3__* %26, %struct.delay_data* %6, i32 8)
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.delay_data, %struct.delay_data* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %28, %30
  store i64 %31, i64* %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %36 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %42 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %54

43:                                               ; preds = %34, %24
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %46 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %51 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %50, i32 0, i32 3
  %52 = call i32 @circlebuf_pop_front(%struct.TYPE_3__* %51, i32* null, i32 8)
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %43
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %57 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %56, i32 0, i32 2
  %58 = call i32 @pthread_mutex_unlock(i32* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %63 = call i32 @process_delay_data(%struct.obs_output* %62, %struct.delay_data* %6)
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @circlebuf_peek_front(%struct.TYPE_3__*, %struct.delay_data*, i32) #1

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @process_delay_data(%struct.obs_output*, %struct.delay_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
