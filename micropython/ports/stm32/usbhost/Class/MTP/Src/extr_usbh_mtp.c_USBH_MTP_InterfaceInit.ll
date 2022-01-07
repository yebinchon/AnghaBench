; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp.c_USBH_MTP_InterfaceInit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp.c_USBH_MTP_InterfaceInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_24__, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }

@USBH_OK = common dso_local global i32 0, align 4
@USB_MTP_CLASS = common dso_local global i32 0, align 4
@USBH_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Cannot Find the interface for Still Image Class.\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot allocate RAM for MTP Handle\00", align 1
@USB_EP_TYPE_INTR = common dso_local global i32 0, align 4
@USB_EP_TYPE_BULK = common dso_local global i32 0, align 4
@MTP_OPENSESSION = common dso_local global i32 0, align 4
@MTP_EVENTS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @USBH_MTP_InterfaceInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_MTP_InterfaceInit(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %8 = load i32, i32* @USBH_OK, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %10 = load i32, i32* @USB_MTP_CLASS, align 4
  %11 = call i32 @USBH_FindInterface(%struct.TYPE_25__* %9, i32 %10, i32 1, i32 1)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 255
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @USBH_FAIL, align 4
  store i32 %15, i32* %4, align 4
  %16 = call i32 @USBH_DbgLog(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %271

17:                                               ; preds = %1
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @USBH_SelectInterface(%struct.TYPE_25__* %18, i32 %19)
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %22 = call i32 @MTP_FindCtlEndpoint(%struct.TYPE_25__* %21)
  store i32 %22, i32* %6, align 4
  %23 = call i64 @USBH_malloc(i32 72)
  %24 = inttoptr i64 %23 to %struct.TYPE_26__*
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  store %struct.TYPE_26__* %24, %struct.TYPE_26__** %28, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %32, align 8
  store %struct.TYPE_26__* %33, %struct.TYPE_26__** %7, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %35 = icmp eq %struct.TYPE_26__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %17
  %37 = load i32, i32* @USBH_FAIL, align 4
  store i32 %37, i32* %4, align 4
  %38 = call i32 @USBH_DbgLog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %17
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 10
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @USBH_AllocPipe(%struct.TYPE_25__* %74, i32 %77)
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 9
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 9
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @USB_EP_TYPE_INTR, align 4
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @USBH_OpenPipe(%struct.TYPE_25__* %99, i8* %102, i32 %105, i32 %109, i32 %113, i32 %114, i32 %117)
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 9
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @USBH_LL_SetToggle(%struct.TYPE_25__* %119, i8* %122, i32 0)
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %125 = call i32 @MTP_FindDataInEndpoint(%struct.TYPE_25__* %124)
  store i32 %125, i32* %6, align 4
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @USBH_AllocPipe(%struct.TYPE_25__* %160, i32 %163)
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 6
  store i8* %164, i8** %166, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 6
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @USB_EP_TYPE_BULK, align 4
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @USBH_OpenPipe(%struct.TYPE_25__* %167, i8* %170, i32 %173, i32 %177, i32 %181, i32 %182, i32 %185)
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 6
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @USBH_LL_SetToggle(%struct.TYPE_25__* %187, i8* %190, i32 0)
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %193 = call i32 @MTP_FindDataOutEndpoint(%struct.TYPE_25__* %192)
  store i32 %193, i32* %6, align 4
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 8
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @USBH_AllocPipe(%struct.TYPE_25__* %228, i32 %231)
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 3
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 3
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @USB_EP_TYPE_BULK, align 4
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @USBH_OpenPipe(%struct.TYPE_25__* %235, i8* %238, i32 %241, i32 %245, i32 %249, i32 %250, i32 %253)
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 3
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @USBH_LL_SetToggle(%struct.TYPE_25__* %255, i8* %258, i32 0)
  %260 = load i32, i32* @MTP_OPENSESSION, align 4
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 8
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 1
  store i64 0, i64* %264, align 8
  %265 = load i32, i32* @MTP_EVENTS_INIT, align 4
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 0
  store i32 %265, i32* %268, align 8
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %270 = call i32 @USBH_PTP_Init(%struct.TYPE_25__* %269)
  store i32 %270, i32* %2, align 4
  br label %273

271:                                              ; preds = %14
  %272 = load i32, i32* %4, align 4
  store i32 %272, i32* %2, align 4
  br label %273

273:                                              ; preds = %271, %39
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local i32 @USBH_FindInterface(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @USBH_DbgLog(i8*) #1

declare dso_local i32 @USBH_SelectInterface(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @MTP_FindCtlEndpoint(%struct.TYPE_25__*) #1

declare dso_local i64 @USBH_malloc(i32) #1

declare dso_local i8* @USBH_AllocPipe(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @USBH_OpenPipe(%struct.TYPE_25__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @USBH_LL_SetToggle(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @MTP_FindDataInEndpoint(%struct.TYPE_25__*) #1

declare dso_local i32 @MTP_FindDataOutEndpoint(%struct.TYPE_25__*) #1

declare dso_local i32 @USBH_PTP_Init(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
