; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjexample.c_customFilter.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjexample.c_customFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @customFilter(i16* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_4__* %7 to i64*
  store i64 %1, i64* %14, align 4
  %15 = bitcast %struct.TYPE_4__* %8 to i64*
  store i64 %2, i64* %15, align 4
  store i16* %0, i16** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %37, %6
  %17 = load i32, i32* %13, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %19, %21
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = load i16*, i16** %9, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  %31 = sub nsw i32 0, %30
  %32 = trunc i32 %31 to i16
  %33 = load i16*, i16** %9, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %33, i64 %35
  store i16 %32, i16* %36, align 2
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %16

40:                                               ; preds = %16
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
