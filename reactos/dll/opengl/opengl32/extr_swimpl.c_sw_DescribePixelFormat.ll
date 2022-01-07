; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_DescribePixelFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_DescribePixelFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pixel_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Describing format %i.\0A\00", align 1
@STENCIL_BITS = common dso_local global i32 0, align 4
@PFD_MAIN_PLANE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sw_DescribePixelFormat(i32 %0, i64 %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pixel_format*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %7, align 8
  %15 = call %struct.pixel_format* @get_format(i64 %14, i64* %10)
  store %struct.pixel_format* %15, %struct.pixel_format** %11, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %5, align 8
  br label %136

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 128
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20
  store i64 0, i64* %5, align 8
  br label %136

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 128, i32* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %35 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %34, i32 0, i32 16
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 25
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %40 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %39, i32 0, i32 15
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 24
  store i32 %41, i32* %43, align 8
  %44 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %45 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 23
  store i32 %46, i32* %48, align 4
  %49 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %50 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 22
  store i32 %51, i32* %53, align 8
  %54 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %55 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 21
  store i32 %56, i32* %58, align 4
  %59 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %60 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 20
  store i32 %61, i32* %63, align 8
  %64 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %65 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 19
  store i32 %66, i32* %68, align 4
  %69 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %70 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 18
  store i32 %71, i32* %73, align 8
  %74 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %75 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 17
  store i32 %76, i32* %78, align 4
  %79 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %80 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 16
  store i32 %81, i32* %83, align 8
  %84 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %85 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 15
  store i32 %86, i32* %88, align 4
  %89 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %90 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 14
  store i32 %91, i32* %93, align 8
  %94 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %95 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 13
  store i32 %96, i32* %98, align 4
  %99 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %100 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 12
  store i32 %101, i32* %103, align 8
  %104 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %105 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 11
  store i32 %106, i32* %108, align 4
  %109 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %110 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 8
  %114 = load %struct.pixel_format*, %struct.pixel_format** %11, align 8
  %115 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @STENCIL_BITS, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 7
  store i64 0, i64* %123, align 8
  %124 = load i32, i32* @PFD_MAIN_PLANE, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 5
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 3
  store i64 0, i64* %132, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  %135 = load i64, i64* %10, align 8
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %29, %28, %18
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local %struct.pixel_format* @get_format(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
