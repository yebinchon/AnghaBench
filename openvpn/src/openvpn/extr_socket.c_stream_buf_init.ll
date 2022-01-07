; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_stream_buf_init.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_stream_buf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_buf = type { i32, i64, i32, i32, %struct.buffer }
%struct.buffer = type { i64 }

@D_STREAM_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"STREAM: INIT maxlen=%d\00", align 1
@PROTO_TCP_SERVER = common dso_local global i32 0, align 4
@PS_DISABLED = common dso_local global i32 0, align 4
@PS_ENABLED = common dso_local global i32 0, align 4
@SF_PORT_SHARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_buf*, %struct.buffer*, i32, i32)* @stream_buf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_buf_init(%struct.stream_buf* %0, %struct.buffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stream_buf*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stream_buf* %0, %struct.stream_buf** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.stream_buf*, %struct.stream_buf** %5, align 8
  %10 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %9, i32 0, i32 4
  %11 = load %struct.buffer*, %struct.buffer** %6, align 8
  %12 = bitcast %struct.buffer* %10 to i8*
  %13 = bitcast %struct.buffer* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = load %struct.stream_buf*, %struct.stream_buf** %5, align 8
  %15 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.stream_buf*, %struct.stream_buf** %5, align 8
  %19 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.stream_buf*, %struct.stream_buf** %5, align 8
  %21 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.stream_buf*, %struct.stream_buf** %5, align 8
  %24 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @alloc_buf(i64 %25)
  %27 = load %struct.stream_buf*, %struct.stream_buf** %5, align 8
  %28 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.stream_buf*, %struct.stream_buf** %5, align 8
  %30 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.stream_buf*, %struct.stream_buf** %5, align 8
  %32 = call i32 @stream_buf_reset(%struct.stream_buf* %31)
  %33 = load i32, i32* @D_STREAM_DEBUG, align 4
  %34 = load %struct.stream_buf*, %struct.stream_buf** %5, align 8
  %35 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dmsg(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %36)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @alloc_buf(i64) #2

declare dso_local i32 @stream_buf_reset(%struct.stream_buf*) #2

declare dso_local i32 @dmsg(i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
