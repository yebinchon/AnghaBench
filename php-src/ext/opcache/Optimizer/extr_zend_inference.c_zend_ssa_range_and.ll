; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_ssa_range_and.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_ssa_range_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, %struct.TYPE_3__*)* @zend_ssa_range_and to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_ssa_range_and(i64 %0, i64 %1, i64 %2, i64 %3, %struct.TYPE_3__* %4) #0 {
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
  switch i32 %31, label %100 [
    i32 0, label %32
    i32 3, label %32
    i32 12, label %32
    i32 15, label %32
    i32 2, label %48
    i32 8, label %55
    i32 10, label %62
    i32 11, label %73
    i32 14, label %87
  ]

32:                                               ; preds = %5, %5, %5, %5
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i8* @minAND(i64 %33, i64 %34, i64 %35, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i8* @maxAND(i64 %41, i64 %42, i64 %43, i64 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %100

48:                                               ; preds = %5
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i8* null, i8** %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %100

55:                                               ; preds = %5
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i8* null, i8** %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %100

62:                                               ; preds = %5
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i8* @minAND(i64 %63, i64 -1, i64 %64, i32 -1)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i8* @MAX(i64 %68, i64 %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %100

73:                                               ; preds = %5
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i8* @minAND(i64 %74, i64 -1, i64 %75, i32 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i8* @maxAND(i64 0, i64 %81, i64 %82, i64 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %100

87:                                               ; preds = %5
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i8* @minAND(i64 %88, i64 %89, i64 %90, i32 -1)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i8* @maxAND(i64 %94, i64 %95, i64 0, i64 %96)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %5, %87, %73, %62, %55, %48, %32
  ret void
}

declare dso_local i8* @minAND(i64, i64, i64, i32) #1

declare dso_local i8* @maxAND(i64, i64, i64, i64) #1

declare dso_local i8* @MAX(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
