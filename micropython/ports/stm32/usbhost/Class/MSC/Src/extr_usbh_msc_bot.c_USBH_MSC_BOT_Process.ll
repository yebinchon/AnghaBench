; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc_bot.c_USBH_MSC_BOT_Process.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc_bot.c_USBH_MSC_BOT_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_21__, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_17__, i32, %struct.TYPE_20__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@BOT_CSW_CMD_FAILED = common dso_local global i32 0, align 4
@USBH_URB_IDLE = common dso_local global i32 0, align 4
@BOT_CBW_LENGTH = common dso_local global i32 0, align 4
@USBH_URB_DONE = common dso_local global i32 0, align 4
@USB_REQ_DIR_MASK = common dso_local global i32 0, align 4
@USB_D2H = common dso_local global i32 0, align 4
@USBH_URB_NOTREADY = common dso_local global i32 0, align 4
@USBH_URB_STALL = common dso_local global i32 0, align 4
@BOT_CSW_LENGTH = common dso_local global i32 0, align 4
@BOT_CMD_SEND = common dso_local global i32 0, align 4
@BOT_CSW_CMD_PASSED = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@USBH_FAIL = common dso_local global i32 0, align 4
@BOT_DIR_IN = common dso_local global i32 0, align 4
@USBH_UNRECOVERED_ERROR = common dso_local global i32 0, align 4
@BOT_DIR_OUT = common dso_local global i32 0, align 4
@USBH_URB_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_MSC_BOT_Process(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @USBH_BUSY, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @USBH_BUSY, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @BOT_CSW_CMD_FAILED, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @USBH_URB_IDLE, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %433 [
    i32 130, label %24
    i32 129, label %45
    i32 138, label %106
    i32 137, label %122
    i32 136, label %203
    i32 135, label %219
    i32 132, label %309
    i32 131, label %324
    i32 134, label %361
    i32 133, label %383
    i32 128, label %422
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  store i32 %25, i32* %30, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  store i32 129, i32* %33, align 4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BOT_CBW_LENGTH, align 4
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @USBH_BulkSendData(%struct.TYPE_22__* %34, i32 %39, i32 %40, i32 %43, i32 1)
  br label %434

45:                                               ; preds = %2
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @USBH_LL_GetURBState(%struct.TYPE_22__* %46, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @USBH_URB_DONE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %45
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %54
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @USB_REQ_DIR_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @USB_D2H, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  store i32 138, i32* %76, align 4
  br label %81

77:                                               ; preds = %62
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  store i32 136, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %73
  br label %86

82:                                               ; preds = %54
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  store i32 132, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %81
  br label %105

87:                                               ; preds = %45
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @USBH_URB_NOTREADY, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  store i32 130, i32* %94, align 4
  br label %104

95:                                               ; preds = %87
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @USBH_URB_STALL, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  store i32 133, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %91
  br label %105

105:                                              ; preds = %104, %86
  br label %434

106:                                              ; preds = %2
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @USBH_BulkReceiveData(%struct.TYPE_22__* %107, i32 %111, i32 %114, i32 %117)
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  store i32 137, i32* %121, align 4
  br label %434

122:                                              ; preds = %2
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @USBH_LL_GetURBState(%struct.TYPE_22__* %123, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @USBH_URB_DONE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %193

131:                                              ; preds = %122
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %131
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %145
  store i32 %150, i32* %148, align 4
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, %153
  store i32 %160, i32* %158, align 4
  br label %167

161:                                              ; preds = %131
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  store i32 0, i32* %166, align 4
  br label %167

167:                                              ; preds = %161, %142
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %167
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @USBH_BulkReceiveData(%struct.TYPE_22__* %176, i32 %180, i32 %183, i32 %186)
  br label %192

188:                                              ; preds = %167
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  store i32 132, i32* %191, align 4
  br label %192

192:                                              ; preds = %188, %175
  br label %202

193:                                              ; preds = %122
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @USBH_URB_STALL, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  store i32 134, i32* %200, align 4
  br label %201

201:                                              ; preds = %197, %193
  br label %202

202:                                              ; preds = %201, %192
  br label %434

203:                                              ; preds = %2
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @USBH_BulkSendData(%struct.TYPE_22__* %204, i32 %208, i32 %211, i32 %214, i32 1)
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  store i32 135, i32* %218, align 4
  br label %434

219:                                              ; preds = %2
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @USBH_LL_GetURBState(%struct.TYPE_22__* %220, i32 %223)
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @USBH_URB_DONE, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %290

228:                                              ; preds = %219
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = icmp sgt i32 %234, %237
  br i1 %238, label %239, label %258

239:                                              ; preds = %228
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, %242
  store i32 %247, i32* %245, align 4
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = sub nsw i32 %256, %250
  store i32 %257, i32* %255, align 4
  br label %264

258:                                              ; preds = %228
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  store i32 0, i32* %263, align 4
  br label %264

264:                                              ; preds = %258, %239
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %285

272:                                              ; preds = %264
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @USBH_BulkSendData(%struct.TYPE_22__* %273, i32 %277, i32 %280, i32 %283, i32 1)
  br label %289

285:                                              ; preds = %264
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  store i32 132, i32* %288, align 4
  br label %289

289:                                              ; preds = %285, %272
  br label %308

290:                                              ; preds = %219
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @USBH_URB_NOTREADY, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %290
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 0
  store i32 136, i32* %297, align 4
  br label %307

298:                                              ; preds = %290
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* @USBH_URB_STALL, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %298
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 0
  store i32 133, i32* %305, align 4
  br label %306

306:                                              ; preds = %302, %298
  br label %307

307:                                              ; preds = %306, %294
  br label %308

308:                                              ; preds = %307, %289
  br label %434

309:                                              ; preds = %2
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @BOT_CSW_LENGTH, align 4
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @USBH_BulkReceiveData(%struct.TYPE_22__* %310, i32 %315, i32 %316, i32 %319)
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 0
  store i32 131, i32* %323, align 4
  br label %434

324:                                              ; preds = %2
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @USBH_LL_GetURBState(%struct.TYPE_22__* %325, i32 %328)
  store i32 %329, i32* %8, align 4
  %330 = load i32, i32* %8, align 4
  %331 = load i32, i32* @USBH_URB_DONE, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %351

333:                                              ; preds = %324
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 0
  store i32 130, i32* %336, align 4
  %337 = load i32, i32* @BOT_CMD_SEND, align 4
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 1
  store i32 %337, i32* %340, align 4
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %342 = call i32 @USBH_MSC_DecodeCSW(%struct.TYPE_22__* %341)
  store i32 %342, i32* %7, align 4
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* @BOT_CSW_CMD_PASSED, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %348

346:                                              ; preds = %333
  %347 = load i32, i32* @USBH_OK, align 4
  store i32 %347, i32* %5, align 4
  br label %350

348:                                              ; preds = %333
  %349 = load i32, i32* @USBH_FAIL, align 4
  store i32 %349, i32* %5, align 4
  br label %350

350:                                              ; preds = %348, %346
  br label %360

351:                                              ; preds = %324
  %352 = load i32, i32* %8, align 4
  %353 = load i32, i32* @USBH_URB_STALL, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %359

355:                                              ; preds = %351
  %356 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i32 0, i32 0
  store i32 134, i32* %358, align 4
  br label %359

359:                                              ; preds = %355, %351
  br label %360

360:                                              ; preds = %359, %350
  br label %434

361:                                              ; preds = %2
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %363 = load i32, i32* %4, align 4
  %364 = load i32, i32* @BOT_DIR_IN, align 4
  %365 = call i32 @USBH_MSC_BOT_Abort(%struct.TYPE_22__* %362, i32 %363, i32 %364)
  store i32 %365, i32* %6, align 4
  %366 = load i32, i32* %6, align 4
  %367 = load i32, i32* @USBH_OK, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %373

369:                                              ; preds = %361
  %370 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 0
  store i32 132, i32* %372, align 4
  br label %382

373:                                              ; preds = %361
  %374 = load i32, i32* %6, align 4
  %375 = load i32, i32* @USBH_UNRECOVERED_ERROR, align 4
  %376 = icmp eq i32 %374, %375
  br i1 %376, label %377, label %381

377:                                              ; preds = %373
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %379, i32 0, i32 0
  store i32 128, i32* %380, align 4
  br label %381

381:                                              ; preds = %377, %373
  br label %382

382:                                              ; preds = %381, %369
  br label %434

383:                                              ; preds = %2
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %385 = load i32, i32* %4, align 4
  %386 = load i32, i32* @BOT_DIR_OUT, align 4
  %387 = call i32 @USBH_MSC_BOT_Abort(%struct.TYPE_22__* %384, i32 %385, i32 %386)
  store i32 %387, i32* %6, align 4
  %388 = load i32, i32* %6, align 4
  %389 = load i32, i32* @USBH_OK, align 4
  %390 = icmp eq i32 %388, %389
  br i1 %390, label %391, label %412

391:                                              ; preds = %383
  %392 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %393 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @USBH_LL_GetToggle(%struct.TYPE_22__* %392, i32 %395)
  store i32 %396, i32* %10, align 4
  %397 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %398 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* %10, align 4
  %402 = sub nsw i32 1, %401
  %403 = call i32 @USBH_LL_SetToggle(%struct.TYPE_22__* %397, i32 %400, i32 %402)
  %404 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @USBH_LL_SetToggle(%struct.TYPE_22__* %404, i32 %407, i32 0)
  %409 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %410 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 0
  store i32 134, i32* %411, align 4
  br label %421

412:                                              ; preds = %383
  %413 = load i32, i32* %6, align 4
  %414 = load i32, i32* @USBH_UNRECOVERED_ERROR, align 4
  %415 = icmp eq i32 %413, %414
  br i1 %415, label %416, label %420

416:                                              ; preds = %412
  %417 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %418 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %418, i32 0, i32 0
  store i32 128, i32* %419, align 4
  br label %420

420:                                              ; preds = %416, %412
  br label %421

421:                                              ; preds = %420, %391
  br label %434

422:                                              ; preds = %2
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %424 = call i32 @USBH_MSC_BOT_REQ_Reset(%struct.TYPE_22__* %423)
  store i32 %424, i32* %5, align 4
  %425 = load i32, i32* %5, align 4
  %426 = load i32, i32* @USBH_OK, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %432

428:                                              ; preds = %422
  %429 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %430 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %430, i32 0, i32 0
  store i32 130, i32* %431, align 4
  br label %432

432:                                              ; preds = %428, %422
  br label %434

433:                                              ; preds = %2
  br label %434

434:                                              ; preds = %433, %432, %421, %382, %360, %309, %308, %203, %202, %106, %105, %24
  %435 = load i32, i32* %5, align 4
  ret i32 %435
}

declare dso_local i32 @USBH_BulkSendData(%struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i32 @USBH_LL_GetURBState(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @USBH_BulkReceiveData(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @USBH_MSC_DecodeCSW(%struct.TYPE_22__*) #1

declare dso_local i32 @USBH_MSC_BOT_Abort(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @USBH_LL_GetToggle(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @USBH_LL_SetToggle(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @USBH_MSC_BOT_REQ_Reset(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
