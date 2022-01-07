; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_ParseCSDescriptors.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_ParseCSDescriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32**, i32**, i32**, i32**, i32**, i32* }

@USB_SUBCLASS_AUDIOCONTROL = common dso_local global i64 0, align 8
@USB_SUBCLASS_AUDIOSTREAMING = common dso_local global i64 0, align 8
@USBH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64*)* @ParseCSDescriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseCSDescriptors(%struct.TYPE_7__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @USB_SUBCLASS_AUDIOCONTROL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %87

10:                                               ; preds = %3
  %11 = load i64*, i64** %6, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 2
  %13 = load i64, i64* %12, align 8
  switch i64 %13, label %85 [
    i64 132, label %14
    i64 131, label %20
    i64 129, label %33
    i64 134, label %46
    i64 128, label %59
    i64 130, label %72
  ]

14:                                               ; preds = %10
  %15 = load i64*, i64** %6, align 8
  %16 = bitcast i64* %15 to i32*
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  store i32* %16, i32** %19, align 8
  br label %86

20:                                               ; preds = %10
  %21 = load i64*, i64** %6, align 8
  %22 = bitcast i64* %21 to i32*
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32*, i32** %26, i64 %31
  store i32* %22, i32** %32, align 8
  br label %86

33:                                               ; preds = %10
  %34 = load i64*, i64** %6, align 8
  %35 = bitcast i64* %34 to i32*
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32**, i32*** %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32*, i32** %39, i64 %44
  store i32* %35, i32** %45, align 8
  br label %86

46:                                               ; preds = %10
  %47 = load i64*, i64** %6, align 8
  %48 = bitcast i64* %47 to i32*
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32*, i32** %52, i64 %57
  store i32* %48, i32** %58, align 8
  br label %86

59:                                               ; preds = %10
  %60 = load i64*, i64** %6, align 8
  %61 = bitcast i64* %60 to i32*
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32*, i32** %65, i64 %70
  store i32* %61, i32** %71, align 8
  br label %86

72:                                               ; preds = %10
  %73 = load i64*, i64** %6, align 8
  %74 = bitcast i64* %73 to i32*
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32*, i32** %78, i64 %83
  store i32* %74, i32** %84, align 8
  br label %86

85:                                               ; preds = %10
  br label %86

86:                                               ; preds = %85, %72, %59, %46, %33, %20, %14
  br label %121

87:                                               ; preds = %3
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @USB_SUBCLASS_AUDIOSTREAMING, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %87
  %92 = load i64*, i64** %6, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 2
  %94 = load i64, i64* %93, align 8
  switch i64 %94, label %118 [
    i64 135, label %95
    i64 133, label %106
  ]

95:                                               ; preds = %91
  %96 = load i64*, i64** %6, align 8
  %97 = bitcast i64* %96 to i32*
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32* %97, i32** %105, align 8
  br label %119

106:                                              ; preds = %91
  %107 = load i64*, i64** %6, align 8
  %108 = bitcast i64* %107 to i32*
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %114
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32* %108, i32** %117, align 8
  br label %119

118:                                              ; preds = %91
  br label %119

119:                                              ; preds = %118, %106, %95
  br label %120

120:                                              ; preds = %119, %87
  br label %121

121:                                              ; preds = %120, %86
  %122 = load i32, i32* @USBH_OK, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
