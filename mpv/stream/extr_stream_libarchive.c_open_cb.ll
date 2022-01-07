; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_libarchive.c_open_cb.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_libarchive.c_open_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.mp_archive_volume = type { i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@STREAM_READ = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*)* @open_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_cb(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mp_archive_volume*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.mp_archive_volume*
  store %struct.mp_archive_volume* %8, %struct.mp_archive_volume** %6, align 8
  %9 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %6, align 8
  %10 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %6, align 8
  %12 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %2
  %16 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %6, align 8
  %17 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @STREAM_READ, align 4
  %20 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %6, align 8
  %21 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %6, align 8
  %28 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @stream_create(i32 %18, i32 %19, i32 %26, i32 %33)
  %35 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %6, align 8
  %36 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %6, align 8
  %38 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %15
  %42 = load i32, i32* @ARCHIVE_OK, align 4
  br label %45

43:                                               ; preds = %15
  %44 = load i32, i32* @ARCHIVE_FATAL, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %3, align 4
  br label %59

47:                                               ; preds = %2
  %48 = load %struct.mp_archive_volume*, %struct.mp_archive_volume** %6, align 8
  %49 = getelementptr inbounds %struct.mp_archive_volume, %struct.mp_archive_volume* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @stream_seek(i64 %50, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @ARCHIVE_OK, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @ARCHIVE_FATAL, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %45
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @stream_create(i32, i32, i32, i32) #1

declare dso_local i64 @stream_seek(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
