; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_pin.c_SendFurther.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_pin.c_SendFurther.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@S_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@E_NOTIMPL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Use QueryInternalConnections!\0A\00", align 1
@VFW_E_ENUM_OUT_OF_SYNC = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64 (i32*, i32)*, i32, i64 (i32*, i32)*)* @SendFurther to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SendFurther(i32* %0, i64 (i32*, i32)* %1, i32 %2, i64 (i32*, i32)* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64 (i32*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64 (i32*, i32)*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 (i32*, i32)* %1, i64 (i32*, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 (i32*, i32)* %3, i64 (i32*, i32)** %8, align 8
  store i64 0, i64* %10, align 8
  %21 = load i64, i64* @S_OK, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* @S_OK, align 8
  store i64 %22, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @IPin_QueryDirection(i32* %24, i64* %15)
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @IPin_QueryInternalConnections(i32* %26, i32* null, i64* %10)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @E_NOTIMPL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31, %4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @IPin_QueryPinInfo(i32* %38, %struct.TYPE_3__* %9)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @FAILED(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %118

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @IBaseFilter_EnumPins(i32* %46, i32** %13)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @FAILED(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %118

52:                                               ; preds = %44
  %53 = load i32*, i32** %13, align 8
  %54 = call i64 @IEnumPins_Reset(i32* %53)
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %99, %65, %52
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %100

59:                                               ; preds = %55
  store i32* null, i32** %16, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i64 @IEnumPins_Next(i32* %60, i32 1, i32** %16, i32* null)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @VFW_E_ENUM_OUT_OF_SYNC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32*, i32** %13, align 8
  %67 = call i64 @IEnumPins_Reset(i32* %66)
  store i64 %67, i64* %11, align 8
  br label %55

68:                                               ; preds = %59
  %69 = load i32*, i32** %16, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %97

71:                                               ; preds = %68
  %72 = load i32*, i32** %16, align 8
  %73 = call i32 @IPin_QueryDirection(i32* %72, i64* %17)
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %15, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %71
  store i32* null, i32** %18, align 8
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %14, align 4
  %79 = load i32*, i32** %16, align 8
  %80 = call i32 @IPin_ConnectedTo(i32* %79, i32** %18)
  %81 = load i32*, i32** %18, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load i64 (i32*, i32)*, i64 (i32*, i32)** %6, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i64 %84(i32* %85, i32 %86)
  store i64 %87, i64* %19, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %19, align 8
  %90 = call i64 @updatehres(i64 %88, i64 %89)
  store i64 %90, i64* %12, align 8
  %91 = load i32*, i32** %18, align 8
  %92 = call i32 @IPin_Release(i32* %91)
  br label %93

93:                                               ; preds = %83, %77
  br label %94

94:                                               ; preds = %93, %71
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @IPin_Release(i32* %95)
  br label %99

97:                                               ; preds = %68
  %98 = load i64, i64* @S_OK, align 8
  store i64 %98, i64* %11, align 8
  br label %100

99:                                               ; preds = %94
  br label %55

100:                                              ; preds = %97, %55
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %12, align 8
  store i64 %104, i64* %11, align 8
  br label %117

105:                                              ; preds = %100
  %106 = load i64 (i32*, i32)*, i64 (i32*, i32)** %8, align 8
  %107 = icmp ne i64 (i32*, i32)* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i64 (i32*, i32)*, i64 (i32*, i32)** %8, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i64 %109(i32* %110, i32 %111)
  store i64 %112, i64* %20, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* %20, align 8
  %115 = call i64 @updatehres(i64 %113, i64 %114)
  store i64 %115, i64* %12, align 8
  br label %116

116:                                              ; preds = %108, %105
  br label %117

117:                                              ; preds = %116, %103
  br label %118

118:                                              ; preds = %117, %51, %43
  %119 = load i32*, i32** %13, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @IEnumPins_Release(i32* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @IBaseFilter_Release(i32* %130)
  br label %132

132:                                              ; preds = %128, %124
  %133 = load i64, i64* %11, align 8
  ret i64 %133
}

declare dso_local i32 @IPin_QueryDirection(i32*, i64*) #1

declare dso_local i64 @IPin_QueryInternalConnections(i32*, i32*, i64*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @IPin_QueryPinInfo(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IBaseFilter_EnumPins(i32*, i32**) #1

declare dso_local i64 @IEnumPins_Reset(i32*) #1

declare dso_local i64 @IEnumPins_Next(i32*, i32, i32**, i32*) #1

declare dso_local i32 @IPin_ConnectedTo(i32*, i32**) #1

declare dso_local i64 @updatehres(i64, i64) #1

declare dso_local i32 @IPin_Release(i32*) #1

declare dso_local i32 @IEnumPins_Release(i32*) #1

declare dso_local i32 @IBaseFilter_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
