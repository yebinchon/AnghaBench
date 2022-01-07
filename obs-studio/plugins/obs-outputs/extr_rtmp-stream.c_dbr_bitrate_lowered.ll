; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_dbr_bitrate_lowered.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_dbr_bitrate_lowered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i64, i64, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"going back to prev bitrate\00", align 1
@DBR_INC_TIMER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"bitrate decreased to: %ld\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmp_stream*)* @dbr_bitrate_lowered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbr_bitrate_lowered(%struct.rtmp_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtmp_stream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %3, align 8
  %7 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %8 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %11 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %16 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %19 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %14
  %23 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %24 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %26 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %25, i32 0, i32 4
  %27 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %28 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @circlebuf_pop_front(%struct.TYPE_2__* %26, i32* null, i32 %30)
  %32 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %33 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sdiv i64 %34, 100
  %36 = mul nsw i64 %35, 100
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %37, 50
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  store i64 50, i64* %5, align 8
  br label %40

40:                                               ; preds = %39, %22
  br label %41

41:                                               ; preds = %40, %14, %1
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %6, align 8
  br label %54

46:                                               ; preds = %41
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %6, align 8
  %51 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %76

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %57 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %76

61:                                               ; preds = %54
  %62 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %63 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %66 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = call i64 (...) @os_gettime_ns()
  %68 = load i64, i64* @DBR_INC_TIMER, align 8
  %69 = add nsw i64 %67, %68
  %70 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %71 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %73 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  store i32 1, i32* %2, align 4
  br label %76

76:                                               ; preds = %61, %60, %52
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i64 @os_gettime_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
