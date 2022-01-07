; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_expander_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_expander_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expander_data = type { %struct.expander_data*, %struct.expander_data**, %struct.expander_data**, %struct.expander_data** }

@MAX_AUDIO_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @expander_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expander_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.expander_data*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.expander_data*
  store %struct.expander_data* %6, %struct.expander_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load %struct.expander_data*, %struct.expander_data** %3, align 8
  %13 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %12, i32 0, i32 3
  %14 = load %struct.expander_data**, %struct.expander_data*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.expander_data*, %struct.expander_data** %14, i64 %16
  %18 = load %struct.expander_data*, %struct.expander_data** %17, align 8
  %19 = call i32 @bfree(%struct.expander_data* %18)
  %20 = load %struct.expander_data*, %struct.expander_data** %3, align 8
  %21 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %20, i32 0, i32 2
  %22 = load %struct.expander_data**, %struct.expander_data*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.expander_data*, %struct.expander_data** %22, i64 %24
  %26 = load %struct.expander_data*, %struct.expander_data** %25, align 8
  %27 = call i32 @bfree(%struct.expander_data* %26)
  %28 = load %struct.expander_data*, %struct.expander_data** %3, align 8
  %29 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %28, i32 0, i32 1
  %30 = load %struct.expander_data**, %struct.expander_data*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.expander_data*, %struct.expander_data** %30, i64 %32
  %34 = load %struct.expander_data*, %struct.expander_data** %33, align 8
  %35 = call i32 @bfree(%struct.expander_data* %34)
  br label %36

36:                                               ; preds = %11
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %7

39:                                               ; preds = %7
  %40 = load %struct.expander_data*, %struct.expander_data** %3, align 8
  %41 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %40, i32 0, i32 0
  %42 = load %struct.expander_data*, %struct.expander_data** %41, align 8
  %43 = call i32 @bfree(%struct.expander_data* %42)
  %44 = load %struct.expander_data*, %struct.expander_data** %3, align 8
  %45 = call i32 @bfree(%struct.expander_data* %44)
  ret void
}

declare dso_local i32 @bfree(%struct.expander_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
