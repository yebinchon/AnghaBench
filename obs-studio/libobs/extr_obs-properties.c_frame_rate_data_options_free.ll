; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_frame_rate_data_options_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_frame_rate_data_options_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_rate_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.frame_rate_option* }
%struct.frame_rate_option = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_rate_data*)* @frame_rate_data_options_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_rate_data_options_free(%struct.frame_rate_data* %0) #0 {
  %2 = alloca %struct.frame_rate_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.frame_rate_option*, align 8
  store %struct.frame_rate_data* %0, %struct.frame_rate_data** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.frame_rate_data*, %struct.frame_rate_data** %2, align 8
  %8 = getelementptr inbounds %struct.frame_rate_data, %struct.frame_rate_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %6, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %5
  %13 = load %struct.frame_rate_data*, %struct.frame_rate_data** %2, align 8
  %14 = getelementptr inbounds %struct.frame_rate_data, %struct.frame_rate_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.frame_rate_option*, %struct.frame_rate_option** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.frame_rate_option, %struct.frame_rate_option* %16, i64 %17
  store %struct.frame_rate_option* %18, %struct.frame_rate_option** %4, align 8
  %19 = load %struct.frame_rate_option*, %struct.frame_rate_option** %4, align 8
  %20 = getelementptr inbounds %struct.frame_rate_option, %struct.frame_rate_option* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bfree(i32 %21)
  %23 = load %struct.frame_rate_option*, %struct.frame_rate_option** %4, align 8
  %24 = getelementptr inbounds %struct.frame_rate_option, %struct.frame_rate_option* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bfree(i32 %25)
  br label %27

27:                                               ; preds = %12
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %5

30:                                               ; preds = %5
  %31 = load %struct.frame_rate_data*, %struct.frame_rate_data** %2, align 8
  %32 = getelementptr inbounds %struct.frame_rate_data, %struct.frame_rate_data* %31, i32 0, i32 0
  %33 = bitcast %struct.TYPE_2__* %32 to { i64, %struct.frame_rate_option* }*
  %34 = getelementptr inbounds { i64, %struct.frame_rate_option* }, { i64, %struct.frame_rate_option* }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds { i64, %struct.frame_rate_option* }, { i64, %struct.frame_rate_option* }* %33, i32 0, i32 1
  %37 = load %struct.frame_rate_option*, %struct.frame_rate_option** %36, align 8
  %38 = call i32 @da_resize(i64 %35, %struct.frame_rate_option* %37, i32 0)
  ret void
}

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @da_resize(i64, %struct.frame_rate_option*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
