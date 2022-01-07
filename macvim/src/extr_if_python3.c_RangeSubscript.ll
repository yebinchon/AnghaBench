; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_python3.c_RangeSubscript.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_python3.c_RangeSubscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @RangeSubscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @RangeSubscript(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @PyLong_Check(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @PyLong_AsLong(i32* %15)
  store i64 %16, i64* %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_4__*
  %19 = load i64, i64* %6, align 8
  %20 = call i32* @RangeItem(%struct.TYPE_4__* %18, i64 %19)
  store i32* %20, i32** %3, align 8
  br label %49

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @PySlice_Check(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = bitcast i32* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %30, %34
  %36 = add nsw i64 %35, 1
  %37 = call i64 @PySlice_GetIndicesEx(i32* %26, i64 %36, i32* %7, i32* %8, i32* %9, i32* %10)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %49

40:                                               ; preds = %25
  %41 = load i32*, i32** %4, align 8
  %42 = bitcast i32* %41 to %struct.TYPE_4__*
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32* @RangeSlice(%struct.TYPE_4__* %42, i32 %43, i32 %44)
  store i32* %45, i32** %3, align 8
  br label %49

46:                                               ; preds = %21
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @RAISE_INVALID_INDEX_TYPE(i32* %47)
  store i32* null, i32** %3, align 8
  br label %49

49:                                               ; preds = %46, %40, %39, %14
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i64 @PyLong_Check(i32*) #1

declare dso_local i64 @PyLong_AsLong(i32*) #1

declare dso_local i32* @RangeItem(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @PySlice_Check(i32*) #1

declare dso_local i64 @PySlice_GetIndicesEx(i32*, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @RangeSlice(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @RAISE_INVALID_INDEX_TYPE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
