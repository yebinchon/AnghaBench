; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc.c_USBH_MSC_InterfaceInit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc.c_USBH_MSC_InterfaceInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { i64, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_21__*, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i64, i64 }

@USBH_FAIL = common dso_local global i32 0, align 4
@MSC_TRANSPARENT = common dso_local global i32 0, align 4
@MSC_BOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot Find the interface for %s class.\00", align 1
@MSC_INIT = common dso_local global i32 0, align 4
@MSC_OK = common dso_local global i32 0, align 4
@MSC_REQ_IDLE = common dso_local global i32 0, align 4
@USB_EP_TYPE_BULK = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @USBH_MSC_InterfaceInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_MSC_InterfaceInit(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @USBH_FAIL, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MSC_TRANSPARENT, align 4
  %14 = load i32, i32* @MSC_BOT, align 4
  %15 = call i32 @USBH_FindInterface(%struct.TYPE_20__* %7, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 255
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @USBH_DbgLog(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @USBH_FAIL, align 4
  store i32 %25, i32* %4, align 4
  br label %301

26:                                               ; preds = %1
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @USBH_SelectInterface(%struct.TYPE_20__* %27, i32 %28)
  %30 = call i64 @USBH_malloc(i32 64)
  %31 = inttoptr i64 %30 to %struct.TYPE_21__*
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %35, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %5, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %26
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  br label %128

93:                                               ; preds = %26
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %93, %58
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i64 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 128
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %181

146:                                              ; preds = %128
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i64 1
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i64 1
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  br label %216

181:                                              ; preds = %128
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i64 1
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i64 1
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %181, %146
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 11
  store i64 0, i64* %218, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 10
  store i64 0, i64* %220, align 8
  %221 = load i32, i32* @MSC_INIT, align 4
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 9
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @MSC_OK, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 8
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* @MSC_REQ_IDLE, align 4
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 7
  store i32 %227, i32* %229, align 4
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i8* @USBH_AllocPipe(%struct.TYPE_20__* %230, i32 %233)
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 2
  store i8* %234, i8** %236, align 8
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i8* @USBH_AllocPipe(%struct.TYPE_20__* %237, i32 %240)
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 3
  store i8* %241, i8** %243, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %245 = call i32 @USBH_MSC_BOT_Init(%struct.TYPE_20__* %244)
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @USBH_memset(i32 %248, i32 0, i32 4)
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 2
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @USB_EP_TYPE_BULK, align 4
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @USBH_OpenPipe(%struct.TYPE_20__* %250, i8* %253, i32 %256, i32 %260, i32 %264, i32 %265, i32 %268)
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 3
  %273 = load i8*, i8** %272, align 8
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @USB_EP_TYPE_BULK, align 4
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @USBH_OpenPipe(%struct.TYPE_20__* %270, i8* %273, i32 %276, i32 %280, i32 %284, i32 %285, i32 %288)
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 3
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @USBH_LL_SetToggle(%struct.TYPE_20__* %290, i8* %293, i32 0)
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 2
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @USBH_LL_SetToggle(%struct.TYPE_20__* %295, i8* %298, i32 0)
  %300 = load i32, i32* @USBH_OK, align 4
  store i32 %300, i32* %4, align 4
  br label %301

301:                                              ; preds = %216, %18
  %302 = load i32, i32* %4, align 4
  ret i32 %302
}

declare dso_local i32 @USBH_FindInterface(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @USBH_DbgLog(i8*, i32) #1

declare dso_local i32 @USBH_SelectInterface(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @USBH_malloc(i32) #1

declare dso_local i8* @USBH_AllocPipe(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @USBH_MSC_BOT_Init(%struct.TYPE_20__*) #1

declare dso_local i32 @USBH_memset(i32, i32, i32) #1

declare dso_local i32 @USBH_OpenPipe(%struct.TYPE_20__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @USBH_LL_SetToggle(%struct.TYPE_20__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
