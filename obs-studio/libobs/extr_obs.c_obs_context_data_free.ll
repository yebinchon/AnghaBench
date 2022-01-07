; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_context_data_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_context_data_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_context_data = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_context_data_free(%struct.obs_context_data* %0) #0 {
  %2 = alloca %struct.obs_context_data*, align 8
  %3 = alloca i64, align 8
  store %struct.obs_context_data* %0, %struct.obs_context_data** %2, align 8
  %4 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %5 = call i32 @obs_hotkeys_context_release(%struct.obs_context_data* %4)
  %6 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %7 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @signal_handler_destroy(i32 %8)
  %10 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %11 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @proc_handler_destroy(i32 %12)
  %14 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %15 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @obs_data_release(i32 %16)
  %18 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %19 = call i32 @obs_context_data_remove(%struct.obs_context_data* %18)
  %20 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %21 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %20, i32 0, i32 2
  %22 = call i32 @pthread_mutex_destroy(i32* %21)
  %23 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %24 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bfree(i32 %25)
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %43, %1
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %30 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %36 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bfree(i32 %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %27

46:                                               ; preds = %27
  %47 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %48 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %47, i32 0, i32 0
  %49 = bitcast %struct.TYPE_2__* %48 to { i64, i32* }*
  %50 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %49, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @da_free(i64 %51, i32* %53)
  %55 = load %struct.obs_context_data*, %struct.obs_context_data** %2, align 8
  %56 = call i32 @memset(%struct.obs_context_data* %55, i32 0, i32 40)
  ret void
}

declare dso_local i32 @obs_hotkeys_context_release(%struct.obs_context_data*) #1

declare dso_local i32 @signal_handler_destroy(i32) #1

declare dso_local i32 @proc_handler_destroy(i32) #1

declare dso_local i32 @obs_data_release(i32) #1

declare dso_local i32 @obs_context_data_remove(%struct.obs_context_data*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @da_free(i64, i32*) #1

declare dso_local i32 @memset(%struct.obs_context_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
