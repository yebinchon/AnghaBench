; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_concat.c_stream_concat_open.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_concat.c_stream_concat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i32 }
%struct.mpv_global = type { i32 }
%struct.mp_cancel = type { i32 }
%struct.priv = type { i32, %struct.stream** }
%struct.stream_open_args = type { i8*, i32, %struct.priv*, i32*, %struct.mp_cancel*, %struct.mpv_global* }

@.str = private unnamed_addr constant [10 x i8] c"concat://\00", align 1
@STREAM_READ = common dso_local global i32 0, align 4
@STREAM_SILENT = common dso_local global i32 0, align 4
@stream_info_concat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.stream* @stream_concat_open(%struct.mpv_global* %0, %struct.mp_cancel* %1, %struct.stream** %2, i32 %3) #0 {
  %5 = alloca %struct.mpv_global*, align 8
  %6 = alloca %struct.mp_cancel*, align 8
  %7 = alloca %struct.stream**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.priv, align 8
  %10 = alloca %struct.stream_open_args, align 8
  %11 = alloca %struct.stream*, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %5, align 8
  store %struct.mp_cancel* %1, %struct.mp_cancel** %6, align 8
  store %struct.stream** %2, %struct.stream*** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 1
  %15 = load %struct.stream**, %struct.stream*** %7, align 8
  store %struct.stream** %15, %struct.stream*** %14, align 8
  %16 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %10, i32 0, i32 1
  %18 = load i32, i32* @STREAM_READ, align 4
  %19 = load i32, i32* @STREAM_SILENT, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %17, align 8
  %21 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %10, i32 0, i32 2
  store %struct.priv* %9, %struct.priv** %21, align 8
  %22 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %10, i32 0, i32 3
  store i32* @stream_info_concat, i32** %22, align 8
  %23 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %10, i32 0, i32 4
  %24 = load %struct.mp_cancel*, %struct.mp_cancel** %6, align 8
  store %struct.mp_cancel* %24, %struct.mp_cancel** %23, align 8
  %25 = getelementptr inbounds %struct.stream_open_args, %struct.stream_open_args* %10, i32 0, i32 5
  %26 = load %struct.mpv_global*, %struct.mpv_global** %5, align 8
  store %struct.mpv_global* %26, %struct.mpv_global** %25, align 8
  store %struct.stream* null, %struct.stream** %11, align 8
  %27 = call i32 @stream_create_with_args(%struct.stream_open_args* %10, %struct.stream** %11)
  %28 = load %struct.stream*, %struct.stream** %11, align 8
  ret %struct.stream* %28
}

declare dso_local i32 @stream_create_with_args(%struct.stream_open_args*, %struct.stream**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
