; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_imagelist.c_imagelist_copy_images.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_imagelist.c_imagelist_copy_images.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@TILE_COUNT = common dso_local global i64 0, align 8
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32, i64, i64, i64)* @imagelist_copy_images to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imagelist_copy_images(%struct.TYPE_9__* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca %struct.TYPE_7__, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %61, %6
  %18 = load i64, i64* %16, align 8
  %19 = load i64, i64* @TILE_COUNT, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %16, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @imagelist_point_from_index(%struct.TYPE_9__* %22, i64 %25, %struct.TYPE_8__* %13)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %16, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @imagelist_point_from_index(%struct.TYPE_9__* %27, i64 %30, %struct.TYPE_8__* %14)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %16, align 8
  %41 = sub nsw i64 %39, %40
  %42 = call i32 @imagelist_height(i64 %41)
  %43 = mul nsw i32 %38, %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SRCCOPY, align 4
  %60 = call i32 @BitBlt(i32 %45, i32 %47, i32 %49, i32 %51, i32 %53, i32 %54, i32 %56, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %21
  %62 = load i64, i64* %16, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %16, align 8
  br label %17

64:                                               ; preds = %17
  ret void
}

declare dso_local i32 @imagelist_point_from_index(%struct.TYPE_9__*, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @imagelist_height(i64) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
