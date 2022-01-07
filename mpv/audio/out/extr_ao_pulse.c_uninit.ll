; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %4 = load %struct.ao*, %struct.ao** %2, align 8
  %5 = getelementptr inbounds %struct.ao, %struct.ao* %4, i32 0, i32 0
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.priv*, %struct.priv** %3, align 8
  %8 = getelementptr inbounds %struct.priv, %struct.priv* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.priv*, %struct.priv** %3, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @pa_threaded_mainloop_stop(i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.priv*, %struct.priv** %3, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.priv*, %struct.priv** %3, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @pa_stream_disconnect(i32* %24)
  %26 = load %struct.priv*, %struct.priv** %3, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @pa_stream_unref(i32* %28)
  %30 = load %struct.priv*, %struct.priv** %3, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 4
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %21, %16
  %33 = load %struct.priv*, %struct.priv** %3, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.priv*, %struct.priv** %3, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @pa_context_disconnect(i32* %40)
  %42 = load %struct.priv*, %struct.priv** %3, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @pa_context_unref(i32* %44)
  %46 = load %struct.priv*, %struct.priv** %3, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %37, %32
  %49 = load %struct.priv*, %struct.priv** %3, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.priv*, %struct.priv** %3, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @pa_threaded_mainloop_free(i32* %56)
  %58 = load %struct.priv*, %struct.priv** %3, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load %struct.priv*, %struct.priv** %3, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 1
  %63 = call i32 @pthread_cond_destroy(i32* %62)
  %64 = load %struct.priv*, %struct.priv** %3, align 8
  %65 = getelementptr inbounds %struct.priv, %struct.priv* %64, i32 0, i32 0
  %66 = call i32 @pthread_mutex_destroy(i32* %65)
  ret void
}

declare dso_local i32 @pa_threaded_mainloop_stop(i32*) #1

declare dso_local i32 @pa_stream_disconnect(i32*) #1

declare dso_local i32 @pa_stream_unref(i32*) #1

declare dso_local i32 @pa_context_disconnect(i32*) #1

declare dso_local i32 @pa_context_unref(i32*) #1

declare dso_local i32 @pa_threaded_mainloop_free(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
