; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_lseg_interpt_line.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_lseg_interpt_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*)* @lseg_interpt_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lseg_interpt_line(i32* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = call i32 @lseg_sl(%struct.TYPE_5__* %14)
  %16 = call i32 @line_construct(i32* %9, i32* %13, i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @line_interpt_line(i32* %8, i32* %9, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = call i32 @lseg_contain_point(%struct.TYPE_5__* %22, i32* %8)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %63

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i64 @point_eq_point(i32* %33, i32* %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %61

43:                                               ; preds = %29
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = call i64 @point_eq_point(i32* %47, i32* %8)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  br label %60

57:                                               ; preds = %43
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60, %36
  br label %62

62:                                               ; preds = %61, %26
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %25, %20
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @line_construct(i32*, i32*, i32) #1

declare dso_local i32 @lseg_sl(%struct.TYPE_5__*) #1

declare dso_local i32 @line_interpt_line(i32*, i32*, i32*) #1

declare dso_local i32 @lseg_contain_point(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @point_eq_point(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
