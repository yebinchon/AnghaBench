; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_resize_runaverage_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_resize_runaverage_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expander_data = type { i64, i32* }

@MAX_AUDIO_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expander_data*, i64)* @resize_runaverage_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_runaverage_buffer(%struct.expander_data* %0, i64 %1) #0 {
  %3 = alloca %struct.expander_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.expander_data* %0, %struct.expander_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.expander_data*, %struct.expander_data** %3, align 8
  %8 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.expander_data*, %struct.expander_data** %3, align 8
  %15 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.expander_data*, %struct.expander_data** %3, align 8
  %22 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32 @brealloc(i32 %20, i32 %25)
  %27 = load %struct.expander_data*, %struct.expander_data** %3, align 8
  %28 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  br label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %9

36:                                               ; preds = %9
  ret void
}

declare dso_local i32 @brealloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
