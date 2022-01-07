; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_InterfaceInit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_InterfaceInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_26__, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_25__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_25__ = type { i32, i64, i8*, i32 }
%struct.TYPE_28__ = type { i64, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i64, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i64, i32, i32, i32 }

@USBH_FAIL = common dso_local global i64 0, align 8
@AC_CLASS = common dso_local global i32 0, align 4
@USB_SUBCLASS_AUDIOCONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot Find the interface for %s class.\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s class configuration not supported.\00", align 1
@AUDIO_MAX_AUDIO_STD_INTERFACE = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i64 0, align 8
@USB_EP_TYPE_ISOC = common dso_local global i32 0, align 4
@USB_EP_TYPE_INTR = common dso_local global i32 0, align 4
@AUDIO_REQ_INIT = common dso_local global i32 0, align 4
@AUDIO_CONTROL_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_29__*)* @USBH_AUDIO_InterfaceInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @USBH_AUDIO_InterfaceInit(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %11 = load i64, i64* @USBH_FAIL, align 8
  store i64 %11, i64* %3, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %13 = load i32, i32* @AC_CLASS, align 4
  %14 = load i32, i32* @USB_SUBCLASS_AUDIOCONTROL, align 4
  %15 = call i32 @USBH_FindInterface(%struct.TYPE_29__* %12, i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 255
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @USBH_DbgLog(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i64, i64* @USBH_FAIL, align 8
  store i64 %25, i64* %3, align 8
  br label %404

26:                                               ; preds = %1
  %27 = call i64 @USBH_malloc(i32 136)
  %28 = inttoptr i64 %27 to %struct.TYPE_30__*
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  store %struct.TYPE_30__* %28, %struct.TYPE_30__** %32, align 8
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %36, align 8
  store %struct.TYPE_30__* %37, %struct.TYPE_30__** %6, align 8
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %39 = call i32 @USBH_memset(%struct.TYPE_30__* %38, i32 0, i32 136)
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %41 = call i64 @USBH_AUDIO_FindAudioStreamingIN(%struct.TYPE_29__* %40)
  store i64 %41, i64* %4, align 8
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %43 = call i64 @USBH_AUDIO_FindAudioStreamingOUT(%struct.TYPE_29__* %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @USBH_FAIL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %26
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @USBH_FAIL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @USBH_DbgLog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %403

58:                                               ; preds = %47, %26
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %242, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @AUDIO_MAX_AUDIO_STD_INTERFACE, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %245

63:                                               ; preds = %59
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %152

73:                                               ; preds = %63
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %74, %82
  br i1 %83, label %84, label %151

84:                                               ; preds = %73
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %9, align 8
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 6
  store i32 %100, i32* %103, align 4
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 5
  store i32 %111, i32* %114, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 3
  store i32 %122, i32* %125, align 8
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 5
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  store i64 %133, i64* %136, align 8
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 4
  store i32 %144, i32* %147, align 4
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 1
  store i32 1, i32* %150, align 8
  br label %151

151:                                              ; preds = %84, %73
  br label %152

152:                                              ; preds = %151, %63
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %241

162:                                              ; preds = %152
  %163 = load i64, i64* %10, align 8
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp slt i64 %163, %171
  br i1 %172, label %173, label %240

173:                                              ; preds = %162
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 6
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %10, align 8
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 6
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 6
  store i32 %189, i32* %192, align 4
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %193, i32 0, i32 6
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 5
  store i32 %200, i32* %203, align 8
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 6
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 3
  store i32 %211, i32* %214, align 8
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 6
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 0
  store i64 %222, i64* %225, align 8
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 5
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 4
  store i32 %233, i32* %236, align 4
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 1
  store i32 1, i32* %239, align 8
  br label %240

240:                                              ; preds = %173, %162
  br label %241

241:                                              ; preds = %240, %152
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %8, align 4
  br label %59

245:                                              ; preds = %59
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %247 = call i64 @USBH_AUDIO_FindHIDControl(%struct.TYPE_29__* %246)
  %248 = load i64, i64* @USBH_OK, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 0
  store i32 1, i32* %253, align 8
  br label %254

254:                                              ; preds = %250, %245
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %256 = call i32 @USBH_AUDIO_ParseCSDescriptors(%struct.TYPE_29__* %255)
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %303

262:                                              ; preds = %254
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %264 = call i32 @USBH_AUDIO_BuildHeadphonePath(%struct.TYPE_29__* %263)
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %266 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = call i8* @USBH_AllocPipe(%struct.TYPE_29__* %265, i32 %269)
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 2
  store i8* %270, i8** %273, align 8
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %275 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 4
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @USB_EP_TYPE_ISOC, align 4
  %292 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 4
  %294 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @USBH_OpenPipe(%struct.TYPE_29__* %274, i8* %278, i32 %282, i32 %286, i32 %290, i32 %291, i64 %295)
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %298 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 2
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @USBH_LL_SetToggle(%struct.TYPE_29__* %297, i8* %301, i32 0)
  br label %303

303:                                              ; preds = %262, %254
  %304 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = icmp eq i32 %307, 1
  br i1 %308, label %309, label %350

309:                                              ; preds = %303
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %311 = call i32 @USBH_AUDIO_BuildMicrophonePath(%struct.TYPE_29__* %310)
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %313 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = call i8* @USBH_AllocPipe(%struct.TYPE_29__* %312, i32 %316)
  %318 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %319, i32 0, i32 2
  store i8* %317, i8** %320, align 8
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %322 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i32 0, i32 2
  %325 = load i8*, i8** %324, align 8
  %326 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @USB_EP_TYPE_ISOC, align 4
  %339 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @USBH_OpenPipe(%struct.TYPE_29__* %321, i8* %325, i32 %329, i32 %333, i32 %337, i32 %338, i64 %342)
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %345 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %346, i32 0, i32 2
  %348 = load i8*, i8** %347, align 8
  %349 = call i32 @USBH_LL_SetToggle(%struct.TYPE_29__* %344, i8* %348, i32 0)
  br label %350

350:                                              ; preds = %309, %303
  %351 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp eq i32 %354, 1
  br i1 %355, label %356, label %395

356:                                              ; preds = %350
  %357 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %358 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = call i8* @USBH_AllocPipe(%struct.TYPE_29__* %357, i32 %361)
  %363 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 2
  store i8* %362, i8** %365, align 8
  %366 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %367 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 2
  %370 = load i8*, i8** %369, align 8
  %371 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %376 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %380 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @USB_EP_TYPE_INTR, align 4
  %384 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = call i32 @USBH_OpenPipe(%struct.TYPE_29__* %366, i8* %370, i32 %374, i32 %378, i32 %382, i32 %383, i64 %387)
  %389 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %390 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %391, i32 0, i32 2
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @USBH_LL_SetToggle(%struct.TYPE_29__* %389, i8* %393, i32 0)
  br label %395

395:                                              ; preds = %356, %350
  %396 = load i32, i32* @AUDIO_REQ_INIT, align 4
  %397 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %397, i32 0, i32 1
  store i32 %396, i32* %398, align 4
  %399 = load i32, i32* @AUDIO_CONTROL_INIT, align 4
  %400 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 8
  %402 = load i64, i64* @USBH_OK, align 8
  store i64 %402, i64* %3, align 8
  br label %403

403:                                              ; preds = %395, %51
  br label %404

404:                                              ; preds = %403, %18
  %405 = load i64, i64* %3, align 8
  ret i64 %405
}

declare dso_local i32 @USBH_FindInterface(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32 @USBH_DbgLog(i8*, i32) #1

declare dso_local i64 @USBH_malloc(i32) #1

declare dso_local i32 @USBH_memset(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i64 @USBH_AUDIO_FindAudioStreamingIN(%struct.TYPE_29__*) #1

declare dso_local i64 @USBH_AUDIO_FindAudioStreamingOUT(%struct.TYPE_29__*) #1

declare dso_local i64 @USBH_AUDIO_FindHIDControl(%struct.TYPE_29__*) #1

declare dso_local i32 @USBH_AUDIO_ParseCSDescriptors(%struct.TYPE_29__*) #1

declare dso_local i32 @USBH_AUDIO_BuildHeadphonePath(%struct.TYPE_29__*) #1

declare dso_local i8* @USBH_AllocPipe(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @USBH_OpenPipe(%struct.TYPE_29__*, i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @USBH_LL_SetToggle(%struct.TYPE_29__*, i8*, i32) #1

declare dso_local i32 @USBH_AUDIO_BuildMicrophonePath(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
