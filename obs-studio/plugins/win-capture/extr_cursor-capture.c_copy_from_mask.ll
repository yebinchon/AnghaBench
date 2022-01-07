; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_copy_from_mask.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_copy_from_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.TYPE_5__*, i32*, i32*)* @copy_from_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @copy_from_mask(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64* @get_bitmap_data(i32 %18, %struct.TYPE_6__* %12)
  store i64* %19, i64** %9, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i64* null, i64** %4, align 8
  br label %91

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = mul nsw i64 %29, %31
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = mul nsw i64 %33, 4
  %35 = call i64* @bzalloc(i64 %34)
  store i64* %35, i64** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %37, %40
  store i64 %41, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %42

42:                                               ; preds = %77, %23
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %13, align 8
  %49 = call i64 @bit_to_alpha(i64* %47, i64 %48, i32 0)
  store i64 %49, i64* %14, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %13, align 8
  %54 = call i64 @bit_to_alpha(i64* %52, i64 %53, i32 1)
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %46
  %58 = load i64, i64* %15, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = load i64, i64* %13, align 8
  %61 = mul nsw i64 %60, 4
  %62 = add nsw i64 %61, 3
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  store i64 %58, i64* %63, align 8
  br label %76

64:                                               ; preds = %46
  %65 = load i64, i64* %15, align 8
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 -1, i32 -16777216
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %13, align 8
  %73 = mul nsw i64 %72, 4
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = bitcast i64* %74 to i32*
  store i32 %70, i32* %75, align 4
  br label %76

76:                                               ; preds = %64, %57
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %13, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %13, align 8
  br label %42

80:                                               ; preds = %42
  %81 = load i64*, i64** %9, align 8
  %82 = call i32 @bfree(i64* %81)
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i64*, i64** %8, align 8
  store i64* %90, i64** %4, align 8
  br label %91

91:                                               ; preds = %80, %22
  %92 = load i64*, i64** %4, align 8
  ret i64* %92
}

declare dso_local i64* @get_bitmap_data(i32, %struct.TYPE_6__*) #1

declare dso_local i64* @bzalloc(i64) #1

declare dso_local i64 @bit_to_alpha(i64*, i64, i32) #1

declare dso_local i32 @bfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
