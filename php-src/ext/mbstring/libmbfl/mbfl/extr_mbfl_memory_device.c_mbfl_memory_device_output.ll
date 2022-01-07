; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_memory_device.c_mbfl_memory_device_output.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_memory_device.c_mbfl_memory_device_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i8* }

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_memory_device_output(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SIZE_MAX, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  %27 = icmp ugt i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %65

29:                                               ; preds = %18
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  store i64 %36, i64* %7, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @mbfl_realloc(i8* %39, i64 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %65

46:                                               ; preds = %29
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %46, %2
  %54 = load i32, i32* %4, align 4
  %55 = trunc i32 %54 to i8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 %55, i8* %63, align 1
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %53, %45, %28
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @mbfl_realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
