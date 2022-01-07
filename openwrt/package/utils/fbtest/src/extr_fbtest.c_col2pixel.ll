; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fbtest/src/extr_fbtest.c_col2pixel.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fbtest/src/extr_fbtest.c_col2pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixel = type { i32* }
%struct.pixelformat = type { i32 }
%struct.colour = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"unknown pixelformat\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @col2pixel(%struct.pixel* %0, %struct.pixelformat* %1, %struct.colour* %2) #0 {
  %4 = alloca %struct.pixel*, align 8
  %5 = alloca %struct.pixelformat*, align 8
  %6 = alloca %struct.colour*, align 8
  store %struct.pixel* %0, %struct.pixel** %4, align 8
  store %struct.pixelformat* %1, %struct.pixelformat** %5, align 8
  store %struct.colour* %2, %struct.colour** %6, align 8
  %7 = load %struct.pixelformat*, %struct.pixelformat** %5, align 8
  %8 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %105 [
    i32 128, label %10
    i32 129, label %40
    i32 130, label %76
  ]

10:                                               ; preds = %3
  %11 = load %struct.colour*, %struct.colour** %6, align 8
  %12 = getelementptr inbounds %struct.colour, %struct.colour* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 248
  %15 = load %struct.colour*, %struct.colour** %6, align 8
  %16 = getelementptr inbounds %struct.colour, %struct.colour* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 252
  %19 = ashr i32 %18, 5
  %20 = or i32 %14, %19
  %21 = load %struct.pixel*, %struct.pixel** %4, align 8
  %22 = getelementptr inbounds %struct.pixel, %struct.pixel* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.colour*, %struct.colour** %6, align 8
  %26 = getelementptr inbounds %struct.colour, %struct.colour* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 252
  %29 = shl i32 %28, 3
  %30 = load %struct.colour*, %struct.colour** %6, align 8
  %31 = getelementptr inbounds %struct.colour, %struct.colour* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 248
  %34 = ashr i32 %33, 3
  %35 = or i32 %29, %34
  %36 = load %struct.pixel*, %struct.pixel** %4, align 8
  %37 = getelementptr inbounds %struct.pixel, %struct.pixel* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %35, i32* %39, align 4
  br label %108

40:                                               ; preds = %3
  %41 = load %struct.colour*, %struct.colour** %6, align 8
  %42 = getelementptr inbounds %struct.colour, %struct.colour* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 128
  %45 = load %struct.colour*, %struct.colour** %6, align 8
  %46 = getelementptr inbounds %struct.colour, %struct.colour* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 248
  %49 = ashr i32 %48, 1
  %50 = or i32 %44, %49
  %51 = load %struct.colour*, %struct.colour** %6, align 8
  %52 = getelementptr inbounds %struct.colour, %struct.colour* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 248
  %55 = ashr i32 %54, 6
  %56 = or i32 %50, %55
  %57 = load %struct.pixel*, %struct.pixel** %4, align 8
  %58 = getelementptr inbounds %struct.pixel, %struct.pixel* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.colour*, %struct.colour** %6, align 8
  %62 = getelementptr inbounds %struct.colour, %struct.colour* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 248
  %65 = shl i32 %64, 2
  %66 = load %struct.colour*, %struct.colour** %6, align 8
  %67 = getelementptr inbounds %struct.colour, %struct.colour* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 248
  %70 = ashr i32 %69, 3
  %71 = or i32 %65, %70
  %72 = load %struct.pixel*, %struct.pixel** %4, align 8
  %73 = getelementptr inbounds %struct.pixel, %struct.pixel* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %71, i32* %75, align 4
  br label %108

76:                                               ; preds = %3
  %77 = load %struct.colour*, %struct.colour** %6, align 8
  %78 = getelementptr inbounds %struct.colour, %struct.colour* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pixel*, %struct.pixel** %4, align 8
  %81 = getelementptr inbounds %struct.pixel, %struct.pixel* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.colour*, %struct.colour** %6, align 8
  %85 = getelementptr inbounds %struct.colour, %struct.colour* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pixel*, %struct.pixel** %4, align 8
  %88 = getelementptr inbounds %struct.pixel, %struct.pixel* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %86, i32* %90, align 4
  %91 = load %struct.colour*, %struct.colour** %6, align 8
  %92 = getelementptr inbounds %struct.colour, %struct.colour* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pixel*, %struct.pixel** %4, align 8
  %95 = getelementptr inbounds %struct.pixel, %struct.pixel* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %93, i32* %97, align 4
  %98 = load %struct.colour*, %struct.colour** %6, align 8
  %99 = getelementptr inbounds %struct.colour, %struct.colour* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pixel*, %struct.pixel** %4, align 8
  %102 = getelementptr inbounds %struct.pixel, %struct.pixel* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 %100, i32* %104, align 4
  br label %108

105:                                              ; preds = %3
  %106 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %107 = call i32 @exit(i32 1) #3
  unreachable

108:                                              ; preds = %76, %40, %10
  ret void
}

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
