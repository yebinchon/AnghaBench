; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf8.c_mbfl_filt_conv_wchar_utf8.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf8.c_mbfl_filt_conv_wchar_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_utf8(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %140

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 1114112
  br i1 %9, label %10, label %140

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %16(i32 %17, i32 %20)
  %22 = call i32 @CK(i32 %21)
  br label %139

23:                                               ; preds = %10
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 2048
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = ashr i32 %30, 6
  %32 = and i32 %31, 31
  %33 = or i32 %32, 192
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %29(i32 %33, i32 %36)
  %38 = call i32 @CK(i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 63
  %44 = or i32 %43, 128
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %41(i32 %44, i32 %47)
  %49 = call i32 @CK(i32 %48)
  br label %138

50:                                               ; preds = %23
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 65536
  br i1 %52, label %53, label %89

53:                                               ; preds = %50
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = ashr i32 %57, 12
  %59 = and i32 %58, 15
  %60 = or i32 %59, 224
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %56(i32 %60, i32 %63)
  %65 = call i32 @CK(i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32 (i32, i32)*, i32 (i32, i32)** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = ashr i32 %69, 6
  %71 = and i32 %70, 63
  %72 = or i32 %71, 128
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %68(i32 %72, i32 %75)
  %77 = call i32 @CK(i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32 (i32, i32)*, i32 (i32, i32)** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, 63
  %83 = or i32 %82, 128
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %80(i32 %83, i32 %86)
  %88 = call i32 @CK(i32 %87)
  br label %137

89:                                               ; preds = %50
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32 (i32, i32)*, i32 (i32, i32)** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = ashr i32 %93, 18
  %95 = and i32 %94, 7
  %96 = or i32 %95, 240
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %92(i32 %96, i32 %99)
  %101 = call i32 @CK(i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32 (i32, i32)*, i32 (i32, i32)** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = ashr i32 %105, 12
  %107 = and i32 %106, 63
  %108 = or i32 %107, 128
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 %104(i32 %108, i32 %111)
  %113 = call i32 @CK(i32 %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32 (i32, i32)*, i32 (i32, i32)** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = ashr i32 %117, 6
  %119 = and i32 %118, 63
  %120 = or i32 %119, 128
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 %116(i32 %120, i32 %123)
  %125 = call i32 @CK(i32 %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32 (i32, i32)*, i32 (i32, i32)** %127, align 8
  %129 = load i32, i32* %3, align 4
  %130 = and i32 %129, 63
  %131 = or i32 %130, 128
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 %128(i32 %131, i32 %134)
  %136 = call i32 @CK(i32 %135)
  br label %137

137:                                              ; preds = %89, %53
  br label %138

138:                                              ; preds = %137, %26
  br label %139

139:                                              ; preds = %138, %13
  br label %145

140:                                              ; preds = %7, %2
  %141 = load i32, i32* %3, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = call i32 @mbfl_filt_conv_illegal_output(i32 %141, %struct.TYPE_4__* %142)
  %144 = call i32 @CK(i32 %143)
  br label %145

145:                                              ; preds = %140, %139
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
