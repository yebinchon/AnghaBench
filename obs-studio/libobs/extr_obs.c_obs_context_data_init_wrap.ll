; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_context_data_init_wrap.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_context_data_init_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_context_data = type { i32, i32, i8*, i8*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_context_data*, i32, i32*, i8*, i32*, i32)* @obs_context_data_init_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_context_data_init_wrap(%struct.obs_context_data* %0, i32 %1, i32* %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.obs_context_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.obs_context_data* %0, %struct.obs_context_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %15 = call i32 @assert(%struct.obs_context_data* %14)
  %16 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %17 = call i32 @memset(%struct.obs_context_data* %16, i32 0, i32 40)
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %20 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %23 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %25 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %24, i32 0, i32 7
  %26 = call i32 @pthread_mutex_init_value(i32* %25)
  %27 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %28 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %27, i32 0, i32 7
  %29 = call i64 @pthread_mutex_init(i32* %28, i32* null)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %64

32:                                               ; preds = %6
  %33 = call i32 (...) @signal_handler_create()
  %34 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %35 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %37 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %64

41:                                               ; preds = %32
  %42 = call i32 (...) @proc_handler_create()
  %43 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %44 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %46 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %64

50:                                               ; preds = %41
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @dup_name(i8* %51, i32 %52)
  %54 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %55 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i8* @obs_data_newref(i32* %56)
  %58 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %59 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i8* @obs_data_newref(i32* %60)
  %62 = load %struct.obs_context_data*, %struct.obs_context_data** %8, align 8
  %63 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %50, %49, %40, %31
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @assert(%struct.obs_context_data*) #1

declare dso_local i32 @memset(%struct.obs_context_data*, i32, i32) #1

declare dso_local i32 @pthread_mutex_init_value(i32*) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @signal_handler_create(...) #1

declare dso_local i32 @proc_handler_create(...) #1

declare dso_local i32 @dup_name(i8*, i32) #1

declare dso_local i8* @obs_data_newref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
