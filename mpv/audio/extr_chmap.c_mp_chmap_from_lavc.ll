; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_from_lavc.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_from_lavc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap = type { i64, i32* }

@MP_NUM_CHANNELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_chmap_from_lavc(%struct.mp_chmap* %0, i64 %1) #0 {
  %3 = alloca %struct.mp_chmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mp_chmap* %0, %struct.mp_chmap** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.mp_chmap*, %struct.mp_chmap** %3, align 8
  %7 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 64
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = shl i64 1, %14
  %16 = and i64 %12, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %11
  %19 = load %struct.mp_chmap*, %struct.mp_chmap** %3, align 8
  %20 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MP_NUM_CHANNELS, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.mp_chmap*, %struct.mp_chmap** %3, align 8
  %26 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %44

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mp_chmap*, %struct.mp_chmap** %3, align 8
  %30 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.mp_chmap*, %struct.mp_chmap** %3, align 8
  %33 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %28, i32* %35, align 4
  %36 = load %struct.mp_chmap*, %struct.mp_chmap** %3, align 8
  %37 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %27, %11
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %8

44:                                               ; preds = %24, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
