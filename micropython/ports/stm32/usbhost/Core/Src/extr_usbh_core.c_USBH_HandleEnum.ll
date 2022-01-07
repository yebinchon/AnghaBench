; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Core/Src/extr_usbh_core.c_USBH_HandleEnum.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Core/Src/extr_usbh_core.c_USBH_HandleEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@USBH_EP_CONTROL = common dso_local global i32 0, align 4
@USB_DEVICE_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PID: %xh\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"VID: %xh\00", align 1
@USBH_DEVICE_ADDRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Address (#%d) assigned.\00", align 1
@USB_CONFIGURATION_DESC_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Manufacturer : %s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Manufacturer : N/A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Product : %s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Product : N/A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Serial Number : %s\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Serial Number : N/A\00", align 1
@USBH_STATE_CHANGED_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @USBH_HandleEnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_HandleEnum(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %4 = load i32, i32* @USBH_BUSY, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %273 [
    i32 129, label %8
    i32 133, label %63
    i32 128, label %85
    i32 135, label %143
    i32 134, label %153
    i32 132, label %167
    i32 131, label %203
    i32 130, label %239
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = call i32 @USBH_Get_DevDesc(%struct.TYPE_16__* %9, i32 8)
  %11 = load i32, i32* @USBH_OK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %62

13:                                               ; preds = %8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  store i32 133, i32* %23, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @USBH_EP_CONTROL, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @USBH_OpenPipe(%struct.TYPE_16__* %24, i32 %28, i32 128, i32 %32, i32 %36, i32 %37, i32 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @USBH_EP_CONTROL, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @USBH_OpenPipe(%struct.TYPE_16__* %43, i32 %47, i32 0, i32 %51, i32 %55, i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %13, %8
  br label %274

63:                                               ; preds = %1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %65 = load i32, i32* @USB_DEVICE_DESC_SIZE, align 4
  %66 = call i32 @USBH_Get_DevDesc(%struct.TYPE_16__* %64, i32 %65)
  %67 = load i32, i32* @USBH_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  store i32 128, i32* %83, align 8
  br label %84

84:                                               ; preds = %69, %63
  br label %274

85:                                               ; preds = %1
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %87 = load i32, i32* @USBH_DEVICE_ADDRESS, align 4
  %88 = call i32 @USBH_SetAddress(%struct.TYPE_16__* %86, i32 %87)
  %89 = load i32, i32* @USBH_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %142

91:                                               ; preds = %85
  %92 = call i32 @USBH_Delay(i32 2)
  %93 = load i32, i32* @USBH_DEVICE_ADDRESS, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  store i32 135, i32* %103, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @USBH_EP_CONTROL, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @USBH_OpenPipe(%struct.TYPE_16__* %104, i32 %108, i32 128, i32 %112, i32 %116, i32 %117, i32 %121)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @USBH_EP_CONTROL, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @USBH_OpenPipe(%struct.TYPE_16__* %123, i32 %127, i32 0, i32 %131, i32 %135, i32 %136, i32 %140)
  br label %142

142:                                              ; preds = %91, %85
  br label %274

143:                                              ; preds = %1
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %145 = load i32, i32* @USB_CONFIGURATION_DESC_SIZE, align 4
  %146 = call i32 @USBH_Get_CfgDesc(%struct.TYPE_16__* %144, i32 %145)
  %147 = load i32, i32* @USBH_OK, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  store i32 134, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %143
  br label %274

153:                                              ; preds = %1
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @USBH_Get_CfgDesc(%struct.TYPE_16__* %154, i32 %159)
  %161 = load i32, i32* @USBH_OK, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %153
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  store i32 132, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %153
  br label %274

167:                                              ; preds = %1
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %198

174:                                              ; preds = %167
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @USBH_Get_StringDesc(%struct.TYPE_16__* %175, i32 %180, i64 %184, i32 255)
  %186 = load i32, i32* @USBH_OK, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %174
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i8*
  %194 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  store i32 131, i32* %196, align 8
  br label %197

197:                                              ; preds = %188, %174
  br label %202

198:                                              ; preds = %167
  %199 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  store i32 131, i32* %201, align 8
  br label %202

202:                                              ; preds = %198, %197
  br label %274

203:                                              ; preds = %1
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %234

210:                                              ; preds = %203
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @USBH_Get_StringDesc(%struct.TYPE_16__* %211, i32 %216, i64 %220, i32 255)
  %222 = load i32, i32* @USBH_OK, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %210
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = inttoptr i64 %228 to i8*
  %230 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %229)
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  store i32 130, i32* %232, align 8
  br label %233

233:                                              ; preds = %224, %210
  br label %238

234:                                              ; preds = %203
  %235 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  store i32 130, i32* %237, align 8
  br label %238

238:                                              ; preds = %234, %233
  br label %274

239:                                              ; preds = %1
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %269

246:                                              ; preds = %239
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @USBH_Get_StringDesc(%struct.TYPE_16__* %247, i32 %252, i64 %256, i32 255)
  %258 = load i32, i32* @USBH_OK, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %268

260:                                              ; preds = %246
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = inttoptr i64 %264 to i8*
  %266 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %265)
  %267 = load i32, i32* @USBH_OK, align 4
  store i32 %267, i32* %3, align 4
  br label %268

268:                                              ; preds = %260, %246
  br label %272

269:                                              ; preds = %239
  %270 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %271 = load i32, i32* @USBH_OK, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %269, %268
  br label %274

273:                                              ; preds = %1
  br label %274

274:                                              ; preds = %273, %272, %238, %202, %166, %152, %142, %84, %62
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @USBH_Get_DevDesc(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @USBH_OpenPipe(%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @USBH_UsrLog(i8*, ...) #1

declare dso_local i32 @USBH_SetAddress(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @USBH_Delay(i32) #1

declare dso_local i32 @USBH_Get_CfgDesc(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @USBH_Get_StringDesc(%struct.TYPE_16__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
