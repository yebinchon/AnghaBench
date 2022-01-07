; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/CDC/Src/extr_usbh_cdc.c_USBH_CDC_InterfaceInit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/CDC/Src/extr_usbh_cdc.c_USBH_CDC_InterfaceInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_20__, i32, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_16__ = type { i32, i8*, i32 }

@USBH_FAIL = common dso_local global i32 0, align 4
@COMMUNICATION_INTERFACE_CLASS_CODE = common dso_local global i32 0, align 4
@ABSTRACT_CONTROL_MODEL = common dso_local global i32 0, align 4
@COMMON_AT_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Cannot Find the interface for Communication Interface Class.\00", align 1
@USB_EP_TYPE_INTR = common dso_local global i32 0, align 4
@DATA_INTERFACE_CLASS_CODE = common dso_local global i32 0, align 4
@RESERVED = common dso_local global i32 0, align 4
@NO_CLASS_SPECIFIC_PROTOCOL_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Cannot Find the interface for Data Interface Class.\00", align 1
@USB_EP_TYPE_BULK = common dso_local global i32 0, align 4
@CDC_IDLE_STATE = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @USBH_CDC_InterfaceInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_CDC_InterfaceInit(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %6 = load i32, i32* @USBH_FAIL, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %8 = load i32, i32* @COMMUNICATION_INTERFACE_CLASS_CODE, align 4
  %9 = load i32, i32* @ABSTRACT_CONTROL_MODEL, align 4
  %10 = load i32, i32* @COMMON_AT_COMMAND, align 4
  %11 = call i32 @USBH_FindInterface(%struct.TYPE_23__* %7, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 255
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @USBH_DbgLog(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %383

21:                                               ; preds = %1
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @USBH_SelectInterface(%struct.TYPE_23__* %22, i32 %23)
  %25 = call i64 @USBH_malloc(i32 64)
  %26 = inttoptr i64 %25 to %struct.TYPE_24__*
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %30, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %34, align 8
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %5, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %21
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %51, %21
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @USBH_AllocPipe(%struct.TYPE_23__* %85, i32 %89)
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @USB_EP_TYPE_INTR, align 4
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @USBH_OpenPipe(%struct.TYPE_23__* %94, i8* %98, i32 %102, i32 %106, i32 %110, i32 %111, i32 %115)
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @USBH_LL_SetToggle(%struct.TYPE_23__* %117, i8* %121, i32 0)
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %124 = load i32, i32* @DATA_INTERFACE_CLASS_CODE, align 4
  %125 = load i32, i32* @RESERVED, align 4
  %126 = load i32, i32* @NO_CLASS_SPECIFIC_PROTOCOL_CODE, align 4
  %127 = call i32 @USBH_FindInterface(%struct.TYPE_23__* %123, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp eq i32 %128, 255
  br i1 %129, label %130, label %137

130:                                              ; preds = %84
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @USBH_DbgLog(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %382

137:                                              ; preds = %84
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 128
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %186

153:                                              ; preds = %137
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %173, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 4
  store i32 %182, i32* %185, align 8
  br label %219

186:                                              ; preds = %137
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 4
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 5
  store i32 %215, i32* %218, align 4
  br label %219

219:                                              ; preds = %186, %153
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %223, align 8
  %225 = load i32, i32* %4, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i64 1
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 128
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %268

235:                                              ; preds = %219
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %239, align 8
  %241 = load i32, i32* %4, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i64 1
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 0
  store i32 %248, i32* %251, align 8
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %255, align 8
  %257 = load i32, i32* %4, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i64 1
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 4
  store i32 %264, i32* %267, align 8
  br label %301

268:                                              ; preds = %219
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %272, align 8
  %274 = load i32, i32* %4, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i64 1
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 1
  store i32 %281, i32* %284, align 4
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %288, align 8
  %290 = load i32, i32* %4, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i64 1
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 5
  store i32 %297, i32* %300, align 4
  br label %301

301:                                              ; preds = %268, %235
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i8* @USBH_AllocPipe(%struct.TYPE_23__* %302, i32 %306)
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 3
  store i8* %307, i8** %310, align 8
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i8* @USBH_AllocPipe(%struct.TYPE_23__* %311, i32 %315)
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 2
  store i8* %316, i8** %319, align 8
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 3
  %324 = load i8*, i8** %323, align 8
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @USB_EP_TYPE_BULK, align 4
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 5
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @USBH_OpenPipe(%struct.TYPE_23__* %320, i8* %324, i32 %328, i32 %332, i32 %336, i32 %337, i32 %341)
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 2
  %347 = load i8*, i8** %346, align 8
  %348 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %357 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @USB_EP_TYPE_BULK, align 4
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @USBH_OpenPipe(%struct.TYPE_23__* %343, i8* %347, i32 %351, i32 %355, i32 %359, i32 %360, i32 %364)
  %366 = load i32, i32* @CDC_IDLE_STATE, align 4
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 1
  store i32 %366, i32* %368, align 8
  %369 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 3
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 @USBH_LL_SetToggle(%struct.TYPE_23__* %369, i8* %373, i32 0)
  %375 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %376 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 2
  %379 = load i8*, i8** %378, align 8
  %380 = call i32 @USBH_LL_SetToggle(%struct.TYPE_23__* %375, i8* %379, i32 0)
  %381 = load i32, i32* @USBH_OK, align 4
  store i32 %381, i32* %3, align 4
  br label %382

382:                                              ; preds = %301, %130
  br label %383

383:                                              ; preds = %382, %14
  %384 = load i32, i32* %3, align 4
  ret i32 %384
}

declare dso_local i32 @USBH_FindInterface(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @USBH_DbgLog(i8*, i32) #1

declare dso_local i32 @USBH_SelectInterface(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @USBH_malloc(i32) #1

declare dso_local i8* @USBH_AllocPipe(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @USBH_OpenPipe(%struct.TYPE_23__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @USBH_LL_SetToggle(%struct.TYPE_23__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
