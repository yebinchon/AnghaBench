; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_resize_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_resize_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xshm_data = type { i32, i32, i64 }

@GS_BGRA = common dso_local global i32 0, align 4
@GS_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xshm_data*)* @xshm_resize_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xshm_resize_texture(%struct.xshm_data* %0) #0 {
  %2 = alloca %struct.xshm_data*, align 8
  store %struct.xshm_data* %0, %struct.xshm_data** %2, align 8
  %3 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %4 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %9 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @gs_texture_destroy(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %14 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %17 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GS_BGRA, align 4
  %20 = load i32, i32* @GS_DYNAMIC, align 4
  %21 = call i64 @gs_texture_create(i32 %15, i32 %18, i32 %19, i32 1, i32* null, i32 %20)
  %22 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %23 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  ret void
}

declare dso_local i32 @gs_texture_destroy(i64) #1

declare dso_local i64 @gs_texture_create(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
