; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_try_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_try_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coreaudio_data = type { i32, i64, i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"coreaudio: failed to find device uid: %s, waiting for connection\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"coreaudio: no device found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coreaudio_data*)* @coreaudio_try_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coreaudio_try_init(%struct.coreaudio_data* %0) #0 {
  %2 = alloca %struct.coreaudio_data*, align 8
  store %struct.coreaudio_data* %0, %struct.coreaudio_data** %2, align 8
  %3 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %4 = call i32 @coreaudio_init(%struct.coreaudio_data* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @LOG_INFO, align 4
  %8 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %9 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i32, i8*, ...) @blog(i32 %7, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %13 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %12, i32 0, i32 0
  store i32 2000, i32* %13, align 8
  %14 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %15 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @LOG_INFO, align 4
  %20 = call i32 (i32, i8*, ...) @blog(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %24

21:                                               ; preds = %6
  %22 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %23 = call i32 @coreaudio_begin_reconnect(%struct.coreaudio_data* %22)
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @coreaudio_init(%struct.coreaudio_data*) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @coreaudio_begin_reconnect(%struct.coreaudio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
