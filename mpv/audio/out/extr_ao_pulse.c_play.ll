; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_play.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.priv* }
%struct.priv = type { i32, i32 }

@PA_SEEK_RELATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pa_stream_write() failed\00", align 1
@AOPLAY_FINAL_CHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i8**, i32, i32)* @play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @play(%struct.ao* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ao*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.priv*, align 8
  %10 = alloca i32*, align 8
  store %struct.ao* %0, %struct.ao** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ao*, %struct.ao** %5, align 8
  %12 = getelementptr inbounds %struct.ao, %struct.ao* %11, i32 0, i32 1
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %9, align 8
  %14 = load %struct.priv*, %struct.priv** %9, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pa_threaded_mainloop_lock(i32 %16)
  %18 = load %struct.priv*, %struct.priv** %9, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ao*, %struct.ao** %5, align 8
  %26 = getelementptr inbounds %struct.ao, %struct.ao* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %24, %27
  %29 = load i32, i32* @PA_SEEK_RELATIVE, align 4
  %30 = call i64 @pa_stream_write(i32 %20, i8* %23, i32 %28, i32* null, i32 0, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = call i32 @GENERIC_ERR_MSG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.priv*, %struct.priv** %9, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @pa_stream_trigger(i32 %42, i32* null, i32* null)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @pa_operation_unref(i32* %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.priv*, %struct.priv** %9, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pa_threaded_mainloop_unlock(i32 %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i64 @pa_stream_write(i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @GENERIC_ERR_MSG(i8*) #1

declare dso_local i32* @pa_stream_trigger(i32, i32*, i32*) #1

declare dso_local i32 @pa_operation_unref(i32*) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
