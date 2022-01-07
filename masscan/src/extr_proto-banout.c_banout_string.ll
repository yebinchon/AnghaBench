; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_string.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32, i8*, %struct.BannerOutput* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @banout_string(%struct.BannerOutput* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.BannerOutput*, align 8
  %5 = alloca i32, align 4
  store %struct.BannerOutput* %0, %struct.BannerOutput** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %8 = icmp ne %struct.BannerOutput* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %11 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 65535
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %13, %14
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi i1 [ false, %6 ], [ %15, %9 ]
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %20 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %19, i32 0, i32 2
  %21 = load %struct.BannerOutput*, %struct.BannerOutput** %20, align 8
  store %struct.BannerOutput* %21, %struct.BannerOutput** %4, align 8
  br label %6

22:                                               ; preds = %16
  %23 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %24 = icmp ne %struct.BannerOutput* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %27 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %3, align 8
  br label %30

29:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
