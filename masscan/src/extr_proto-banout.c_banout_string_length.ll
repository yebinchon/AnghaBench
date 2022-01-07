; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_string_length.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_string_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32, i32, %struct.BannerOutput* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @banout_string_length(%struct.BannerOutput* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.BannerOutput*, align 8
  %5 = alloca i32, align 4
  store %struct.BannerOutput* %0, %struct.BannerOutput** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %8 = icmp ne %struct.BannerOutput* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %11 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %12, %13
  br label %15

15:                                               ; preds = %9, %6
  %16 = phi i1 [ false, %6 ], [ %14, %9 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %19 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %18, i32 0, i32 2
  %20 = load %struct.BannerOutput*, %struct.BannerOutput** %19, align 8
  store %struct.BannerOutput* %20, %struct.BannerOutput** %4, align 8
  br label %6

21:                                               ; preds = %15
  %22 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %23 = icmp ne %struct.BannerOutput* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %26 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
