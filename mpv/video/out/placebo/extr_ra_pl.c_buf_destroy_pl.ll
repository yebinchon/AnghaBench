; ModuleID = '/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_buf_destroy_pl.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_buf_destroy_pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_buf = type { i32 }
%struct.pl_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_buf*)* @buf_destroy_pl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_destroy_pl(%struct.ra* %0, %struct.ra_buf* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_buf*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.ra_buf* %1, %struct.ra_buf** %4, align 8
  %5 = load %struct.ra_buf*, %struct.ra_buf** %4, align 8
  %6 = icmp ne %struct.ra_buf* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %17

8:                                                ; preds = %2
  %9 = load %struct.ra*, %struct.ra** %3, align 8
  %10 = call i32 @get_gpu(%struct.ra* %9)
  %11 = load %struct.ra_buf*, %struct.ra_buf** %4, align 8
  %12 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.pl_buf**
  %14 = call i32 @pl_buf_destroy(i32 %10, %struct.pl_buf** %13)
  %15 = load %struct.ra_buf*, %struct.ra_buf** %4, align 8
  %16 = call i32 @talloc_free(%struct.ra_buf* %15)
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @pl_buf_destroy(i32, %struct.pl_buf**) #1

declare dso_local i32 @get_gpu(%struct.ra*) #1

declare dso_local i32 @talloc_free(%struct.ra_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
