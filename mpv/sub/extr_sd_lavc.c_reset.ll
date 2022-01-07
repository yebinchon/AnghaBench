; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.sd_lavc_priv* }
%struct.sd_lavc_priv = type { i32, i32, i32* }

@MAX_QUEUE = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.sd_lavc_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %5 = load %struct.sd*, %struct.sd** %2, align 8
  %6 = getelementptr inbounds %struct.sd, %struct.sd* %5, i32 0, i32 0
  %7 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %6, align 8
  store %struct.sd_lavc_priv* %7, %struct.sd_lavc_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MAX_QUEUE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %3, align 8
  %14 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @clear_sub(i32* %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %3, align 8
  %25 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @avcodec_flush_buffers(i32 %26)
  %28 = load i32, i32* @MP_NOPTS_VALUE, align 4
  %29 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %3, align 8
  %30 = getelementptr inbounds %struct.sd_lavc_priv, %struct.sd_lavc_priv* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret void
}

declare dso_local i32 @clear_sub(i32*) #1

declare dso_local i32 @avcodec_flush_buffers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
