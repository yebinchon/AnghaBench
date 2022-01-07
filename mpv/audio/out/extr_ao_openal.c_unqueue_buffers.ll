; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_openal.c_unqueue_buffers.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_openal.c_unqueue_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32 }

@unqueue_buf = common dso_local global i64 0, align 8
@source = common dso_local global i32 0, align 4
@AL_BUFFERS_PROCESSED = common dso_local global i32 0, align 4
@buffers = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @unqueue_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unqueue_buffers(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %6 = load %struct.ao*, %struct.ao** %2, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @unqueue_buf, align 8
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @source, align 4
  %17 = load i32, i32* @AL_BUFFERS_PROCESSED, align 4
  %18 = call i32 @alGetSourcei(i32 %16, i32 %17, i32* %4)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load i32, i32* @source, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** @buffers, align 8
  %26 = load i64, i64* @unqueue_buf, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = call i32 @alSourceUnqueueBuffers(i32 %23, i32 %24, i32* %27)
  store i64 0, i64* @unqueue_buf, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %22, %1
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, i32* @source, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32*, i32** @buffers, align 8
  %39 = load i64, i64* @unqueue_buf, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @alSourceUnqueueBuffers(i32 %36, i32 %37, i32* %40)
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @unqueue_buf, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* @unqueue_buf, align 8
  br label %46

46:                                               ; preds = %35, %32
  ret void
}

declare dso_local i32 @alGetSourcei(i32, i32, i32*) #1

declare dso_local i32 @alSourceUnqueueBuffers(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
