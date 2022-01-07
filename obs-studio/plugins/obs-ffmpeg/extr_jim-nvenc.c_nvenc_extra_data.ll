; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nvenc_extra_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nvenc_extra_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvenc_data = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**, i64*)* @nvenc_extra_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvenc_extra_data(i8* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.nvenc_data*, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nvenc_data*
  store %struct.nvenc_data* %10, %struct.nvenc_data** %8, align 8
  %11 = load %struct.nvenc_data*, %struct.nvenc_data** %8, align 8
  %12 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

16:                                               ; preds = %3
  %17 = load %struct.nvenc_data*, %struct.nvenc_data** %8, align 8
  %18 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32**, i32*** %6, align 8
  store i32* %19, i32** %20, align 8
  %21 = load %struct.nvenc_data*, %struct.nvenc_data** %8, align 8
  %22 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  store i32 1, i32* %4, align 4
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
