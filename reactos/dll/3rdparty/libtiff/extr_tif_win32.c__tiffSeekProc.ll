; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_win32.c__tiffSeekProc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_win32.c__tiffSeekProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@FILE_BEGIN = common dso_local global i32 0, align 4
@FILE_CURRENT = common dso_local global i32 0, align 4
@FILE_END = common dso_local global i32 0, align 4
@INVALID_SET_FILE_POINTER = common dso_local global i64 0, align 8
@NO_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32)* @_tiffSeekProc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_tiffSeekProc(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i64 %9, i64* %10, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %18 [
    i32 128, label %12
    i32 130, label %14
    i32 129, label %16
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @FILE_BEGIN, align 4
  store i32 %13, i32* %8, align 4
  br label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @FILE_CURRENT, align 4
  store i32 %15, i32* %8, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @FILE_END, align 4
  store i32 %17, i32* %8, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @FILE_BEGIN, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %18, %16, %14, %12
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @SetFilePointer(i32 %21, i64 %23, i32* %24, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @INVALID_SET_FILE_POINTER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @NO_ERROR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %36, %32, %20
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  ret i64 %40
}

declare dso_local i64 @SetFilePointer(i32, i64, i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
