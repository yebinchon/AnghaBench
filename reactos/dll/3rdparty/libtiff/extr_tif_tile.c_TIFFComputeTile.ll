; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_tile.c_TIFFComputeTile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_tile.c_TIFFComputeTile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i64, i64, i64 }

@PLANARCONFIG_SEPARATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TIFFComputeTile(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %11, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %14, align 8
  store i64 1, i64* %15, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %34, %5
  %36 = load i64, i64* %12, align 8
  %37 = icmp eq i64 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i64, i64* %13, align 8
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i64, i64* %14, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %14, align 8
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %133

60:                                               ; preds = %57
  %61 = load i64, i64* %13, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %133

63:                                               ; preds = %60
  %64 = load i64, i64* %14, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %133

66:                                               ; preds = %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i64 @TIFFhowmany_32(i64 %69, i64 %70)
  store i64 %71, i64* %16, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i64 @TIFFhowmany_32(i64 %74, i64 %75)
  store i64 %76, i64* %17, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %14, align 8
  %82 = call i64 @TIFFhowmany_32(i64 %80, i64 %81)
  store i64 %82, i64* %18, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PLANARCONFIG_SEPARATE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %66
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %17, align 8
  %91 = mul nsw i64 %89, %90
  %92 = load i64, i64* %18, align 8
  %93 = mul nsw i64 %91, %92
  %94 = load i64, i64* %10, align 8
  %95 = mul nsw i64 %93, %94
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* %17, align 8
  %98 = mul nsw i64 %96, %97
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %14, align 8
  %101 = sdiv i64 %99, %100
  %102 = mul nsw i64 %98, %101
  %103 = add nsw i64 %95, %102
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %13, align 8
  %107 = sdiv i64 %105, %106
  %108 = mul nsw i64 %104, %107
  %109 = add nsw i64 %103, %108
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %12, align 8
  %112 = sdiv i64 %110, %111
  %113 = add nsw i64 %109, %112
  store i64 %113, i64* %15, align 8
  br label %132

114:                                              ; preds = %66
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %17, align 8
  %117 = mul nsw i64 %115, %116
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %14, align 8
  %120 = sdiv i64 %118, %119
  %121 = mul nsw i64 %117, %120
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* %13, align 8
  %125 = sdiv i64 %123, %124
  %126 = mul nsw i64 %122, %125
  %127 = add nsw i64 %121, %126
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* %12, align 8
  %130 = sdiv i64 %128, %129
  %131 = add nsw i64 %127, %130
  store i64 %131, i64* %15, align 8
  br label %132

132:                                              ; preds = %114, %88
  br label %133

133:                                              ; preds = %132, %63, %60, %57
  %134 = load i64, i64* %15, align 8
  ret i64 %134
}

declare dso_local i64 @TIFFhowmany_32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
