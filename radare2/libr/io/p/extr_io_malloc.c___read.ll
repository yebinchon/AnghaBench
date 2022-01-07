; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_malloc.c___read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_malloc.c___read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32*, i32)* @__read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__read(i32* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @memset(i32* %11, i32 255, i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %4
  store i32 -1, i32* %5, align 4
  br label %54

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = call i64 @_io_malloc_sz(%struct.TYPE_6__* %23)
  store i64 %24, i64* %10, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = call i64 @_io_malloc_off(%struct.TYPE_6__* %25)
  %27 = load i64, i64* %10, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %54

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = call i64 @_io_malloc_off(%struct.TYPE_6__* %31)
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i64, i64* %10, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = call i64 @_io_malloc_off(%struct.TYPE_6__* %40)
  %42 = sub nsw i64 %39, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %38, %30
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = call i64 @_io_malloc_buf(%struct.TYPE_6__* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = call i64 @_io_malloc_off(%struct.TYPE_6__* %48)
  %50 = add nsw i64 %47, %49
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @memcpy(i32* %45, i64 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %44, %29, %21
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @_io_malloc_sz(%struct.TYPE_6__*) #1

declare dso_local i64 @_io_malloc_off(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i64 @_io_malloc_buf(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
