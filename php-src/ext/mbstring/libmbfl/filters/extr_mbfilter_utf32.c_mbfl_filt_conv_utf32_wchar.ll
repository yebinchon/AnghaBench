; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf32.c_mbfl_filt_conv_utf32_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf32.c_mbfl_filt_conv_utf32_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSPLANE_UTF32MAX = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_utf32_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 65280
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 255
  switch i32 %14, label %75 [
    i32 0, label %15
    i32 1, label %33
    i32 2, label %54
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %5, align 4
  br label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 255
  %24 = shl i32 %23, 24
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %158

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 255
  %39 = shl i32 %38, 8
  store i32 %39, i32* %5, align 4
  br label %44

40:                                               ; preds = %33
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 255
  %43 = shl i32 %42, 16
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %158

54:                                               ; preds = %2
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, 255
  %60 = shl i32 %59, 16
  store i32 %60, i32* %5, align 4
  br label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 255
  %64 = shl i32 %63, 8
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %158

75:                                               ; preds = %2
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, 255
  %81 = shl i32 %80, 24
  store i32 %81, i32* %5, align 4
  br label %85

82:                                               ; preds = %75
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, 255
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %85
  %95 = load i32, i32* %5, align 4
  %96 = ashr i32 %95, 16
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 65534
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  br label %108

105:                                              ; preds = %99
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 256, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32 (i32, i32)*, i32 (i32, i32)** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 %111(i32 65279, i32 %114)
  %116 = call i32 @CK(i32 %115)
  br label %157

117:                                              ; preds = %94, %85
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, -256
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @MBFL_WCSPLANE_UTF32MAX, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %117
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 55296
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %5, align 4
  %130 = icmp sgt i32 %129, 57343
  br i1 %130, label %131, label %141

131:                                              ; preds = %128, %125
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32 (i32, i32)*, i32 (i32, i32)** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 %134(i32 %135, i32 %138)
  %140 = call i32 @CK(i32 %139)
  br label %156

141:                                              ; preds = %128, %117
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %146 = or i32 %144, %145
  store i32 %146, i32* %5, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  %149 = load i32 (i32, i32)*, i32 (i32, i32)** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 %149(i32 %150, i32 %153)
  %155 = call i32 @CK(i32 %154)
  br label %156

156:                                              ; preds = %141, %131
  br label %157

157:                                              ; preds = %156, %108
  br label %158

158:                                              ; preds = %157, %65, %44, %25
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
