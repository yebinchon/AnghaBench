; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_context_data_setname.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_context_data_setname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_context_data = type { i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_context_data_setname(%struct.obs_context_data* %0, i8* %1) #0 {
  %3 = alloca %struct.obs_context_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.obs_context_data* %0, %struct.obs_context_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.obs_context_data*, %struct.obs_context_data** %3, align 8
  %6 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %5, i32 0, i32 0
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load %struct.obs_context_data*, %struct.obs_context_data** %3, align 8
  %9 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.obs_context_data*, %struct.obs_context_data** %3, align 8
  %14 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.obs_context_data*, %struct.obs_context_data** %3, align 8
  %17 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %16, i32 0, i32 2
  %18 = call i32 @da_push_back(i32 %15, i64* %17)
  br label %19

19:                                               ; preds = %12, %2
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.obs_context_data*, %struct.obs_context_data** %3, align 8
  %22 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @dup_name(i8* %20, i32 %23)
  %25 = load %struct.obs_context_data*, %struct.obs_context_data** %3, align 8
  %26 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.obs_context_data*, %struct.obs_context_data** %3, align 8
  %28 = getelementptr inbounds %struct.obs_context_data, %struct.obs_context_data* %27, i32 0, i32 0
  %29 = call i32 @pthread_mutex_unlock(i32* %28)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @da_push_back(i32, i64*) #1

declare dso_local i64 @dup_name(i8*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
