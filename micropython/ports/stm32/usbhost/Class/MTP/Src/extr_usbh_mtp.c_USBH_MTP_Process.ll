; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp.c_USBH_MTP_Process.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp.c_USBH_MTP_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32)*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64, i32, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { %struct.TYPE_23__*, %struct.TYPE_16__, %struct.TYPE_17__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MTP Session #0 Opened\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c">>>>> MTP Device Information\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Standard version : %x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Vendor ExtID : %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"MTP\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"NOT SUPPORTED\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Functional mode : %s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Vendor\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Number of Supported Operation(s) : %d\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Number of Supported Events(s) : %d\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Number of Supported Proprieties : %d\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Manufacturer : %s\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Model : %s\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Device version : %s\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Serial number : %s\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Number of storage ID items : %d\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"storage#%d ID : %x\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Volume#%lu: %s   [%s]\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"MTP Class initialized.\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"%s is default storage unit\00", align 1
@HOST_USER_CLASS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @USBH_MTP_Process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_MTP_Process(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %6 = load i32, i32* @USBH_BUSY, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %4, align 8
  store i64 0, i64* %5, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %246 [
    i32 128, label %15
    i32 132, label %26
    i32 131, label %106
    i32 130, label %150
    i32 129, label %243
  ]

15:                                               ; preds = %1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %17 = call i32 @USBH_PTP_OpenSession(%struct.TYPE_21__* %16, i32 1)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @USBH_OK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  store i32 132, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %15
  br label %248

26:                                               ; preds = %1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 2
  %31 = call i32 @USBH_PTP_GetDeviceInfo(%struct.TYPE_21__* %27, %struct.TYPE_17__* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @USBH_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %26
  %36 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 6
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)
  %51 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  %60 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %59)
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %89)
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %101)
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  store i32 131, i32* %104, align 8
  br label %105

105:                                              ; preds = %35, %26
  br label %248

106:                                              ; preds = %1
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = call i32 @USBH_PTP_GetStorageIds(%struct.TYPE_21__* %107, %struct.TYPE_16__* %110)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @USBH_OK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %149

115:                                              ; preds = %106
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i64 %120)
  store i64 0, i64* %5, align 8
  br label %122

122:                                              ; preds = %141, %115
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %123, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %122
  %131 = load i64, i64* %5, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %5, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @USBH_DbgLog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i64 %131, i32 %139)
  br label %141

141:                                              ; preds = %130
  %142 = load i64, i64* %5, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %5, align 8
  br label %122

144:                                              ; preds = %122
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  store i32 130, i32* %148, align 8
  br label %149

149:                                              ; preds = %144, %106
  br label %248

150:                                              ; preds = %1
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %164, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i64 %168
  %170 = call i32 @USBH_PTP_GetStorageInfo(%struct.TYPE_21__* %151, i32 %161, %struct.TYPE_23__* %169)
  store i32 %170, i32* %3, align 4
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @USBH_OK, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %242

174:                                              ; preds = %150
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %180, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %190, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i64 %177, i32 %187, i32 %197)
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %200, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp uge i64 %202, %207
  br i1 %208, label %209, label %241

209:                                              ; preds = %174
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  store i32 129, i32* %211, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 2
  store i32 1, i32* %213, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  store i32 %222, i32* %225, align 8
  %226 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 %233)
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 0
  %237 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %236, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %239 = load i32, i32* @HOST_USER_CLASS_ACTIVE, align 4
  %240 = call i32 %237(%struct.TYPE_21__* %238, i32 %239)
  br label %241

241:                                              ; preds = %209, %174
  br label %242

242:                                              ; preds = %241, %150
  br label %248

243:                                              ; preds = %1
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %245 = call i32 @USBH_MTP_Events(%struct.TYPE_21__* %244)
  br label %246

246:                                              ; preds = %1, %243
  %247 = load i32, i32* @USBH_OK, align 4
  store i32 %247, i32* %3, align 4
  br label %248

248:                                              ; preds = %246, %242, %149, %105, %25
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @USBH_PTP_OpenSession(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @USBH_UsrLog(i8*, ...) #1

declare dso_local i32 @USBH_PTP_GetDeviceInfo(%struct.TYPE_21__*, %struct.TYPE_17__*) #1

declare dso_local i32 @USBH_DbgLog(i8*, ...) #1

declare dso_local i32 @USBH_PTP_GetStorageIds(%struct.TYPE_21__*, %struct.TYPE_16__*) #1

declare dso_local i32 @USBH_PTP_GetStorageInfo(%struct.TYPE_21__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @USBH_MTP_Events(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
