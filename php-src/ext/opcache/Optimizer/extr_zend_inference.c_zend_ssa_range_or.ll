; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_ssa_range_or.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_ssa_range_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, %struct.TYPE_3__*)* @zend_ssa_range_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_ssa_range_or(i64 %0, i64 %1, i64 %2, i64 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 8, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 4, i32 0
  %20 = or i32 %15, %19
  %21 = load i64, i64* %8, align 8
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 0
  %25 = or i32 %20, %24
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 2, i32 0
  %30 = or i32 %25, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  switch i32 %31, label %104 [
    i32 0, label %32
    i32 3, label %32
    i32 12, label %32
    i32 15, label %32
    i32 2, label %49
    i32 8, label %64
    i32 10, label %78
    i32 11, label %90
    i32 14, label %97
  ]

32:                                               ; preds = %5, %5, %5, %5
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i8* @minOR(i64 %33, i32 %35, i64 %36, i64 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i8* @maxOR(i64 %41, i64 %42, i64 %43, i64 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %104

49:                                               ; preds = %5
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* %8, align 8
  %54 = call i8* @minOR(i64 %50, i32 %52, i64 %53, i64 -1)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i8* @maxOR(i64 %57, i64 %58, i64 0, i64 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %104

64:                                               ; preds = %5
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i8* @minOR(i64 %65, i32 -1, i64 %66, i64 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i8* @maxOR(i64 0, i64 %71, i64 %72, i64 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %104

78:                                               ; preds = %5
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i8* @MIN(i64 %79, i64 %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i8* @maxOR(i64 0, i64 %84, i64 0, i64 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %104

90:                                               ; preds = %5
  %91 = load i64, i64* %8, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 -1, i32* %96, align 8
  br label %104

97:                                               ; preds = %5
  %98 = load i64, i64* %6, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 -1, i32* %103, align 8
  br label %104

104:                                              ; preds = %5, %97, %90, %78, %64, %49, %32
  ret void
}

declare dso_local i8* @minOR(i64, i32, i64, i64) #1

declare dso_local i8* @maxOR(i64, i64, i64, i64) #1

declare dso_local i8* @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
