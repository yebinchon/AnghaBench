; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc.c_USBH_MSC_Process.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc.c_USBH_MSC_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32)*, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64, i64, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i8*, i32, i8*, %struct.TYPE_20__, %struct.TYPE_14__, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@USBH_BUSY = common dso_local global i8* null, align 8
@MSC_NOT_READY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"LUN #%d: \00", align 1
@USBH_OK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Inquiry Vendor  : %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Inquiry Product : %s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Inquiry Version : %s\00", align 1
@USBH_FAIL = common dso_local global i8* null, align 8
@USBH_UNRECOVERED_ERROR = common dso_local global i8* null, align 8
@MSC_ERROR = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Mass Storage Device ready\00", align 1
@MSC_OK = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Mass Storage Device NOT ready\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Mass Storage Device capacity : %lu MB\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Block number : %lu\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Block Size   : %lu\00", align 1
@SCSI_SENSE_KEY_UNIT_ATTENTION = common dso_local global i32 0, align 4
@SCSI_SENSE_KEY_NOT_READY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"Sense Key  : %x\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Additional Sense Code : %x\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Additional Sense Code Qualifier: %x\00", align 1
@HOST_USER_CLASS_ACTIVE = common dso_local global i32 0, align 4
@USBH_CLASS_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*)* @USBH_MSC_Process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @USBH_MSC_Process(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %3, align 8
  %12 = load i8*, i8** @USBH_BUSY, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** @USBH_BUSY, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** @USBH_BUSY, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %614 [
    i32 133, label %18
    i32 134, label %612
  ]

18:                                               ; preds = %1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %600

26:                                               ; preds = %18
  %27 = load i8*, i8** @MSC_NOT_READY, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  store i8* %27, i8** %35, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %598 [
    i32 133, label %45
    i32 131, label %64
    i32 129, label %160
    i32 132, label %313
    i32 130, label %448
    i32 128, label %593
  ]

45:                                               ; preds = %26
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  store i32 131, i32* %57, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 10000
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %26, %45
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 6
  %77 = call i8* @USBH_MSC_SCSI_Inquiry(%struct.TYPE_18__* %65, i64 %68, %struct.TYPE_15__* %76)
  store i8* %77, i8** %5, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** @USBH_OK, align 8
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %81, label %123

81:                                               ; preds = %64
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  store i32 129, i32* %122, align 8
  br label %123

123:                                              ; preds = %81, %64
  %124 = load i8*, i8** %5, align 8
  %125 = load i8*, i8** @USBH_FAIL, align 8
  %126 = icmp eq i8* %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  store i32 130, i32* %135, align 8
  br label %159

136:                                              ; preds = %123
  %137 = load i8*, i8** %5, align 8
  %138 = load i8*, i8** @USBH_UNRECOVERED_ERROR, align 8
  %139 = icmp eq i8* %137, %138
  br i1 %139, label %140, label %158

140:                                              ; preds = %136
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  store i32 134, i32* %148, align 8
  %149 = load i8*, i8** @MSC_ERROR, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 3
  store i8* %149, i8** %157, align 8
  br label %158

158:                                              ; preds = %140, %136
  br label %159

159:                                              ; preds = %158, %127
  br label %599

160:                                              ; preds = %26
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i8* @USBH_MSC_SCSI_TestUnitReady(%struct.TYPE_18__* %161, i64 %164)
  store i8* %165, i8** %6, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = load i8*, i8** @USBH_OK, align 8
  %168 = icmp eq i8* %166, %167
  br i1 %168, label %169, label %227

169:                                              ; preds = %160
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = load i8*, i8** @USBH_OK, align 8
  %180 = icmp ne i8* %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %169
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %183, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  store i32 1, i32* %189, align 8
  %190 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %200

191:                                              ; preds = %169
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 2
  store i32 0, i32* %199, align 8
  br label %200

200:                                              ; preds = %191, %181
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  store i32 132, i32* %208, align 8
  %209 = load i8*, i8** @MSC_OK, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %211, align 8
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 3
  store i8* %209, i8** %217, align 8
  %218 = load i8*, i8** @USBH_OK, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %220, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  store i8* %218, i8** %226, align 8
  br label %227

227:                                              ; preds = %200, %160
  %228 = load i8*, i8** %6, align 8
  %229 = load i8*, i8** @USBH_FAIL, align 8
  %230 = icmp eq i8* %228, %229
  br i1 %230, label %231, label %289

231:                                              ; preds = %227
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %233, align 8
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = load i8*, i8** @USBH_FAIL, align 8
  %242 = icmp ne i8* %240, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %231
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %245, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 2
  store i32 1, i32* %251, align 8
  %252 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %262

253:                                              ; preds = %231
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 3
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %255, align 8
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 2
  store i32 0, i32* %261, align 8
  br label %262

262:                                              ; preds = %253, %243
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 3
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %264, align 8
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 0
  store i32 130, i32* %270, align 8
  %271 = load i8*, i8** @MSC_NOT_READY, align 8
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %273, align 8
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 3
  store i8* %271, i8** %279, align 8
  %280 = load i8*, i8** @USBH_FAIL, align 8
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 3
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %282, align 8
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 1
  store i8* %280, i8** %288, align 8
  br label %312

289:                                              ; preds = %227
  %290 = load i8*, i8** %6, align 8
  %291 = load i8*, i8** @USBH_UNRECOVERED_ERROR, align 8
  %292 = icmp eq i8* %290, %291
  br i1 %292, label %293, label %311

293:                                              ; preds = %289
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 3
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %295, align 8
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 0
  store i32 134, i32* %301, align 8
  %302 = load i8*, i8** @MSC_ERROR, align 8
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 3
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %304, align 8
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 3
  store i8* %302, i8** %310, align 8
  br label %311

311:                                              ; preds = %293, %289
  br label %312

312:                                              ; preds = %311, %262
  br label %599

313:                                              ; preds = %26
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 3
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %319, align 8
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 5
  %326 = call i8* @USBH_MSC_SCSI_ReadCapacity(%struct.TYPE_18__* %314, i64 %317, %struct.TYPE_14__* %325)
  store i8* %326, i8** %5, align 8
  %327 = load i8*, i8** %5, align 8
  %328 = load i8*, i8** @USBH_OK, align 8
  %329 = icmp eq i8* %327, %328
  br i1 %329, label %330, label %410

330:                                              ; preds = %313
  %331 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %331, i32 0, i32 3
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %332, align 8
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %341, label %388

341:                                              ; preds = %330
  %342 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %342, i32 0, i32 3
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %343, align 8
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %344, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 3
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %353, align 8
  %355 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %358, i32 0, i32 5
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = mul nsw i32 %351, %361
  %363 = sdiv i32 %362, 1024
  %364 = sdiv i32 %363, 1024
  %365 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %364)
  %366 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %366, i32 0, i32 3
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %367, align 8
  %369 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 5
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %375)
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 3
  %379 = load %struct.TYPE_17__*, %struct.TYPE_17__** %378, align 8
  %380 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 5
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %386)
  br label %388

388:                                              ; preds = %341, %330
  %389 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %389, i32 0, i32 3
  %391 = load %struct.TYPE_17__*, %struct.TYPE_17__** %390, align 8
  %392 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 0
  store i32 134, i32* %396, align 8
  %397 = load i8*, i8** @MSC_OK, align 8
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i32 0, i32 3
  %400 = load %struct.TYPE_17__*, %struct.TYPE_17__** %399, align 8
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %400, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 3
  store i8* %397, i8** %405, align 8
  %406 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = add i64 %408, 1
  store i64 %409, i64* %407, align 8
  br label %447

410:                                              ; preds = %313
  %411 = load i8*, i8** %5, align 8
  %412 = load i8*, i8** @USBH_FAIL, align 8
  %413 = icmp eq i8* %411, %412
  br i1 %413, label %414, label %423

414:                                              ; preds = %410
  %415 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 3
  %417 = load %struct.TYPE_17__*, %struct.TYPE_17__** %416, align 8
  %418 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %418, i32 0, i32 1
  %420 = load i64, i64* %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %417, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %421, i32 0, i32 0
  store i32 130, i32* %422, align 8
  br label %446

423:                                              ; preds = %410
  %424 = load i8*, i8** %5, align 8
  %425 = load i8*, i8** @USBH_UNRECOVERED_ERROR, align 8
  %426 = icmp eq i8* %424, %425
  br i1 %426, label %427, label %445

427:                                              ; preds = %423
  %428 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %428, i32 0, i32 3
  %430 = load %struct.TYPE_17__*, %struct.TYPE_17__** %429, align 8
  %431 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %430, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %434, i32 0, i32 0
  store i32 134, i32* %435, align 8
  %436 = load i8*, i8** @MSC_ERROR, align 8
  %437 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %437, i32 0, i32 3
  %439 = load %struct.TYPE_17__*, %struct.TYPE_17__** %438, align 8
  %440 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %440, i32 0, i32 1
  %442 = load i64, i64* %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %443, i32 0, i32 3
  store i8* %436, i8** %444, align 8
  br label %445

445:                                              ; preds = %427, %423
  br label %446

446:                                              ; preds = %445, %414
  br label %447

447:                                              ; preds = %446, %388
  br label %599

448:                                              ; preds = %26
  %449 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %450 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %453, i32 0, i32 3
  %455 = load %struct.TYPE_17__*, %struct.TYPE_17__** %454, align 8
  %456 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %456, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %455, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %459, i32 0, i32 4
  %461 = call i8* @USBH_MSC_SCSI_RequestSense(%struct.TYPE_18__* %449, i64 %452, %struct.TYPE_20__* %460)
  store i8* %461, i8** %5, align 8
  %462 = load i8*, i8** %5, align 8
  %463 = load i8*, i8** @USBH_OK, align 8
  %464 = icmp eq i8* %462, %463
  br i1 %464, label %465, label %555

465:                                              ; preds = %448
  %466 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %467 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %466, i32 0, i32 3
  %468 = load %struct.TYPE_17__*, %struct.TYPE_17__** %467, align 8
  %469 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %470 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %469, i32 0, i32 1
  %471 = load i64, i64* %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %468, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %472, i32 0, i32 4
  %474 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @SCSI_SENSE_KEY_UNIT_ATTENTION, align 4
  %477 = icmp eq i32 %475, %476
  br i1 %477, label %491, label %478

478:                                              ; preds = %465
  %479 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %480 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %479, i32 0, i32 3
  %481 = load %struct.TYPE_17__*, %struct.TYPE_17__** %480, align 8
  %482 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i32 0, i32 1
  %484 = load i64, i64* %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %481, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %485, i32 0, i32 4
  %487 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = load i32, i32* @SCSI_SENSE_KEY_NOT_READY, align 4
  %490 = icmp eq i32 %488, %489
  br i1 %490, label %491, label %509

491:                                              ; preds = %478, %465
  %492 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %493 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 4
  %495 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %495, i32 0, i32 4
  %497 = load i32, i32* %496, align 8
  %498 = icmp sle i32 %494, %497
  br i1 %498, label %499, label %508

499:                                              ; preds = %491
  %500 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %500, i32 0, i32 3
  %502 = load %struct.TYPE_17__*, %struct.TYPE_17__** %501, align 8
  %503 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %503, i32 0, i32 1
  %505 = load i64, i64* %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %502, i64 %505
  %507 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %506, i32 0, i32 0
  store i32 129, i32* %507, align 8
  br label %599

508:                                              ; preds = %491
  br label %509

509:                                              ; preds = %508, %478
  %510 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %510, i32 0, i32 3
  %512 = load %struct.TYPE_17__*, %struct.TYPE_17__** %511, align 8
  %513 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %514 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %512, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %516, i32 0, i32 4
  %518 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %517, i32 0, i32 2
  %519 = load i32, i32* %518, align 8
  %520 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %519)
  %521 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %521, i32 0, i32 3
  %523 = load %struct.TYPE_17__*, %struct.TYPE_17__** %522, align 8
  %524 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %525 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %524, i32 0, i32 1
  %526 = load i64, i64* %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %523, i64 %526
  %528 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %527, i32 0, i32 4
  %529 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 4
  %531 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %530)
  %532 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %533 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %532, i32 0, i32 3
  %534 = load %struct.TYPE_17__*, %struct.TYPE_17__** %533, align 8
  %535 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %536 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %535, i32 0, i32 1
  %537 = load i64, i64* %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %534, i64 %537
  %539 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %538, i32 0, i32 4
  %540 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %541)
  %543 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %543, i32 0, i32 3
  %545 = load %struct.TYPE_17__*, %struct.TYPE_17__** %544, align 8
  %546 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %547 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %546, i32 0, i32 1
  %548 = load i64, i64* %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %545, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %549, i32 0, i32 0
  store i32 134, i32* %550, align 8
  %551 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %552 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %551, i32 0, i32 1
  %553 = load i64, i64* %552, align 8
  %554 = add i64 %553, 1
  store i64 %554, i64* %552, align 8
  br label %555

555:                                              ; preds = %509, %448
  %556 = load i8*, i8** %5, align 8
  %557 = load i8*, i8** @USBH_FAIL, align 8
  %558 = icmp eq i8* %556, %557
  br i1 %558, label %559, label %569

559:                                              ; preds = %555
  %560 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %561 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %562 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %561, i32 0, i32 3
  %563 = load %struct.TYPE_17__*, %struct.TYPE_17__** %562, align 8
  %564 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %565 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %564, i32 0, i32 1
  %566 = load i64, i64* %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %563, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %567, i32 0, i32 0
  store i32 128, i32* %568, align 8
  br label %592

569:                                              ; preds = %555
  %570 = load i8*, i8** %5, align 8
  %571 = load i8*, i8** @USBH_UNRECOVERED_ERROR, align 8
  %572 = icmp eq i8* %570, %571
  br i1 %572, label %573, label %591

573:                                              ; preds = %569
  %574 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %574, i32 0, i32 3
  %576 = load %struct.TYPE_17__*, %struct.TYPE_17__** %575, align 8
  %577 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %578 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %577, i32 0, i32 1
  %579 = load i64, i64* %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %576, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %580, i32 0, i32 0
  store i32 134, i32* %581, align 8
  %582 = load i8*, i8** @MSC_ERROR, align 8
  %583 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %584 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %583, i32 0, i32 3
  %585 = load %struct.TYPE_17__*, %struct.TYPE_17__** %584, align 8
  %586 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %587 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %586, i32 0, i32 1
  %588 = load i64, i64* %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %585, i64 %588
  %590 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %589, i32 0, i32 3
  store i8* %582, i8** %590, align 8
  br label %591

591:                                              ; preds = %573, %569
  br label %592

592:                                              ; preds = %591, %559
  br label %599

593:                                              ; preds = %26
  %594 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %595 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %594, i32 0, i32 1
  %596 = load i64, i64* %595, align 8
  %597 = add i64 %596, 1
  store i64 %597, i64* %595, align 8
  br label %599

598:                                              ; preds = %26
  br label %599

599:                                              ; preds = %598, %593, %592, %499, %447, %312, %159
  br label %611

600:                                              ; preds = %18
  %601 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %602 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %601, i32 0, i32 1
  store i64 0, i64* %602, align 8
  %603 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %604 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %603, i32 0, i32 0
  store i32 134, i32* %604, align 8
  %605 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %606 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %605, i32 0, i32 0
  %607 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %606, align 8
  %608 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %609 = load i32, i32* @HOST_USER_CLASS_ACTIVE, align 4
  %610 = call i32 %607(%struct.TYPE_18__* %608, i32 %609)
  br label %611

611:                                              ; preds = %600, %599
  br label %615

612:                                              ; preds = %1
  %613 = load i8*, i8** @USBH_OK, align 8
  store i8* %613, i8** %4, align 8
  br label %615

614:                                              ; preds = %1
  br label %615

615:                                              ; preds = %614, %612, %611
  %616 = load i8*, i8** %4, align 8
  ret i8* %616
}

declare dso_local i32 @USBH_UsrLog(i8*, ...) #1

declare dso_local i8* @USBH_MSC_SCSI_Inquiry(%struct.TYPE_18__*, i64, %struct.TYPE_15__*) #1

declare dso_local i8* @USBH_MSC_SCSI_TestUnitReady(%struct.TYPE_18__*, i64) #1

declare dso_local i8* @USBH_MSC_SCSI_ReadCapacity(%struct.TYPE_18__*, i64, %struct.TYPE_14__*) #1

declare dso_local i8* @USBH_MSC_SCSI_RequestSense(%struct.TYPE_18__*, i64, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
