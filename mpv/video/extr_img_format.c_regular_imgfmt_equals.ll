; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_img_format.c_regular_imgfmt_equals.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_img_format.c_regular_imgfmt_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_regular_imgfmt = type { i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt*)* @regular_imgfmt_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regular_imgfmt_equals(%struct.mp_regular_imgfmt* %0, %struct.mp_regular_imgfmt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_regular_imgfmt*, align 8
  %5 = alloca %struct.mp_regular_imgfmt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mp_regular_imgfmt* %0, %struct.mp_regular_imgfmt** %4, align 8
  store %struct.mp_regular_imgfmt* %1, %struct.mp_regular_imgfmt** %5, align 8
  %9 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %4, align 8
  %10 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %5, align 8
  %13 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %64, label %16

16:                                               ; preds = %2
  %17 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %4, align 8
  %18 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %5, align 8
  %21 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %64, label %24

24:                                               ; preds = %16
  %25 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %4, align 8
  %26 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %5, align 8
  %29 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %64, label %32

32:                                               ; preds = %24
  %33 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %4, align 8
  %34 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %5, align 8
  %37 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %64, label %40

40:                                               ; preds = %32
  %41 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %4, align 8
  %42 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %5, align 8
  %45 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %64, label %48

48:                                               ; preds = %40
  %49 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %4, align 8
  %50 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %5, align 8
  %53 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %4, align 8
  %58 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %5, align 8
  %61 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56, %48, %40, %32, %24, %16, %2
  store i32 0, i32* %3, align 4
  br label %134

65:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %130, %65
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %4, align 8
  %70 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %133

73:                                               ; preds = %66
  %74 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %4, align 8
  %75 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %74, i32 0, i32 7
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %5, align 8
  %84 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %83, i32 0, i32 7
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %82, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %134

93:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %126, %93
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %129

98:                                               ; preds = %94
  %99 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %4, align 8
  %100 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %99, i32 0, i32 7
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %5, align 8
  %112 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %111, i32 0, i32 7
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %110, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %134

125:                                              ; preds = %98
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %94

129:                                              ; preds = %94
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %66

133:                                              ; preds = %66
  store i32 1, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %124, %92, %64
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
