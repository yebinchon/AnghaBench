; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_callback_get.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_callback_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 (i8*, i32, i32)*, i8*, i32 }

@MAX_BUF_LEN = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @callback_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callback_get(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %19, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @MAX_BUF_LEN, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i64 %20(i8* %23, i32 %24, i32 %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %15
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %15
  %41 = load i32, i32* @EOF, align 4
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %4, align 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load i8, i8* %4, align 1
  %57 = zext i8 %56 to i32
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %43, %40
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
