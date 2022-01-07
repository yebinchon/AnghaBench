; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_XzIn.c_Xz_ReadIndex.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_XzIn.c_Xz_ReadIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32*)*, i32* (%struct.TYPE_6__*, i64)* }

@SZ_ERROR_UNSUPPORTED = common dso_local global i64 0, align 8
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, %struct.TYPE_6__*)* @Xz_ReadIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Xz_ReadIndex(i32* %0, i32* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, -2147483648
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* @SZ_ERROR_UNSUPPORTED, align 8
  store i64 %16, i64* %5, align 8
  br label %60

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @SZ_ERROR_UNSUPPORTED, align 8
  store i64 %25, i64* %5, align 8
  br label %60

26:                                               ; preds = %17
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32* (%struct.TYPE_6__*, i64)*, i32* (%struct.TYPE_6__*, i64)** %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32* %29(%struct.TYPE_6__* %30, i64 %31)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %36, i64* %5, align 8
  br label %60

37:                                               ; preds = %26
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @SZ_ERROR_UNSUPPORTED, align 8
  %42 = call i64 @LookInStream_Read2(i32* %38, i32* %39, i64 %40, i64 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @SZ_OK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = call i64 @Xz_ReadIndex2(i32* %47, i32* %48, i64 %49, %struct.TYPE_6__* %50)
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %46, %37
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 %55(%struct.TYPE_6__* %56, i32* %57)
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %52, %35, %24, %15
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local i64 @LookInStream_Read2(i32*, i32*, i64, i64) #1

declare dso_local i64 @Xz_ReadIndex2(i32*, i32*, i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
