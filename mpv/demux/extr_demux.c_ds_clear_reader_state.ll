; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_ds_clear_reader_state.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_ds_clear_reader_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_stream = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8*, i8*, i64, %struct.TYPE_2__*, i64, i8*, i8*, i64, i8*, i8* }
%struct.TYPE_2__ = type { i64 }

@MP_NOPTS_VALUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_stream*, i32)* @ds_clear_reader_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_clear_reader_state(%struct.demux_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.demux_stream*, align 8
  %4 = alloca i32, align 4
  store %struct.demux_stream* %0, %struct.demux_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %6 = call i32 @ds_clear_reader_queue_state(%struct.demux_stream* %5)
  %7 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %8 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %9 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %8, i32 0, i32 20
  store i8* %7, i8** %9, align 8
  %10 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %11 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %10, i32 0, i32 21
  store i8* %7, i8** %11, align 8
  %12 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %13 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %12, i32 0, i32 19
  store i64 0, i64* %13, align 8
  %14 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %15 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %17 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %19 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %18, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %21 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %20, i32 0, i32 3
  store i32 -1, i32* %21, align 4
  %22 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %23 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %24 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %23, i32 0, i32 18
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %2
  %28 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %29 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %28, i32 0, i32 4
  store i32 -1, i32* %29, align 8
  %30 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %31 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %32 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %31, i32 0, i32 17
  store i8* %30, i8** %32, align 8
  %33 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %34 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %33, i32 0, i32 5
  store i32 0, i32* %34, align 4
  %35 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %36 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %35, i32 0, i32 15
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %41 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %40, i32 0, i32 16
  store i64 %39, i64* %41, align 8
  %42 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %43 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %42, i32 0, i32 15
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %27
  %49 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %50 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %49, i32 0, i32 14
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %48, %27
  %54 = phi i1 [ false, %27 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %57 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %59 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %60 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %59, i32 0, i32 13
  store i8* %58, i8** %60, align 8
  %61 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %62 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %61, i32 0, i32 7
  store i32 -1, i32* %62, align 4
  %63 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %64 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %65 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %64, i32 0, i32 12
  store i8* %63, i8** %65, align 8
  %66 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %67 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %66, i32 0, i32 8
  store i32 0, i32* %67, align 8
  %68 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %69 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %68, i32 0, i32 9
  store i32 0, i32* %69, align 4
  %70 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %71 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %70, i32 0, i32 11
  store i64 0, i64* %71, align 8
  %72 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %73 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %72, i32 0, i32 10
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %53, %2
  ret void
}

declare dso_local i32 @ds_clear_reader_queue_state(%struct.demux_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
