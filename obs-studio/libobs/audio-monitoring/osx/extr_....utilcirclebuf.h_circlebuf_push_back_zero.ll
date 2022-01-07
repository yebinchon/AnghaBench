; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....utilcirclebuf.h_circlebuf_push_back_zero.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....utilcirclebuf.h_circlebuf_push_back_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circlebuf = type { i64, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.circlebuf*, i64)* @circlebuf_push_back_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @circlebuf_push_back_zero(%struct.circlebuf* %0, i64 %1) #0 {
  %3 = alloca %struct.circlebuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.circlebuf* %0, %struct.circlebuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %9 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %15 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %19 = call i32 @circlebuf_ensure_capacity(%struct.circlebuf* %18)
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %22 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %2
  %26 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %27 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %30 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %28, %31
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %40 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %43 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @memset(i32* %45, i32 0, i64 %46)
  br label %48

48:                                               ; preds = %38, %25
  %49 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %50 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @memset(i32* %51, i32 0, i64 %52)
  %54 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %55 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %5, align 8
  br label %69

59:                                               ; preds = %2
  %60 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %61 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %64 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @memset(i32* %66, i32 0, i64 %67)
  br label %69

69:                                               ; preds = %59, %48
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %72 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  ret void
}

declare dso_local i32 @circlebuf_ensure_capacity(%struct.circlebuf*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
