; ModuleID = '/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_find_parent.c'
source_filename = "/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_find_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ta_header = type { i64, %struct.TYPE_2__*, %struct.ta_header* }
%struct.TYPE_2__ = type { i32 }

@CHILDREN_SENTINEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ta_find_parent(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ta_header*, align 8
  %5 = alloca %struct.ta_header*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.ta_header* @get_header(i8* %6)
  store %struct.ta_header* %7, %struct.ta_header** %4, align 8
  %8 = load %struct.ta_header*, %struct.ta_header** %4, align 8
  %9 = icmp ne %struct.ta_header* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ta_header*, %struct.ta_header** %4, align 8
  %12 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %11, i32 0, i32 2
  %13 = load %struct.ta_header*, %struct.ta_header** %12, align 8
  %14 = icmp ne %struct.ta_header* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i8* null, i8** %2, align 8
  br label %43

16:                                               ; preds = %10
  %17 = load %struct.ta_header*, %struct.ta_header** %4, align 8
  %18 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %17, i32 0, i32 2
  %19 = load %struct.ta_header*, %struct.ta_header** %18, align 8
  store %struct.ta_header* %19, %struct.ta_header** %5, align 8
  br label %20

20:                                               ; preds = %38, %16
  %21 = load %struct.ta_header*, %struct.ta_header** %5, align 8
  %22 = load %struct.ta_header*, %struct.ta_header** %4, align 8
  %23 = icmp ne %struct.ta_header* %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load %struct.ta_header*, %struct.ta_header** %5, align 8
  %26 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHILDREN_SENTINEL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.ta_header*, %struct.ta_header** %5, align 8
  %32 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @PTR_FROM_HEADER(i32 %35)
  store i8* %36, i8** %2, align 8
  br label %43

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.ta_header*, %struct.ta_header** %5, align 8
  %40 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %39, i32 0, i32 2
  %41 = load %struct.ta_header*, %struct.ta_header** %40, align 8
  store %struct.ta_header* %41, %struct.ta_header** %5, align 8
  br label %20

42:                                               ; preds = %20
  store i8* null, i8** %2, align 8
  br label %43

43:                                               ; preds = %42, %30, %15
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

declare dso_local %struct.ta_header* @get_header(i8*) #1

declare dso_local i8* @PTR_FROM_HEADER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
