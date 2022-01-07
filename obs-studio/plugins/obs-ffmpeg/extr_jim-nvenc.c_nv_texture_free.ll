; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nv_texture_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nv_texture_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i64)*, i32 (i32, i64)* }
%struct.nvenc_data = type { i32 }
%struct.nv_texture = type { %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }

@nv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvenc_data*, %struct.nv_texture*)* @nv_texture_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_texture_free(%struct.nvenc_data* %0, %struct.nv_texture* %1) #0 {
  %3 = alloca %struct.nvenc_data*, align 8
  %4 = alloca %struct.nv_texture*, align 8
  store %struct.nvenc_data* %0, %struct.nvenc_data** %3, align 8
  store %struct.nv_texture* %1, %struct.nv_texture** %4, align 8
  %5 = load %struct.nv_texture*, %struct.nv_texture** %4, align 8
  %6 = getelementptr inbounds %struct.nv_texture, %struct.nv_texture* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = load %struct.nv_texture*, %struct.nv_texture** %4, align 8
  %11 = getelementptr inbounds %struct.nv_texture, %struct.nv_texture* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32 (i32, i64)*, i32 (i32, i64)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nv, i32 0, i32 1), align 8
  %16 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %17 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nv_texture*, %struct.nv_texture** %4, align 8
  %20 = getelementptr inbounds %struct.nv_texture, %struct.nv_texture* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 %15(i32 %18, i64 %21)
  br label %23

23:                                               ; preds = %14, %9
  %24 = load i32 (i32, i64)*, i32 (i32, i64)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nv, i32 0, i32 0), align 8
  %25 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %26 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nv_texture*, %struct.nv_texture** %4, align 8
  %29 = getelementptr inbounds %struct.nv_texture, %struct.nv_texture* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 %24(i32 %27, i64 %30)
  %32 = load %struct.nv_texture*, %struct.nv_texture** %4, align 8
  %33 = getelementptr inbounds %struct.nv_texture, %struct.nv_texture* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %37, align 8
  %39 = load %struct.nv_texture*, %struct.nv_texture** %4, align 8
  %40 = getelementptr inbounds %struct.nv_texture, %struct.nv_texture* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 %38(%struct.TYPE_5__* %41)
  br label %43

43:                                               ; preds = %23, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
