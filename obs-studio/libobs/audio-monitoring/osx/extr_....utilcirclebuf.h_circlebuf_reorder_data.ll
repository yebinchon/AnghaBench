; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....utilcirclebuf.h_circlebuf_reorder_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....utilcirclebuf.h_circlebuf_reorder_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circlebuf = type { i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.circlebuf*, i64)* @circlebuf_reorder_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @circlebuf_reorder_data(%struct.circlebuf* %0, i64 %1) #0 {
  %3 = alloca %struct.circlebuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.circlebuf* %0, %struct.circlebuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %8 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %13 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %18 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %21 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %11, %2
  br label %57

25:                                               ; preds = %16
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %28 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  store i64 %30, i64* %5, align 8
  %31 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %32 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %36 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %44 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %47 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %45, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memmove(i32* %41, i32* %42, i32 %50)
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %54 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %52
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
