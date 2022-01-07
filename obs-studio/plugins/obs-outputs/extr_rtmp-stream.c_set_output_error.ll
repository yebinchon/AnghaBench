; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_set_output_error.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_set_output_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ConnectionTimedOut\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PermissionDenied\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ConnectionAborted\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ConnectionReset\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"HostNotFound\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"NoData\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"AddressNotAvailable\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"SSLCertVerifyFailed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtmp_stream*)* @set_output_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_output_error(%struct.rtmp_stream* %0) #0 {
  %2 = alloca %struct.rtmp_stream*, align 8
  %3 = alloca i8*, align 8
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %5 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %22 [
    i32 137, label %8
    i32 141, label %10
    i32 139, label %12
    i32 138, label %14
    i32 136, label %16
    i32 135, label %18
    i32 140, label %20
  ]

8:                                                ; preds = %1
  %9 = call i8* @obs_module_text(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %3, align 8
  br label %22

10:                                               ; preds = %1
  %11 = call i8* @obs_module_text(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %11, i8** %3, align 8
  br label %22

12:                                               ; preds = %1
  %13 = call i8* @obs_module_text(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** %3, align 8
  br label %22

14:                                               ; preds = %1
  %15 = call i8* @obs_module_text(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %15, i8** %3, align 8
  br label %22

16:                                               ; preds = %1
  %17 = call i8* @obs_module_text(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i8* %17, i8** %3, align 8
  br label %22

18:                                               ; preds = %1
  %19 = call i8* @obs_module_text(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %19, i8** %3, align 8
  br label %22

20:                                               ; preds = %1
  %21 = call i8* @obs_module_text(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %1, %20, %18, %16, %14, %12, %10, %8
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %27 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %32 [
    i32 -9984, label %30
  ]

30:                                               ; preds = %25
  %31 = call i8* @obs_module_text(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %25, %30
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %35 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @obs_output_set_last_error(i32 %36, i8* %37)
  ret void
}

declare dso_local i8* @obs_module_text(i8*) #1

declare dso_local i32 @obs_output_set_last_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
