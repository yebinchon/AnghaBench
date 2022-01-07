; ModuleID = '/home/carl/AnghaBench/mpv/ta/extr_ta.c_get_children_size.c'
source_filename = "/home/carl/AnghaBench/mpv/ta/extr_ta.c_get_children_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ta_header = type { i64, %struct.ta_header*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ta_header }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ta_header*)* @get_children_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_children_size(%struct.ta_header* %0) #0 {
  %2 = alloca %struct.ta_header*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ta_header*, align 8
  store %struct.ta_header* %0, %struct.ta_header** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %6 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %11 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %13, i32 0, i32 1
  %15 = load %struct.ta_header*, %struct.ta_header** %14, align 8
  store %struct.ta_header* %15, %struct.ta_header** %4, align 8
  br label %16

16:                                               ; preds = %32, %9
  %17 = load %struct.ta_header*, %struct.ta_header** %4, align 8
  %18 = load %struct.ta_header*, %struct.ta_header** %2, align 8
  %19 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = icmp ne %struct.ta_header* %17, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.ta_header*, %struct.ta_header** %4, align 8
  %25 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ta_header*, %struct.ta_header** %4, align 8
  %28 = call i64 @get_children_size(%struct.ta_header* %27)
  %29 = add i64 %26, %28
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %23
  %33 = load %struct.ta_header*, %struct.ta_header** %4, align 8
  %34 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %33, i32 0, i32 1
  %35 = load %struct.ta_header*, %struct.ta_header** %34, align 8
  store %struct.ta_header* %35, %struct.ta_header** %4, align 8
  br label %16

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
