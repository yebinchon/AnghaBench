; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_force_fallback.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_force_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MSGL_WARN = common dso_local global i32 0, align 4
@MSGL_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Falling back to software decoding.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @force_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @force_fallback(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %5 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %6 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %9 = call i32 @uninit_avctx(%struct.mp_filter* %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @MSGL_WARN, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @MSGL_V, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %4, align 4
  %20 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %21 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @mp_msg(i32 %22, i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %26 = call i32 @init_avctx(%struct.mp_filter* %25)
  ret void
}

declare dso_local i32 @uninit_avctx(%struct.mp_filter*) #1

declare dso_local i32 @mp_msg(i32, i32, i8*) #1

declare dso_local i32 @init_avctx(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
