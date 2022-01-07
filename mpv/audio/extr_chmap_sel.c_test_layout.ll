; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_test_layout.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_test_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap_sel = type { i64 }
%struct.mp_chmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_chmap_sel*, %struct.mp_chmap*)* @test_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_layout(%struct.mp_chmap_sel* %0, %struct.mp_chmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_chmap_sel*, align 8
  %5 = alloca %struct.mp_chmap*, align 8
  store %struct.mp_chmap_sel* %0, %struct.mp_chmap_sel** %4, align 8
  store %struct.mp_chmap* %1, %struct.mp_chmap** %5, align 8
  %6 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %7 = call i32 @mp_chmap_is_valid(%struct.mp_chmap* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %12 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %17 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %18 = call i64 @test_waveext(%struct.mp_chmap_sel* %16, %struct.mp_chmap* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %22 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %23 = call i64 @test_speakers(%struct.mp_chmap_sel* %21, %struct.mp_chmap* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %27 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %28 = call i64 @test_maps(%struct.mp_chmap_sel* %26, %struct.mp_chmap* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %20, %15, %10
  %31 = phi i1 [ true, %20 ], [ true, %15 ], [ true, %10 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @mp_chmap_is_valid(%struct.mp_chmap*) #1

declare dso_local i64 @test_waveext(%struct.mp_chmap_sel*, %struct.mp_chmap*) #1

declare dso_local i64 @test_speakers(%struct.mp_chmap_sel*, %struct.mp_chmap*) #1

declare dso_local i64 @test_maps(%struct.mp_chmap_sel*, %struct.mp_chmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
