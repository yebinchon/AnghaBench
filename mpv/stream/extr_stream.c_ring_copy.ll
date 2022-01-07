; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream.c_ring_copy.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream.c_ring_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream*, i8*, i32, i32)* @ring_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_copy(%struct.stream* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.stream*, %struct.stream** %6, align 8
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.stream*, %struct.stream** %6, align 8
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %96

28:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.stream*, %struct.stream** %6, align 8
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @MPMIN(i32 %29, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.stream*, %struct.stream** %6, align 8
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %39, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.stream*, %struct.stream** %6, align 8
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i32 @MPMIN(i32 %45, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.stream*, %struct.stream** %6, align 8
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @memcpy(i8* %53, i32* %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %44, %38, %28
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load %struct.stream*, %struct.stream** %6, align 8
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.stream*, %struct.stream** %6, align 8
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %81, i64 %87
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @memcpy(i8* %78, i32* %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %74, %71
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %27
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
