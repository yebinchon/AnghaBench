; ModuleID = '/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_get_gpu.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_get_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl_gpu = type { i32 }
%struct.ra = type { %struct.ra_pl* }
%struct.ra_pl = type { %struct.pl_gpu* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pl_gpu* (%struct.ra*)* @get_gpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pl_gpu* @get_gpu(%struct.ra* %0) #0 {
  %2 = alloca %struct.ra*, align 8
  %3 = alloca %struct.ra_pl*, align 8
  store %struct.ra* %0, %struct.ra** %2, align 8
  %4 = load %struct.ra*, %struct.ra** %2, align 8
  %5 = getelementptr inbounds %struct.ra, %struct.ra* %4, i32 0, i32 0
  %6 = load %struct.ra_pl*, %struct.ra_pl** %5, align 8
  store %struct.ra_pl* %6, %struct.ra_pl** %3, align 8
  %7 = load %struct.ra_pl*, %struct.ra_pl** %3, align 8
  %8 = getelementptr inbounds %struct.ra_pl, %struct.ra_pl* %7, i32 0, i32 0
  %9 = load %struct.pl_gpu*, %struct.pl_gpu** %8, align 8
  ret %struct.pl_gpu* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
