; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_release.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { %struct.BannerOutput* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @banout_release(%struct.BannerOutput* %0) #0 {
  %2 = alloca %struct.BannerOutput*, align 8
  %3 = alloca %struct.BannerOutput*, align 8
  store %struct.BannerOutput* %0, %struct.BannerOutput** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.BannerOutput*, %struct.BannerOutput** %2, align 8
  %6 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %5, i32 0, i32 0
  %7 = load %struct.BannerOutput*, %struct.BannerOutput** %6, align 8
  %8 = icmp ne %struct.BannerOutput* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load %struct.BannerOutput*, %struct.BannerOutput** %2, align 8
  %11 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %10, i32 0, i32 0
  %12 = load %struct.BannerOutput*, %struct.BannerOutput** %11, align 8
  %13 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %12, i32 0, i32 0
  %14 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  store %struct.BannerOutput* %14, %struct.BannerOutput** %3, align 8
  %15 = load %struct.BannerOutput*, %struct.BannerOutput** %2, align 8
  %16 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %15, i32 0, i32 0
  %17 = load %struct.BannerOutput*, %struct.BannerOutput** %16, align 8
  %18 = call i32 @free(%struct.BannerOutput* %17)
  %19 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %20 = load %struct.BannerOutput*, %struct.BannerOutput** %2, align 8
  %21 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %20, i32 0, i32 0
  store %struct.BannerOutput* %19, %struct.BannerOutput** %21, align 8
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.BannerOutput*, %struct.BannerOutput** %2, align 8
  %24 = call i32 @banout_init(%struct.BannerOutput* %23)
  ret void
}

declare dso_local i32 @free(%struct.BannerOutput*) #1

declare dso_local i32 @banout_init(%struct.BannerOutput*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
