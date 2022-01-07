; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c_alsa_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c_alsa_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alsa_data = type { %struct.alsa_data*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alsa_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.alsa_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.alsa_data*
  store %struct.alsa_data* %5, %struct.alsa_data** %3, align 8
  %6 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %7 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %12 = call i32 @_alsa_close(%struct.alsa_data* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %15 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @os_event_destroy(i32 %16)
  %18 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %19 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %18, i32 0, i32 0
  %20 = load %struct.alsa_data*, %struct.alsa_data** %19, align 8
  %21 = call i32 @bfree(%struct.alsa_data* %20)
  %22 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %23 = call i32 @bfree(%struct.alsa_data* %22)
  ret void
}

declare dso_local i32 @_alsa_close(%struct.alsa_data*) #1

declare dso_local i32 @os_event_destroy(i32) #1

declare dso_local i32 @bfree(%struct.alsa_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
