; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_compare_seekpoint.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_compare_seekpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seekpoint = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_seekpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_seekpoint(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.seekpoint*, align 8
  %6 = alloca %struct.seekpoint*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.seekpoint*
  store %struct.seekpoint* %8, %struct.seekpoint** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.seekpoint*
  store %struct.seekpoint* %10, %struct.seekpoint** %6, align 8
  %11 = load %struct.seekpoint*, %struct.seekpoint** %5, align 8
  %12 = getelementptr inbounds %struct.seekpoint, %struct.seekpoint* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.seekpoint*, %struct.seekpoint** %6, align 8
  %15 = getelementptr inbounds %struct.seekpoint, %struct.seekpoint* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.seekpoint*, %struct.seekpoint** %5, align 8
  %21 = getelementptr inbounds %struct.seekpoint, %struct.seekpoint* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.seekpoint*, %struct.seekpoint** %6, align 8
  %24 = getelementptr inbounds %struct.seekpoint, %struct.seekpoint* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 -1, i32 1
  br label %29

29:                                               ; preds = %19, %18
  %30 = phi i32 [ 0, %18 ], [ %28, %19 ]
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
