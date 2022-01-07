; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_dbr_inc_bitrate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_dbr_inc_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"bitrate increased to: %ld, done\00", align 1
@DBR_INC_TIMER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"bitrate increased to: %ld, waiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtmp_stream*)* @dbr_inc_bitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbr_inc_bitrate(%struct.rtmp_stream* %0) #0 {
  %2 = alloca %struct.rtmp_stream*, align 8
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %2, align 8
  %3 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %4 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %7 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %9 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %12 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %16 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %19 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %24 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %27 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %29 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %51

32:                                               ; preds = %1
  %33 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %34 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %37 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = call i64 (...) @os_gettime_ns()
  %42 = load i64, i64* @DBR_INC_TIMER, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %45 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %47 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %40, %32
  br label %51

51:                                               ; preds = %50, %22
  ret void
}

declare dso_local i32 @info(i8*, i64) #1

declare dso_local i64 @os_gettime_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
