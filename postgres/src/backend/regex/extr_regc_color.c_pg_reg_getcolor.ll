; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_pg_reg_getcolor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_pg_reg_getcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colormap = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@MAX_SIMPLE_CHR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_reg_getcolor(%struct.colormap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.colormap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  store %struct.colormap* %0, %struct.colormap** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @MAX_SIMPLE_CHR, align 8
  %14 = icmp sgt i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.colormap*, %struct.colormap** %4, align 8
  %18 = getelementptr inbounds %struct.colormap, %struct.colormap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %58, %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %25, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.colormap*, %struct.colormap** %4, align 8
  %32 = getelementptr inbounds %struct.colormap, %struct.colormap* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %11, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %9, align 4
  br label %58

44:                                               ; preds = %24
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %57

53:                                               ; preds = %44
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %6, align 4
  br label %59

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %42
  br label %20

59:                                               ; preds = %53, %20
  %60 = load %struct.colormap*, %struct.colormap** %4, align 8
  %61 = getelementptr inbounds %struct.colormap, %struct.colormap* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.colormap*, %struct.colormap** %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @cclass_column_index(%struct.colormap* %65, i64 %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.colormap*, %struct.colormap** %4, align 8
  %69 = getelementptr inbounds %struct.colormap, %struct.colormap* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.colormap*, %struct.colormap** %4, align 8
  %73 = getelementptr inbounds %struct.colormap, %struct.colormap* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %70, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %3, align 4
  br label %89

81:                                               ; preds = %59
  %82 = load %struct.colormap*, %struct.colormap** %4, align 8
  %83 = getelementptr inbounds %struct.colormap, %struct.colormap* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %81, %64
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cclass_column_index(%struct.colormap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
