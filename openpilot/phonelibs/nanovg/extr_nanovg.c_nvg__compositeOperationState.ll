; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__compositeOperationState.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__compositeOperationState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@NVG_SOURCE_OVER = common dso_local global i32 0, align 4
@NVG_ONE = common dso_local global i32 0, align 4
@NVG_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@NVG_SOURCE_IN = common dso_local global i32 0, align 4
@NVG_DST_ALPHA = common dso_local global i32 0, align 4
@NVG_ZERO = common dso_local global i32 0, align 4
@NVG_SOURCE_OUT = common dso_local global i32 0, align 4
@NVG_ONE_MINUS_DST_ALPHA = common dso_local global i32 0, align 4
@NVG_ATOP = common dso_local global i32 0, align 4
@NVG_DESTINATION_OVER = common dso_local global i32 0, align 4
@NVG_DESTINATION_IN = common dso_local global i32 0, align 4
@NVG_SRC_ALPHA = common dso_local global i32 0, align 4
@NVG_DESTINATION_OUT = common dso_local global i32 0, align 4
@NVG_DESTINATION_ATOP = common dso_local global i32 0, align 4
@NVG_LIGHTER = common dso_local global i32 0, align 4
@NVG_COPY = common dso_local global i32 0, align 4
@NVG_XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i32)* @nvg__compositeOperationState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @nvg__compositeOperationState(i32 %0) #0 {
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NVG_SOURCE_OVER, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @NVG_ONE, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @NVG_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %11, i32* %5, align 4
  br label %92

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @NVG_SOURCE_IN, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @NVG_DST_ALPHA, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @NVG_ZERO, align 4
  store i32 %18, i32* %5, align 4
  br label %91

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @NVG_SOURCE_OUT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @NVG_ONE_MINUS_DST_ALPHA, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @NVG_ZERO, align 4
  store i32 %25, i32* %5, align 4
  br label %90

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @NVG_ATOP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @NVG_DST_ALPHA, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @NVG_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %32, i32* %5, align 4
  br label %89

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @NVG_DESTINATION_OVER, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @NVG_ONE_MINUS_DST_ALPHA, align 4
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @NVG_ONE, align 4
  store i32 %39, i32* %5, align 4
  br label %88

40:                                               ; preds = %33
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @NVG_DESTINATION_IN, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @NVG_ZERO, align 4
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @NVG_SRC_ALPHA, align 4
  store i32 %46, i32* %5, align 4
  br label %87

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @NVG_DESTINATION_OUT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @NVG_ZERO, align 4
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @NVG_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %53, i32* %5, align 4
  br label %86

54:                                               ; preds = %47
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @NVG_DESTINATION_ATOP, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @NVG_ONE_MINUS_DST_ALPHA, align 4
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @NVG_SRC_ALPHA, align 4
  store i32 %60, i32* %5, align 4
  br label %85

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @NVG_LIGHTER, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @NVG_ONE, align 4
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @NVG_ONE, align 4
  store i32 %67, i32* %5, align 4
  br label %84

68:                                               ; preds = %61
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @NVG_COPY, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @NVG_ONE, align 4
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @NVG_ZERO, align 4
  store i32 %74, i32* %5, align 4
  br label %83

75:                                               ; preds = %68
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @NVG_XOR, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @NVG_ONE_MINUS_DST_ALPHA, align 4
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @NVG_ONE_MINUS_SRC_ALPHA, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %75
  br label %83

83:                                               ; preds = %82, %72
  br label %84

84:                                               ; preds = %83, %65
  br label %85

85:                                               ; preds = %84, %58
  br label %86

86:                                               ; preds = %85, %51
  br label %87

87:                                               ; preds = %86, %44
  br label %88

88:                                               ; preds = %87, %37
  br label %89

89:                                               ; preds = %88, %30
  br label %90

90:                                               ; preds = %89, %23
  br label %91

91:                                               ; preds = %90, %16
  br label %92

92:                                               ; preds = %91, %9
  %93 = load i32, i32* %4, align 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %4, align 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %5, align 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 %99, i32* %100, align 4
  %101 = bitcast %struct.TYPE_3__* %2 to { i64, i64 }*
  %102 = load { i64, i64 }, { i64, i64 }* %101, align 4
  ret { i64, i64 } %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
