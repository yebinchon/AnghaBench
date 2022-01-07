; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_libarchive.c_seek_cb.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_libarchive.c_seek_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.mp_archive_volume = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i32, i32)* @seek_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek_cb(%struct.archive* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_archive_volume*, align 8
  %11 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.mp_archive_volume*
  store %struct.mp_archive_volume* %13, %struct.mp_archive_volume** %10, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %51 [
    i32 128, label %15
    i32 130, label %19
    i32 129, label %37
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %10, align 8
  %18 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %52

19:                                               ; preds = %4
  %20 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %10, align 8
  %21 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %10, align 8
  %26 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @stream_tell(i32 %27)
  %29 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %10, align 8
  %30 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %19
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %10, align 8
  %34 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %52

37:                                               ; preds = %4
  %38 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %10, align 8
  %39 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @stream_get_size(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %56

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %10, align 8
  %50 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %52

51:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %56

52:                                               ; preds = %45, %31, %15
  %53 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %10, align 8
  %54 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %51, %44
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @stream_tell(i32) #1

declare dso_local i32 @stream_get_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
