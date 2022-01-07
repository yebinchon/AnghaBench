; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid.c_USBH_HID_InterfaceInit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid.c_USBH_HID_InterfaceInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i64, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_20__ = type { i32, i64, i32, i32, i8*, i32, i8*, i32, i32, i32 }

@USBH_FAIL = common dso_local global i32 0, align 4
@HID_BOOT_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot Find the interface for %s class.\00", align 1
@HID_ERROR = common dso_local global i32 0, align 4
@HID_KEYBRD_BOOT_CODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"KeyBoard device found!\00", align 1
@USBH_HID_KeybdInit = common dso_local global i32 0, align 4
@HID_MOUSE_BOOT_CODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Mouse device found!\00", align 1
@USBH_HID_MouseInit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Protocol not supported.\00", align 1
@HID_INIT = common dso_local global i32 0, align 4
@HID_REQ_INIT = common dso_local global i32 0, align 4
@HID_MIN_POLL = common dso_local global i64 0, align 8
@USBH_MAX_NUM_ENDPOINTS = common dso_local global i64 0, align 8
@USB_EP_TYPE_INTR = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @USBH_HID_InterfaceInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_HID_InterfaceInit(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @USBH_FAIL, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HID_BOOT_CODE, align 4
  %17 = call i32 @USBH_FindInterface(%struct.TYPE_19__* %10, i32 %15, i32 %16, i32 255)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @USBH_FAIL, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @USBH_DbgLog(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %323

28:                                               ; preds = %1
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @USBH_SelectInterface(%struct.TYPE_19__* %29, i32 %30)
  %32 = call i64 @USBH_malloc(i32 64)
  %33 = inttoptr i64 %32 to %struct.TYPE_20__*
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %37, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %8, align 8
  %43 = load i32, i32* @HID_ERROR, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @HID_KEYBRD_BOOT_CODE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %28
  %61 = call i32 @USBH_UsrLog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @USBH_HID_KeybdInit, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 8
  br label %89

65:                                               ; preds = %28
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @HID_MOUSE_BOOT_CODE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %65
  %81 = call i32 @USBH_UsrLog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @USBH_HID_MouseInit, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 8
  br label %88

85:                                               ; preds = %65
  %86 = call i32 @USBH_UsrLog(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @USBH_FAIL, align 4
  store i32 %87, i32* %2, align 4
  br label %325

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %60
  %90 = load i32, i32* @HID_INIT, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @HID_REQ_INIT, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @HID_MIN_POLL, align 8
  %151 = icmp slt i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %89
  %153 = load i64, i64* @HID_MIN_POLL, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %152, %89
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @USBH_MAX_NUM_ENDPOINTS, align 8
  %170 = icmp sle i64 %168, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %156
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  br label %186

184:                                              ; preds = %156
  %185 = load i64, i64* @USBH_MAX_NUM_ENDPOINTS, align 8
  br label %186

186:                                              ; preds = %184, %171
  %187 = phi i64 [ %183, %171 ], [ %185, %184 ]
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %318, %186
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %321

193:                                              ; preds = %189
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %210, 128
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %265

213:                                              ; preds = %193
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i8* @USBH_AllocPipe(%struct.TYPE_19__* %233, i32 %236)
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 6
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 6
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @USB_EP_TYPE_INTR, align 4
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @USBH_OpenPipe(%struct.TYPE_19__* %240, i8* %243, i32 %246, i32 %250, i32 %254, i32 %255, i32 %258)
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 6
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @USBH_LL_SetToggle(%struct.TYPE_19__* %260, i8* %263, i32 0)
  br label %317

265:                                              ; preds = %193
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %269, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %276, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 3
  store i32 %282, i32* %284, align 4
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = call i8* @USBH_AllocPipe(%struct.TYPE_19__* %285, i32 %288)
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 4
  store i8* %289, i8** %291, align 8
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 4
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @USB_EP_TYPE_INTR, align 4
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @USBH_OpenPipe(%struct.TYPE_19__* %292, i8* %295, i32 %298, i32 %302, i32 %306, i32 %307, i32 %310)
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 4
  %315 = load i8*, i8** %314, align 8
  %316 = call i32 @USBH_LL_SetToggle(%struct.TYPE_19__* %312, i8* %315, i32 0)
  br label %317

317:                                              ; preds = %265, %213
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %5, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %5, align 4
  br label %189

321:                                              ; preds = %189
  %322 = load i32, i32* @USBH_OK, align 4
  store i32 %322, i32* %7, align 4
  br label %323

323:                                              ; preds = %321, %20
  %324 = load i32, i32* %7, align 4
  store i32 %324, i32* %2, align 4
  br label %325

325:                                              ; preds = %323, %85
  %326 = load i32, i32* %2, align 4
  ret i32 %326
}

declare dso_local i32 @USBH_FindInterface(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @USBH_DbgLog(i8*, i32) #1

declare dso_local i32 @USBH_SelectInterface(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @USBH_malloc(i32) #1

declare dso_local i32 @USBH_UsrLog(i8*) #1

declare dso_local i8* @USBH_AllocPipe(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @USBH_OpenPipe(%struct.TYPE_19__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @USBH_LL_SetToggle(%struct.TYPE_19__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
