; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_malloc.c___lseek.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_malloc.c___lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_6__*, i64, i32)* @__lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__lseek(i32* %0, %struct.TYPE_6__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %4
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %5, align 8
  br label %60

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = call i64 @_io_malloc_sz(%struct.TYPE_6__* %23)
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %55 [
    i32 128, label %26
    i32 130, label %36
    i32 129, label %52
  ]

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %11, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  store i64 %35, i64* %10, align 8
  br label %55

36:                                               ; preds = %22
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = call i64 @_io_malloc_off(%struct.TYPE_6__* %37)
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* %11, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = call i64 @_io_malloc_off(%struct.TYPE_6__* %44)
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %45, %46
  br label %50

48:                                               ; preds = %36
  %49 = load i64, i64* %11, align 8
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi i64 [ %47, %43 ], [ %49, %48 ]
  store i64 %51, i64* %10, align 8
  br label %55

52:                                               ; preds = %22
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = call i64 @_io_malloc_sz(%struct.TYPE_6__* %53)
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %22, %52, %50, %34
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @_io_malloc_set_off(%struct.TYPE_6__* %56, i64 %57)
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %55, %20
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local i64 @_io_malloc_sz(%struct.TYPE_6__*) #1

declare dso_local i64 @_io_malloc_off(%struct.TYPE_6__*) #1

declare dso_local i32 @_io_malloc_set_off(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
