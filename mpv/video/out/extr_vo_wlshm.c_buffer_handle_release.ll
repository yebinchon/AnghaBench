; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_wlshm.c_buffer_handle_release.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_wlshm.c_buffer_handle_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_buffer = type { i32 }
%struct.buffer = type { %struct.buffer*, %struct.TYPE_2__, %struct.vo* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.vo = type { i64, i64, %struct.priv* }
%struct.priv = type { %struct.buffer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_buffer*)* @buffer_handle_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_handle_release(i8* %0, %struct.wl_buffer* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wl_buffer*, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca %struct.vo*, align 8
  %7 = alloca %struct.priv*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wl_buffer* %1, %struct.wl_buffer** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.buffer*
  store %struct.buffer* %9, %struct.buffer** %5, align 8
  %10 = load %struct.buffer*, %struct.buffer** %5, align 8
  %11 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 2
  %12 = load %struct.vo*, %struct.vo** %11, align 8
  store %struct.vo* %12, %struct.vo** %6, align 8
  %13 = load %struct.vo*, %struct.vo** %6, align 8
  %14 = getelementptr inbounds %struct.vo, %struct.vo* %13, i32 0, i32 2
  %15 = load %struct.priv*, %struct.priv** %14, align 8
  store %struct.priv* %15, %struct.priv** %7, align 8
  %16 = load %struct.buffer*, %struct.buffer** %5, align 8
  %17 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vo*, %struct.vo** %6, align 8
  %21 = getelementptr inbounds %struct.vo, %struct.vo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %2
  %25 = load %struct.buffer*, %struct.buffer** %5, align 8
  %26 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vo*, %struct.vo** %6, align 8
  %30 = getelementptr inbounds %struct.vo, %struct.vo* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.priv*, %struct.priv** %7, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 0
  %36 = load %struct.buffer*, %struct.buffer** %35, align 8
  %37 = load %struct.buffer*, %struct.buffer** %5, align 8
  %38 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 0
  store %struct.buffer* %36, %struct.buffer** %38, align 8
  %39 = load %struct.buffer*, %struct.buffer** %5, align 8
  %40 = load %struct.priv*, %struct.priv** %7, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 0
  store %struct.buffer* %39, %struct.buffer** %41, align 8
  br label %45

42:                                               ; preds = %24, %2
  %43 = load %struct.buffer*, %struct.buffer** %5, align 8
  %44 = call i32 @talloc_free(%struct.buffer* %43)
  br label %45

45:                                               ; preds = %42, %33
  ret void
}

declare dso_local i32 @talloc_free(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
