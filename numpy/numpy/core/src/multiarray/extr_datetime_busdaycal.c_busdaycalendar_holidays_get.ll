; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busdaycal.c_busdaycalendar_holidays_get.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busdaycal.c_busdaycalendar_holidays_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@NPY_DATETIME = common dso_local global i32 0, align 4
@NPY_FR_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @busdaycalendar_holidays_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @busdaycalendar_holidays_get(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %10, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @NPY_DATETIME, align 4
  %17 = load i32, i32* @NPY_FR_D, align 4
  %18 = call i32* @create_datetime_dtype_with_unit(i32 %16, i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %46

22:                                               ; preds = %1
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @PyArray_SimpleNewFromDescr(i32 1, i32* %6, i32* %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32* null, i32** %2, align 8
  br label %46

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @PyArray_DATA(i32* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i32 %34, i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %32, %29
  %45 = load i32*, i32** %4, align 8
  store i32* %45, i32** %2, align 8
  br label %46

46:                                               ; preds = %44, %28, %21
  %47 = load i32*, i32** %2, align 8
  ret i32* %47
}

declare dso_local i32* @create_datetime_dtype_with_unit(i32, i32) #1

declare dso_local i64 @PyArray_SimpleNewFromDescr(i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @PyArray_DATA(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
