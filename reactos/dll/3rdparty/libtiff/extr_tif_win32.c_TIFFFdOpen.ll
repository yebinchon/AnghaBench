; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_win32.c_TIFFFdOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_win32.c_TIFFFdOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@_tiffReadProc = common dso_local global i32 0, align 4
@_tiffWriteProc = common dso_local global i32 0, align 4
@_tiffSeekProc = common dso_local global i32 0, align 4
@_tiffCloseProc = common dso_local global i32 0, align 4
@_tiffSizeProc = common dso_local global i32 0, align 4
@_tiffDummyMapProc = common dso_local global i32 0, align 4
@_tiffMapProc = common dso_local global i32 0, align 4
@_tiffDummyUnmapProc = common dso_local global i32 0, align 4
@_tiffUnmapProc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @TIFFFdOpen(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %28, %3
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 117
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %10

31:                                               ; preds = %26, %10
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @_tiffReadProc, align 4
  %36 = load i32, i32* @_tiffWriteProc, align 4
  %37 = load i32, i32* @_tiffSeekProc, align 4
  %38 = load i32, i32* @_tiffCloseProc, align 4
  %39 = load i32, i32* @_tiffSizeProc, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @_tiffDummyMapProc, align 4
  br label %46

44:                                               ; preds = %31
  %45 = load i32, i32* @_tiffMapProc, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @_tiffDummyUnmapProc, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @_tiffUnmapProc, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call %struct.TYPE_4__* @TIFFClientOpen(i8* %32, i8* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %47, i32 %55)
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %7, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  ret %struct.TYPE_4__* %64
}

declare dso_local %struct.TYPE_4__* @TIFFClientOpen(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
