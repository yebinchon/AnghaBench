; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utilcirclebuf.h_circlebuf_pop_back.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utilcirclebuf.h_circlebuf_pop_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circlebuf = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.circlebuf*, i8*, i64)* @circlebuf_pop_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @circlebuf_pop_back(%struct.circlebuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.circlebuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.circlebuf* %0, %struct.circlebuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @circlebuf_peek_back(%struct.circlebuf* %7, i8* %8, i64 %9)
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %13 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %14, %11
  store i64 %15, i64* %13, align 8
  %16 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %17 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %22 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %24 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %49

25:                                               ; preds = %3
  %26 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %27 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %33 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %37 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = sub i64 %34, %39
  %41 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %42 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %49

43:                                               ; preds = %25
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %46 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %20, %43, %31
  ret void
}

declare dso_local i32 @circlebuf_peek_back(%struct.circlebuf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
