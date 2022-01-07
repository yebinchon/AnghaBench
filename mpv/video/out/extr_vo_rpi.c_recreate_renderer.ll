; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_recreate_renderer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_recreate_renderer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"Recreating renderer after display change.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Recreation failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @recreate_renderer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recreate_renderer(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %3 = load %struct.vo*, %struct.vo** %2, align 8
  %4 = call i32 @MP_WARN(%struct.vo* %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.vo*, %struct.vo** %2, align 8
  %6 = call i32 @destroy_dispmanx(%struct.vo* %5)
  %7 = load %struct.vo*, %struct.vo** %2, align 8
  %8 = call i32 @recreate_dispmanx(%struct.vo* %7)
  %9 = load %struct.vo*, %struct.vo** %2, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.vo*, %struct.vo** %2, align 8
  %15 = load %struct.vo*, %struct.vo** %2, align 8
  %16 = getelementptr inbounds %struct.vo, %struct.vo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @reconfig(%struct.vo* %14, i64 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.vo*, %struct.vo** %2, align 8
  %22 = call i32 @MP_FATAL(%struct.vo* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %13
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @MP_WARN(%struct.vo*, i8*) #1

declare dso_local i32 @destroy_dispmanx(%struct.vo*) #1

declare dso_local i32 @recreate_dispmanx(%struct.vo*) #1

declare dso_local i64 @reconfig(%struct.vo*, i64) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
