; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utilcirclebuf.h_circlebuf_ensure_capacity.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utilcirclebuf.h_circlebuf_ensure_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circlebuf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.circlebuf*)* @circlebuf_ensure_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @circlebuf_ensure_capacity(%struct.circlebuf* %0) #0 {
  %2 = alloca %struct.circlebuf*, align 8
  %3 = alloca i64, align 8
  store %struct.circlebuf* %0, %struct.circlebuf** %2, align 8
  %4 = load %struct.circlebuf*, %struct.circlebuf** %2, align 8
  %5 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.circlebuf*, %struct.circlebuf** %2, align 8
  %8 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp sle i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.circlebuf*, %struct.circlebuf** %2, align 8
  %14 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %3, align 8
  %18 = load %struct.circlebuf*, %struct.circlebuf** %2, align 8
  %19 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %3, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load %struct.circlebuf*, %struct.circlebuf** %2, align 8
  %26 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %24, %12
  %30 = load %struct.circlebuf*, %struct.circlebuf** %2, align 8
  %31 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @brealloc(i32 %32, i64 %33)
  %35 = load %struct.circlebuf*, %struct.circlebuf** %2, align 8
  %36 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.circlebuf*, %struct.circlebuf** %2, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @circlebuf_reorder_data(%struct.circlebuf* %37, i64 %38)
  %40 = load i64, i64* %3, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.circlebuf*, %struct.circlebuf** %2, align 8
  %43 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %29, %11
  ret void
}

declare dso_local i32 @brealloc(i32, i64) #1

declare dso_local i32 @circlebuf_reorder_data(%struct.circlebuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
