; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, %struct.TYPE_2__*, %struct.sd_ass_priv* }
%struct.TYPE_2__ = type { i64 }
%struct.sd_ass_priv = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.sd_ass_priv*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load %struct.sd*, %struct.sd** %2, align 8
  %5 = getelementptr inbounds %struct.sd, %struct.sd* %4, i32 0, i32 2
  %6 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  store %struct.sd_ass_priv* %6, %struct.sd_ass_priv** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %2, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %3, align 8
  %15 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13, %1
  %19 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %3, align 8
  %20 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ass_flush_events(i32 %21)
  %23 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %3, align 8
  %24 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.sd*, %struct.sd** %2, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %18, %13
  %28 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %3, align 8
  %29 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %3, align 8
  %34 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @lavc_conv_reset(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @ass_flush_events(i32) #1

declare dso_local i32 @lavc_conv_reset(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
