; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_utilcirclebuf.h_circlebuf_peek_back.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_utilcirclebuf.h_circlebuf_peek_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circlebuf = type { i64, i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.circlebuf*, i8*, i64)* @circlebuf_peek_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @circlebuf_peek_back(%struct.circlebuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.circlebuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.circlebuf* %0, %struct.circlebuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %12 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ule i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %79

19:                                               ; preds = %3
  %20 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %21 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %26 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  br label %32

28:                                               ; preds = %19
  %29 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %30 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i64 [ %27, %24 ], [ %31, %28 ]
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %8, align 8
  %41 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %42 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %9, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %47, %48
  %50 = getelementptr i8, i8* %46, i64 %49
  %51 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %52 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @memcpy(i8* %50, i8* %53, i64 %54)
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %58 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr i8, i8* %59, i64 %60
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @memcpy(i8* %56, i8* %61, i64 %62)
  br label %78

64:                                               ; preds = %32
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %67 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %70 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr i8, i8* %68, i64 %71
  %73 = load i64, i64* %6, align 8
  %74 = sub i64 0, %73
  %75 = getelementptr i8, i8* %72, i64 %74
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @memcpy(i8* %65, i8* %75, i64 %76)
  br label %78

78:                                               ; preds = %64, %37
  br label %79

79:                                               ; preds = %78, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
