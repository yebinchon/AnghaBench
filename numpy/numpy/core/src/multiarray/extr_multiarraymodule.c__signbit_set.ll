; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c__signbit_set.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c__signbit_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8 }

@_signbit_set.bitmask = internal global i8 -128, align 1
@NPY_LITTLE = common dso_local global i8 0, align 1
@NPY_NATIVE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @_signbit_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_signbit_set(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.TYPE_2__* @PyArray_DESCR(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call %struct.TYPE_2__* @PyArray_DESCR(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i8, i8* %12, align 4
  store i8 %13, i8* %4, align 1
  %14 = load i32*, i32** %2, align 8
  %15 = call i8* @PyArray_DATA(i32* %14)
  store i8* %15, i8** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load i8, i8* %4, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @NPY_LITTLE, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  %25 = load i8, i8* %4, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @NPY_NATIVE, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i8, i8* @NPY_LITTLE, align 1
  %32 = call i64 @PyArray_ISNBO(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30, %18
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i8*, i8** %3, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %34, %30, %24, %1
  %41 = load i8*, i8** %3, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @_signbit_set.bitmask, align 1
  %45 = sext i8 %44 to i32
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local %struct.TYPE_2__* @PyArray_DESCR(i32*) #1

declare dso_local i8* @PyArray_DATA(i32*) #1

declare dso_local i64 @PyArray_ISNBO(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
