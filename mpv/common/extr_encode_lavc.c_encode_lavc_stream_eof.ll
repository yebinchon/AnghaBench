; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encode_lavc_stream_eof.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encode_lavc_stream_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encode_lavc_context = type { i32, %struct.encode_priv* }
%struct.encode_priv = type { i32 }
%struct.mux_stream = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"No data on stream %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encode_lavc_stream_eof(%struct.encode_lavc_context* %0, i32 %1) #0 {
  %3 = alloca %struct.encode_lavc_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.encode_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mux_stream*, align 8
  store %struct.encode_lavc_context* %0, %struct.encode_lavc_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %3, align 8
  %9 = icmp ne %struct.encode_lavc_context* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %42

11:                                               ; preds = %2
  %12 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %3, align 8
  %13 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %12, i32 0, i32 1
  %14 = load %struct.encode_priv*, %struct.encode_priv** %13, align 8
  store %struct.encode_priv* %14, %struct.encode_priv** %5, align 8
  %15 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %3, align 8
  %16 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %15, i32 0, i32 0
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mp_to_av_stream_type(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.mux_stream* @find_mux_stream(%struct.encode_lavc_context* %20, i32 %21)
  store %struct.mux_stream* %22, %struct.mux_stream** %7, align 8
  %23 = load %struct.mux_stream*, %struct.mux_stream** %7, align 8
  %24 = icmp ne %struct.mux_stream* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %11
  %26 = load %struct.mux_stream*, %struct.mux_stream** %7, align 8
  %27 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.encode_priv*, %struct.encode_priv** %5, align 8
  %32 = load %struct.mux_stream*, %struct.mux_stream** %7, align 8
  %33 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @MP_ERR(%struct.encode_priv* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.encode_priv*, %struct.encode_priv** %5, align 8
  %37 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %25, %11
  %39 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %3, align 8
  %40 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %39, i32 0, i32 0
  %41 = call i32 @pthread_mutex_unlock(i32* %40)
  br label %42

42:                                               ; preds = %38, %10
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mp_to_av_stream_type(i32) #1

declare dso_local %struct.mux_stream* @find_mux_stream(%struct.encode_lavc_context*, i32) #1

declare dso_local i32 @MP_ERR(%struct.encode_priv*, i8*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
