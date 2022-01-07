; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_stipple_polygon_span.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_span.c_stipple_polygon_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i32, i32, i64*)* @stipple_polygon_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stipple_polygon_span(%struct.TYPE_3__* %0, i64 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  store i64 2147483648, i64* %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = srem i32 %18, 32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i32, i32* %8, align 4
  %25 = srem i32 %24, 32
  %26 = sext i32 %25 to i64
  %27 = lshr i64 %23, %26
  store i64 %27, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %28

28:                                               ; preds = %48, %5
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = and i64 %33, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i64, i64* %12, align 8
  %43 = lshr i64 %42, 1
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i64 2147483648, i64* %12, align 8
  br label %47

47:                                               ; preds = %46, %41
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %11, align 8
  br label %28

51:                                               ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
