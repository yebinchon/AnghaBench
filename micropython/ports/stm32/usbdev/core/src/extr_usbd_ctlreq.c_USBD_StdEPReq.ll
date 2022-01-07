; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_ctlreq.c_USBD_StdEPReq.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbdev/core/src/extr_usbd_ctlreq.c_USBD_StdEPReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, i32, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { {}* }
%struct.TYPE_19__ = type { i32, i32, i32 }

@USBD_OK = common dso_local global i32 0, align 4
@USB_FEATURE_EP_HALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBD_StdEPReq(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %8 = load i32, i32* @USBD_OK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @LOBYTE(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %167 [
    i32 128, label %16
    i32 130, label %65
    i32 129, label %112
  ]

16:                                               ; preds = %2
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %60 [
    i32 132, label %20
    i32 131, label %31
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 128
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @USBD_LL_StallEP(%struct.TYPE_20__* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %23, %20
  br label %64

31:                                               ; preds = %16
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @USB_FEATURE_EP_HALT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 128
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @USBD_LL_StallEP(%struct.TYPE_20__* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40, %37
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)**
  %54 = load i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)** %53, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = call i32 %54(%struct.TYPE_20__* %55, %struct.TYPE_19__* %56)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = call i32 @USBD_CtlSendStatus(%struct.TYPE_20__* %58)
  br label %64

60:                                               ; preds = %16
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = call i32 @USBD_CtlError(%struct.TYPE_20__* %61, %struct.TYPE_19__* %62)
  br label %64

64:                                               ; preds = %60, %48, %30
  br label %168

65:                                               ; preds = %2
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %107 [
    i32 132, label %69
    i32 131, label %80
  ]

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 128
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @USBD_LL_StallEP(%struct.TYPE_20__* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %72, %69
  br label %111

80:                                               ; preds = %65
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @USB_FEATURE_EP_HALT, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, 127
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @USBD_LL_ClearStallEP(%struct.TYPE_20__* %91, i32 %92)
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = bitcast {}** %97 to i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)**
  %99 = load i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)** %98, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %102 = call i32 %99(%struct.TYPE_20__* %100, %struct.TYPE_19__* %101)
  br label %103

103:                                              ; preds = %90, %86
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %105 = call i32 @USBD_CtlSendStatus(%struct.TYPE_20__* %104)
  br label %106

106:                                              ; preds = %103, %80
  br label %111

107:                                              ; preds = %65
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %110 = call i32 @USBD_CtlError(%struct.TYPE_20__* %108, %struct.TYPE_19__* %109)
  br label %111

111:                                              ; preds = %107, %106, %79
  br label %168

112:                                              ; preds = %2
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %162 [
    i32 132, label %116
    i32 131, label %125
  ]

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, 127
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @USBD_LL_StallEP(%struct.TYPE_20__* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %166

125:                                              ; preds = %112
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, 128
  %128 = icmp eq i32 %127, 128
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, 127
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i64 %135
  br label %145

137:                                              ; preds = %125
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = and i32 %141, 127
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i64 %143
  br label %145

145:                                              ; preds = %137, %129
  %146 = phi %struct.TYPE_21__* [ %136, %129 ], [ %144, %137 ]
  store %struct.TYPE_21__* %146, %struct.TYPE_21__** %7, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @USBD_LL_IsStallEP(%struct.TYPE_20__* %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  store i32 1, i32* %153, align 4
  br label %157

154:                                              ; preds = %145
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  store i32 0, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = call i32 @USBD_CtlSendData(%struct.TYPE_20__* %158, i32* %160, i32 2)
  br label %166

162:                                              ; preds = %112
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %165 = call i32 @USBD_CtlError(%struct.TYPE_20__* %163, %struct.TYPE_19__* %164)
  br label %166

166:                                              ; preds = %162, %157, %124
  br label %168

167:                                              ; preds = %2
  br label %168

168:                                              ; preds = %167, %166, %111, %64
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @USBD_LL_StallEP(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @USBD_CtlSendStatus(%struct.TYPE_20__*) #1

declare dso_local i32 @USBD_CtlError(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @USBD_LL_ClearStallEP(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @USBD_LL_IsStallEP(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @USBD_CtlSendData(%struct.TYPE_20__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
