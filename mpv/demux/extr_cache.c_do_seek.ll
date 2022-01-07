; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_cache.c_do_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_cache.c_do_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_cache = type { i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to seek in cache file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demux_cache*, i64)* @do_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_seek(%struct.demux_cache* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.demux_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.demux_cache* %0, %struct.demux_cache** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.demux_cache*, %struct.demux_cache** %4, align 8
  %8 = getelementptr inbounds %struct.demux_cache, %struct.demux_cache* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.demux_cache*, %struct.demux_cache** %4, align 8
  %15 = getelementptr inbounds %struct.demux_cache, %struct.demux_cache* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* @SEEK_SET, align 4
  %19 = call i64 @lseek(i32 %16, i64 %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.demux_cache*, %struct.demux_cache** %4, align 8
  %24 = call i32 @MP_ERR(%struct.demux_cache* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.demux_cache*, %struct.demux_cache** %4, align 8
  %26 = getelementptr inbounds %struct.demux_cache, %struct.demux_cache* %25, i32 0, i32 0
  store i64 -1, i64* %26, align 8
  br label %31

27:                                               ; preds = %13
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.demux_cache*, %struct.demux_cache** %4, align 8
  %30 = getelementptr inbounds %struct.demux_cache, %struct.demux_cache* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.demux_cache*, %struct.demux_cache** %4, align 8
  %33 = getelementptr inbounds %struct.demux_cache, %struct.demux_cache* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @MP_ERR(%struct.demux_cache*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
