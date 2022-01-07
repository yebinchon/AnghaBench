; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Core/Src/extr_usbh_ctlreq.c_USBH_HandleControl.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Core/Src/extr_usbh_ctlreq.c_USBH_HandleControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@USBH_URB_IDLE = common dso_local global i32 0, align 4
@USBH_URB_DONE = common dso_local global i32 0, align 4
@USB_REQ_DIR_MASK = common dso_local global i32 0, align 4
@USB_D2H = common dso_local global i32 0, align 4
@USBH_URB_ERROR = common dso_local global i32 0, align 4
@USBH_URB_STALL = common dso_local global i32 0, align 4
@USBH_NOT_SUPPORTED = common dso_local global i32 0, align 4
@CTRL_STALLED = common dso_local global i32 0, align 4
@USBH_URB_NOTREADY = common dso_local global i32 0, align 4
@USBH_FAIL = common dso_local global i32 0, align 4
@CTRL_COMPLETE = common dso_local global i8* null, align 8
@USBH_OK = common dso_local global i32 0, align 4
@USBH_MAX_ERROR_COUNT = common dso_local global i32 0, align 4
@CMD_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Control error\00", align 1
@USBH_CONTROL_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @USBH_HandleControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_HandleControl(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load i32, i32* @USBH_BUSY, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @USBH_URB_IDLE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %341 [
    i32 133, label %12
    i32 132, label %28
    i32 138, label %92
    i32 137, label %116
    i32 136, label %146
    i32 135, label %170
    i32 131, label %215
    i32 130, label %231
    i32 129, label %265
    i32 128, label %281
    i32 134, label %317
  ]

12:                                               ; preds = %1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @USBH_CtlSendSetup(%struct.TYPE_16__* %13, i32* %19, i32 %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i32 132, i32* %27, align 8
  br label %342

28:                                               ; preds = %1
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @USBH_LL_GetURBState(%struct.TYPE_16__* %29, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @USBH_URB_DONE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %28
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @USB_REQ_DIR_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %3, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %38
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @USB_D2H, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i32 138, i32* %62, align 8
  br label %67

63:                                               ; preds = %55
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store i32 136, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  br label %81

68:                                               ; preds = %38
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @USB_D2H, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  store i32 129, i32* %75, align 8
  br label %80

76:                                               ; preds = %68
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store i32 131, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %72
  br label %81

81:                                               ; preds = %80, %67
  br label %91

82:                                               ; preds = %28
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @USBH_URB_ERROR, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  store i32 134, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %81
  br label %342

92:                                               ; preds = %1
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @USBH_CtlReceiveData(%struct.TYPE_16__* %99, i32 %103, i32 %107, i32 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  store i32 137, i32* %115, align 8
  br label %342

116:                                              ; preds = %1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @USBH_LL_GetURBState(%struct.TYPE_16__* %117, i32 %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @USBH_URB_DONE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %116
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  store i32 129, i32* %129, align 8
  br label %130

130:                                              ; preds = %126, %116
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @USBH_URB_STALL, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @USBH_NOT_SUPPORTED, align 4
  store i32 %135, i32* %4, align 4
  br label %145

136:                                              ; preds = %130
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @USBH_URB_ERROR, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  store i32 134, i32* %143, align 8
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144, %134
  br label %342

146:                                              ; preds = %1
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @USBH_CtlSendData(%struct.TYPE_16__* %147, i32 %151, i32 %155, i32 %159, i32 1)
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 3
  store i32 %163, i32* %166, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  store i32 135, i32* %169, align 8
  br label %342

170:                                              ; preds = %1
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @USBH_LL_GetURBState(%struct.TYPE_16__* %171, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @USBH_URB_DONE, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %170
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  store i32 131, i32* %183, align 8
  br label %214

184:                                              ; preds = %170
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* @USBH_URB_STALL, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load i32, i32* @CTRL_STALLED, align 4
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 8
  %193 = load i32, i32* @USBH_NOT_SUPPORTED, align 4
  store i32 %193, i32* %4, align 4
  br label %213

194:                                              ; preds = %184
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @USBH_URB_NOTREADY, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  store i32 136, i32* %201, align 8
  br label %212

202:                                              ; preds = %194
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @USBH_URB_ERROR, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  store i32 134, i32* %209, align 8
  %210 = load i32, i32* @USBH_FAIL, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %206, %202
  br label %212

212:                                              ; preds = %211, %198
  br label %213

213:                                              ; preds = %212, %188
  br label %214

214:                                              ; preds = %213, %180
  br label %342

215:                                              ; preds = %1
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @USBH_CtlReceiveData(%struct.TYPE_16__* %216, i32 0, i32 0, i32 %220)
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 3
  store i32 %224, i32* %227, align 4
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  store i32 130, i32* %230, align 8
  br label %342

231:                                              ; preds = %1
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @USBH_LL_GetURBState(%struct.TYPE_16__* %232, i32 %236)
  store i32 %237, i32* %5, align 4
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* @USBH_URB_DONE, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %231
  %242 = load i8*, i8** @CTRL_COMPLETE, align 8
  %243 = ptrtoint i8* %242 to i32
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  store i32 %243, i32* %246, align 8
  %247 = load i32, i32* @USBH_OK, align 4
  store i32 %247, i32* %4, align 4
  br label %264

248:                                              ; preds = %231
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* @USBH_URB_ERROR, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %248
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  store i32 134, i32* %255, align 8
  br label %263

256:                                              ; preds = %248
  %257 = load i32, i32* %5, align 4
  %258 = load i32, i32* @USBH_URB_STALL, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = load i32, i32* @USBH_NOT_SUPPORTED, align 4
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %260, %256
  br label %263

263:                                              ; preds = %262, %252
  br label %264

264:                                              ; preds = %263, %241
  br label %342

265:                                              ; preds = %1
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @USBH_CtlSendData(%struct.TYPE_16__* %266, i32 0, i32 0, i32 %270, i32 1)
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 3
  store i32 %274, i32* %277, align 4
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  store i32 128, i32* %280, align 8
  br label %342

281:                                              ; preds = %1
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @USBH_LL_GetURBState(%struct.TYPE_16__* %282, i32 %286)
  store i32 %287, i32* %5, align 4
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* @USBH_URB_DONE, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %298

291:                                              ; preds = %281
  %292 = load i32, i32* @USBH_OK, align 4
  store i32 %292, i32* %4, align 4
  %293 = load i8*, i8** @CTRL_COMPLETE, align 8
  %294 = ptrtoint i8* %293 to i32
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  store i32 %294, i32* %297, align 8
  br label %316

298:                                              ; preds = %281
  %299 = load i32, i32* %5, align 4
  %300 = load i32, i32* @USBH_URB_NOTREADY, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %298
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  store i32 129, i32* %305, align 8
  br label %315

306:                                              ; preds = %298
  %307 = load i32, i32* %5, align 4
  %308 = load i32, i32* @USBH_URB_ERROR, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 0
  store i32 134, i32* %313, align 8
  br label %314

314:                                              ; preds = %310, %306
  br label %315

315:                                              ; preds = %314, %302
  br label %316

316:                                              ; preds = %315, %291
  br label %342

317:                                              ; preds = %1
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 4
  %323 = load i32, i32* @USBH_MAX_ERROR_COUNT, align 4
  %324 = icmp sle i32 %322, %323
  br i1 %324, label %325, label %334

325:                                              ; preds = %317
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %327 = call i32 @USBH_LL_Stop(%struct.TYPE_16__* %326)
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  store i32 133, i32* %330, align 8
  %331 = load i32, i32* @CMD_SEND, align 4
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 1
  store i32 %331, i32* %333, align 8
  br label %340

334:                                              ; preds = %317
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 1
  store i32 0, i32* %337, align 4
  %338 = call i32 @USBH_ErrLog(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %339 = load i32, i32* @USBH_FAIL, align 4
  store i32 %339, i32* %4, align 4
  br label %340

340:                                              ; preds = %334, %325
  br label %342

341:                                              ; preds = %1
  br label %342

342:                                              ; preds = %341, %340, %316, %265, %264, %215, %214, %146, %145, %92, %91, %12
  %343 = load i32, i32* %4, align 4
  ret i32 %343
}

declare dso_local i32 @USBH_CtlSendSetup(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @USBH_LL_GetURBState(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @USBH_CtlReceiveData(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @USBH_CtlSendData(%struct.TYPE_16__*, i32, i32, i32, i32) #1

declare dso_local i32 @USBH_LL_Stop(%struct.TYPE_16__*) #1

declare dso_local i32 @USBH_ErrLog(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
