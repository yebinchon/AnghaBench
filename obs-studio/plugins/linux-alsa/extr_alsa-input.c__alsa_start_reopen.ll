; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_start_reopen.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_start_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alsa_data = type { i32, i32, i32 }

@PTHREAD_CREATE_JOINABLE = common dso_local global i32 0, align 4
@_alsa_reopen = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to create reopen thread for device '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_alsa_start_reopen(%struct.alsa_data* %0) #0 {
  %2 = alloca %struct.alsa_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.alsa_data* %0, %struct.alsa_data** %2, align 8
  %5 = load %struct.alsa_data*, %struct.alsa_data** %2, align 8
  %6 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %5, i32 0, i32 2
  %7 = call i64 @os_atomic_load_bool(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %29

10:                                               ; preds = %1
  %11 = call i32 @pthread_attr_init(i32* %3)
  %12 = load i32, i32* @PTHREAD_CREATE_JOINABLE, align 4
  %13 = call i32 @pthread_attr_setdetachstate(i32* %3, i32 %12)
  %14 = load %struct.alsa_data*, %struct.alsa_data** %2, align 8
  %15 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %14, i32 0, i32 1
  %16 = load i32, i32* @_alsa_reopen, align 4
  %17 = load %struct.alsa_data*, %struct.alsa_data** %2, align 8
  %18 = call i32 @pthread_create(i32* %15, i32* %3, i32 %16, %struct.alsa_data* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = load i32, i32* @LOG_ERROR, align 4
  %23 = load %struct.alsa_data*, %struct.alsa_data** %2, align 8
  %24 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @blog(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %10
  %28 = call i32 @pthread_attr_destroy(i32* %3)
  br label %29

29:                                               ; preds = %27, %9
  ret void
}

declare dso_local i64 @os_atomic_load_bool(i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.alsa_data*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
