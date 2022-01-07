; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_subcolor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_subcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colormap = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@MAX_SIMPLE_CHR = common dso_local global i64 0, align 8
@CHR_MIN = common dso_local global i64 0, align 8
@COLORLESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.colormap*, i64)* @subcolor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @subcolor(%struct.colormap* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.colormap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.colormap* %0, %struct.colormap** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @MAX_SIMPLE_CHR, align 8
  %10 = icmp sle i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.colormap*, %struct.colormap** %4, align 8
  %14 = getelementptr inbounds %struct.colormap, %struct.colormap* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @CHR_MIN, align 8
  %18 = sub nsw i64 %16, %17
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.colormap*, %struct.colormap** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @newsub(%struct.colormap* %21, i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = call i64 (...) @CISERR()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* @COLORLESS, align 8
  store i64 %27, i64* %3, align 8
  br label %82

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @COLORLESS, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %3, align 8
  br label %82

39:                                               ; preds = %28
  %40 = load %struct.colormap*, %struct.colormap** %4, align 8
  %41 = getelementptr inbounds %struct.colormap, %struct.colormap* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.colormap*, %struct.colormap** %4, align 8
  %49 = getelementptr inbounds %struct.colormap, %struct.colormap* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %39
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.colormap*, %struct.colormap** %4, align 8
  %59 = getelementptr inbounds %struct.colormap, %struct.colormap* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 %57, i64* %63, align 8
  br label %64

64:                                               ; preds = %56, %39
  %65 = load %struct.colormap*, %struct.colormap** %4, align 8
  %66 = getelementptr inbounds %struct.colormap, %struct.colormap* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.colormap*, %struct.colormap** %4, align 8
  %75 = getelementptr inbounds %struct.colormap, %struct.colormap* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @CHR_MIN, align 8
  %79 = sub nsw i64 %77, %78
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  store i64 %73, i64* %80, align 8
  %81 = load i64, i64* %7, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %64, %37, %26
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @newsub(%struct.colormap*, i64) #1

declare dso_local i64 @CISERR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
