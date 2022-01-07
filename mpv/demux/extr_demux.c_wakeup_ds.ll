; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_wakeup_ds.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_wakeup_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_stream = type { i32, %struct.TYPE_2__*, i32, i32 (i32)* }
%struct.TYPE_2__ = type { i32, i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_stream*)* @wakeup_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_ds(%struct.demux_stream* %0) #0 {
  %2 = alloca %struct.demux_stream*, align 8
  store %struct.demux_stream* %0, %struct.demux_stream** %2, align 8
  %3 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %4 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %1
  %8 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %9 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %8, i32 0, i32 3
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = icmp ne i32 (i32)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %14 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %13, i32 0, i32 3
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %17 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18)
  br label %40

20:                                               ; preds = %7
  %21 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %22 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = icmp ne i32 (i32)* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %29 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %34 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %32(i32 %37)
  br label %39

39:                                               ; preds = %27, %20
  br label %40

40:                                               ; preds = %39, %12
  %41 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %42 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.demux_stream*, %struct.demux_stream** %2, align 8
  %44 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @pthread_cond_signal(i32* %46)
  br label %48

48:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @pthread_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
