; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_can_shutdown_stream.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_can_shutdown_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i64, i64, i32 }
%struct.encoder_packet = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"Stream shutdown timeout reached (%d second(s))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftl_stream*, %struct.encoder_packet*)* @can_shutdown_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_shutdown_stream(%struct.ftl_stream* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca %struct.ftl_stream*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ftl_stream* %0, %struct.ftl_stream** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %7 = call i64 (...) @os_gettime_ns()
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %10 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %18 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %26 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %29 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br label %32

32:                                               ; preds = %24, %21
  %33 = phi i1 [ true, %21 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i64 @os_gettime_ns(...) #1

declare dso_local i32 @info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
