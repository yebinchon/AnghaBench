; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_init_bitstreams.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_init_bitstreams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvenc_data = type { i64, i32 }
%struct.nv_bitstream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvenc_data*)* @init_bitstreams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_bitstreams(%struct.nvenc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvenc_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nv_bitstream, align 4
  store %struct.nvenc_data* %0, %struct.nvenc_data** %3, align 8
  %6 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %7 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %10 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @da_reserve(i32 %8, i64 %11)
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %16 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %21 = call i32 @nv_bitstream_init(%struct.nvenc_data* %20, %struct.nv_bitstream* %5)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %33

24:                                               ; preds = %19
  %25 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %26 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @da_push_back(i32 %27, %struct.nv_bitstream* %5)
  br label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %13

32:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @da_reserve(i32, i64) #1

declare dso_local i32 @nv_bitstream_init(%struct.nvenc_data*, %struct.nv_bitstream*) #1

declare dso_local i32 @da_push_back(i32, %struct.nv_bitstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
