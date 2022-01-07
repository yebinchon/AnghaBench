; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.sd_ass_priv* }
%struct.sd_ass_priv = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.sd_ass_priv*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load %struct.sd*, %struct.sd** %2, align 8
  %5 = getelementptr inbounds %struct.sd, %struct.sd* %4, i32 0, i32 0
  %6 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  store %struct.sd_ass_priv* %6, %struct.sd_ass_priv** %3, align 8
  %7 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %3, align 8
  %8 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %3, align 8
  %13 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @lavc_conv_uninit(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %3, align 8
  %18 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ass_free_track(i32 %19)
  %21 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %3, align 8
  %22 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ass_free_track(i32 %23)
  %25 = load %struct.sd*, %struct.sd** %2, align 8
  %26 = call i32 @enable_output(%struct.sd* %25, i32 0)
  %27 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %3, align 8
  %28 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ass_library_done(i32 %29)
  ret void
}

declare dso_local i32 @lavc_conv_uninit(i64) #1

declare dso_local i32 @ass_free_track(i32) #1

declare dso_local i32 @enable_output(%struct.sd*, i32) #1

declare dso_local i32 @ass_library_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
