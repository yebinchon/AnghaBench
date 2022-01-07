; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_BuildHeadphonePath.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_BuildHeadphonePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_20__, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__**, %struct.TYPE_15__** }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i64, i32 }

@USBH_OK = common dso_local global i32 0, align 4
@USBH_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_AUDIO_BuildHeadphonePath(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %9, align 8
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %60, %1
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %16, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %15
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %27, i64 %28
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @LE16(i32 %32)
  %34 = icmp eq i32 %33, 257
  br i1 %34, label %35, label %59

35:                                               ; preds = %22
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %40, i64 %41
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %4, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %50, i64 %51
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 5
  store i32 %55, i32* %58, align 8
  br label %63

59:                                               ; preds = %22
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %15

63:                                               ; preds = %35, %15
  store i64 0, i64* %6, align 8
  br label %64

64:                                               ; preds = %90, %63
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %65, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %64
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %71
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  br label %93

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %64

93:                                               ; preds = %84, %64
  br label %94

94:                                               ; preds = %152, %93
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @USBH_AUDIO_FindLinkedUnit(%struct.TYPE_22__* %95, i64 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, 255
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = ashr i32 %101, 8
  %103 = and i32 %102, 255
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = ashr i32 %105, 16
  %107 = and i32 %106, 255
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* %5, align 8
  switch i64 %109, label %145 [
    i64 131, label %110
    i64 130, label %115
    i64 128, label %120
    i64 129, label %125
  ]

110:                                              ; preds = %94
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  store i64 %111, i64* %114, align 8
  br label %145

115:                                              ; preds = %94
  %116 = load i64, i64* %6, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  store i64 %116, i64* %119, align 8
  br label %145

120:                                              ; preds = %94
  %121 = load i64, i64* %6, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  store i64 %121, i64* %124, align 8
  br label %145

125:                                              ; preds = %94
  %126 = load i64, i64* %6, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 4
  store i64 %126, i64* %129, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %133, align 8
  %135 = load i64, i64* %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %134, i64 %135
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @LE16(i32 %139)
  %141 = icmp ne i32 %140, 259
  br i1 %141, label %142, label %144

142:                                              ; preds = %125
  %143 = load i32, i32* @USBH_OK, align 4
  store i32 %143, i32* %2, align 4
  br label %156

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %94, %144, %120, %115, %110
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %5, align 8
  %148 = icmp ne i64 %147, 129
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %7, align 4
  %151 = icmp sgt i32 %150, 0
  br label %152

152:                                              ; preds = %149, %146
  %153 = phi i1 [ false, %146 ], [ %151, %149 ]
  br i1 %153, label %94, label %154

154:                                              ; preds = %152
  %155 = load i32, i32* @USBH_FAIL, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %154, %142
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @LE16(i32) #1

declare dso_local i32 @USBH_AUDIO_FindLinkedUnit(%struct.TYPE_22__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
