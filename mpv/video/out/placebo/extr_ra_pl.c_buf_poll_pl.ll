; ModuleID = '/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_buf_poll_pl.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_buf_poll_pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra*, %struct.ra_buf*)* @buf_poll_pl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_poll_pl(%struct.ra* %0, %struct.ra_buf* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_buf*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.ra_buf* %1, %struct.ra_buf** %4, align 8
  %5 = load %struct.ra*, %struct.ra** %3, align 8
  %6 = call i32 @get_gpu(%struct.ra* %5)
  %7 = load %struct.ra_buf*, %struct.ra_buf** %4, align 8
  %8 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pl_buf_poll(i32 %6, i32 %9, i32 0)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i32 @pl_buf_poll(i32, i32, i32) #1

declare dso_local i32 @get_gpu(%struct.ra*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
