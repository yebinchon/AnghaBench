; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf16.c_mbfl_filt_conv_wchar_utf16le.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf16.c_mbfl_filt_conv_wchar_utf16le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

@MBFL_WCSPLANE_UCS2MAX = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_SUPMIN = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_SUPMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_utf16le(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MBFL_WCSPLANE_UCS2MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 255
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %15(i32 %17, i32 %20)
  %22 = call i32 @CK(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %25(i32 %28, i32 %31)
  %33 = call i32 @CK(i32 %32)
  br label %98

34:                                               ; preds = %8, %2
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @MBFL_WCSPLANE_SUPMIN, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MBFL_WCSPLANE_SUPMAX, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %92

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = ashr i32 %43, 10
  %45 = sub nsw i32 %44, 64
  %46 = or i32 %45, 55296
  store i32 %46, i32* %5, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32 (i32, i32)*, i32 (i32, i32)** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 255
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %49(i32 %51, i32 %54)
  %56 = call i32 @CK(i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32 (i32, i32)*, i32 (i32, i32)** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %61, 255
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %59(i32 %62, i32 %65)
  %67 = call i32 @CK(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, 1023
  %70 = or i32 %69, 56320
  store i32 %70, i32* %5, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32 (i32, i32)*, i32 (i32, i32)** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 255
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %73(i32 %75, i32 %78)
  %80 = call i32 @CK(i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32 (i32, i32)*, i32 (i32, i32)** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 255
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 %83(i32 %86, i32 %89)
  %91 = call i32 @CK(i32 %90)
  br label %97

92:                                               ; preds = %38, %34
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = call i32 @mbfl_filt_conv_illegal_output(i32 %93, %struct.TYPE_4__* %94)
  %96 = call i32 @CK(i32 %95)
  br label %97

97:                                               ; preds = %92, %42
  br label %98

98:                                               ; preds = %97, %12
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
