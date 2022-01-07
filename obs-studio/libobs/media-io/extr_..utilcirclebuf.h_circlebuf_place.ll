; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utilcirclebuf.h_circlebuf_place.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utilcirclebuf.h_circlebuf_place.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circlebuf = type { i64, i64, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.circlebuf*, i64, i8*, i64)* @circlebuf_place to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @circlebuf_place(%struct.circlebuf* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.circlebuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.circlebuf* %0, %struct.circlebuf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %8, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.circlebuf*, %struct.circlebuf** %5, align 8
  %18 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.circlebuf*, %struct.circlebuf** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @circlebuf_upsize(%struct.circlebuf* %22, i64 %23)
  br label %25

25:                                               ; preds = %21, %4
  %26 = load %struct.circlebuf*, %struct.circlebuf** %5, align 8
  %27 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.circlebuf*, %struct.circlebuf** %5, align 8
  %33 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.circlebuf*, %struct.circlebuf** %5, align 8
  %38 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %36, %25
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.circlebuf*, %struct.circlebuf** %5, align 8
  %48 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %42
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.circlebuf*, %struct.circlebuf** %5, align 8
  %54 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %52, %55
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %11, align 8
  %59 = sub i64 %57, %58
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %51
  %63 = load %struct.circlebuf*, %struct.circlebuf** %5, align 8
  %64 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr i8, i8* %65, i64 %66
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @memcpy(i8* %67, i8* %68, i64 %69)
  br label %71

71:                                               ; preds = %62, %51
  %72 = load %struct.circlebuf*, %struct.circlebuf** %5, align 8
  %73 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr i8, i8* %75, i64 %76
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @memcpy(i8* %74, i8* %77, i64 %78)
  br label %89

80:                                               ; preds = %42
  %81 = load %struct.circlebuf*, %struct.circlebuf** %5, align 8
  %82 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr i8, i8* %83, i64 %84
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @memcpy(i8* %85, i8* %86, i64 %87)
  br label %89

89:                                               ; preds = %80, %71
  ret void
}

declare dso_local i32 @circlebuf_upsize(%struct.circlebuf*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
