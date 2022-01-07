; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_free.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ra*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_free(%struct.ra** %0) #0 {
  %2 = alloca %struct.ra**, align 8
  store %struct.ra** %0, %struct.ra*** %2, align 8
  %3 = load %struct.ra**, %struct.ra*** %2, align 8
  %4 = load %struct.ra*, %struct.ra** %3, align 8
  %5 = icmp ne %struct.ra* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.ra**, %struct.ra*** %2, align 8
  %8 = load %struct.ra*, %struct.ra** %7, align 8
  %9 = getelementptr inbounds %struct.ra, %struct.ra* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.ra*)*, i32 (%struct.ra*)** %11, align 8
  %13 = load %struct.ra**, %struct.ra*** %2, align 8
  %14 = load %struct.ra*, %struct.ra** %13, align 8
  %15 = call i32 %12(%struct.ra* %14)
  br label %16

16:                                               ; preds = %6, %1
  %17 = load %struct.ra**, %struct.ra*** %2, align 8
  %18 = load %struct.ra*, %struct.ra** %17, align 8
  %19 = call i32 @talloc_free(%struct.ra* %18)
  %20 = load %struct.ra**, %struct.ra*** %2, align 8
  store %struct.ra* null, %struct.ra** %20, align 8
  ret void
}

declare dso_local i32 @talloc_free(%struct.ra*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
