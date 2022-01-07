; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversusb.h_usb_irqhandler.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversusb.h_usb_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@USBx = common dso_local global %struct.TYPE_8__* null, align 8
@USBx_DEVICE = common dso_local global %struct.TYPE_7__* null, align 8
@USB_OTG_GINTSTS_CIDSCHG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"connector ID status change\0A\00", align 1
@USB_OTG_GINTSTS_ESUSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ESUSP detected\0A\00", align 1
@USB_OTG_GINTSTS_USBRST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"USB reset\0A\00", align 1
@USB_OTG_GINTSTS_ENUMDNE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"enumeration done\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_OTG_GINTSTS_OTGINT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"OTG int:\00", align 1
@USB_OTG_GINTSTS_RXFLVL = common dso_local global i32 0, align 4
@USB_OTG_GRXSTSP_PKTSTS = common dso_local global i32 0, align 4
@STS_DATA_UPDT = common dso_local global i32 0, align 4
@USB_OTG_GRXSTSP_EPNUM = common dso_local global i32 0, align 4
@USB_OTG_GRXSTSP_BCNT = common dso_local global i32 0, align 4
@usbdata = common dso_local global i32 0, align 4
@STS_SETUP_UPDT = common dso_local global i32 0, align 4
@setup = common dso_local global i32 0, align 4
@USB_OTG_GINTSTS_BOUTNAKEFF = common dso_local global i32 0, align 4
@USB_OTG_GINTSTS_GINAKEFF = common dso_local global i32 0, align 4
@USB_OTG_DCTL_CGONAK = common dso_local global i32 0, align 4
@USB_OTG_DCTL_CGINAK = common dso_local global i32 0, align 4
@USB_OTG_GINTSTS_SRQINT = common dso_local global i32 0, align 4
@USB_OTG_GINTSTS_OEPINT = common dso_local global i32 0, align 4
@USB_OTG_DOEPINT_XFRC = common dso_local global i32 0, align 4
@USB_OTG_DOEPCTL_EPENA = common dso_local global i32 0, align 4
@USB_OTG_DOEPCTL_CNAK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"OUTEP3 error \00", align 1
@USB_OTG_DIEPINT_XFRC = common dso_local global i32 0, align 4
@USB_OTG_DOEPTSIZ_STUPCNT = common dso_local global i32 0, align 4
@USB_OTG_DOEPTSIZ_PKTCNT = common dso_local global i32 0, align 4
@USB_OTG_DOEPINT_STUP = common dso_local global i32 0, align 4
@USB_OTG_GINTSTS_IEPINT = common dso_local global i32 0, align 4
@current_int0_alt_setting = common dso_local global i32 0, align 4
@USB_OTG_DIEPMSK_ITTXFEMSK = common dso_local global i32 0, align 4
@resp = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"current_int0_alt_setting value invalid\0A\00", align 1
@ep0_txlen = common dso_local global i32 0, align 4
@USB_OTG_DTXFSTS_INEPTFSAV = common dso_local global i32 0, align 4
@ep0_txdata = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_irqhandler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %1, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @USBx_DEVICE, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @USB_OTG_GINTSTS_CIDSCHG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %0
  %24 = call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %0
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @USB_OTG_GINTSTS_ESUSP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @USB_OTG_GINTSTS_USBRST, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 (...) @usb_reset()
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @USB_OTG_GINTSTS_ENUMDNE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @USB_OTG_GINTSTS_OTGINT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @puth(i32 %57)
  %59 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @USB_OTG_GINTSTS_RXFLVL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %109

65:                                               ; preds = %60
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store volatile i32 %68, i32* %4, align 4
  %69 = load volatile i32, i32* %4, align 4
  %70 = load volatile i32, i32* @USB_OTG_GRXSTSP_PKTSTS, align 4
  %71 = and i32 %69, %70
  %72 = lshr i32 %71, 17
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @STS_DATA_UPDT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %65
  %77 = load volatile i32, i32* %4, align 4
  %78 = load volatile i32, i32* @USB_OTG_GRXSTSP_EPNUM, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %6, align 4
  %80 = load volatile i32, i32* %4, align 4
  %81 = load volatile i32, i32* @USB_OTG_GRXSTSP_BCNT, align 4
  %82 = and i32 %80, %81
  %83 = lshr i32 %82, 4
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @USB_ReadPacket(i32* @usbdata, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load i32, i32* @usbdata, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @usb_cb_ep2_out(i32 %89, i32 %90, i32 1)
  br label %92

92:                                               ; preds = %88, %76
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* @usbdata, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @usb_cb_ep3_out(i32 %96, i32 %97, i32 1)
  br label %99

99:                                               ; preds = %95, %92
  br label %108

100:                                              ; preds = %65
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @STS_SETUP_UPDT, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 @USB_ReadPacket(i32* @setup, i32 8)
  br label %107

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %104
  br label %108

108:                                              ; preds = %107, %99
  br label %109

109:                                              ; preds = %108, %60
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* @USB_OTG_GINTSTS_BOUTNAKEFF, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %1, align 4
  %116 = load i32, i32* @USB_OTG_GINTSTS_GINAKEFF, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114, %109
  %120 = load i32, i32* @USB_OTG_DCTL_CGONAK, align 4
  %121 = load i32, i32* @USB_OTG_DCTL_CGINAK, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** @USBx_DEVICE, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %119, %114
  %128 = load i32, i32* %1, align 4
  %129 = load i32, i32* @USB_OTG_GINTSTS_SRQINT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %127
  %134 = load i32, i32* %1, align 4
  %135 = load i32, i32* @USB_OTG_GINTSTS_OEPINT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %241

138:                                              ; preds = %133
  %139 = call %struct.TYPE_5__* @USBx_OUTEP(i32 2)
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @USB_OTG_DOEPINT_XFRC, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %138
  %146 = call %struct.TYPE_5__* @USBx_OUTEP(i32 2)
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  store i32 524352, i32* %147, align 4
  %148 = load i32, i32* @USB_OTG_DOEPCTL_EPENA, align 4
  %149 = load i32, i32* @USB_OTG_DOEPCTL_CNAK, align 4
  %150 = or i32 %148, %149
  %151 = call %struct.TYPE_5__* @USBx_OUTEP(i32 2)
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %145, %138
  %156 = call %struct.TYPE_5__* @USBx_OUTEP(i32 3)
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @USB_OTG_DOEPINT_XFRC, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %155
  %163 = call %struct.TYPE_5__* @USBx_OUTEP(i32 3)
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  store i32 524352, i32* %164, align 4
  %165 = load i32, i32* @USB_OTG_DOEPCTL_EPENA, align 4
  %166 = load i32, i32* @USB_OTG_DOEPCTL_CNAK, align 4
  %167 = or i32 %165, %166
  %168 = call %struct.TYPE_5__* @USBx_OUTEP(i32 3)
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %201

172:                                              ; preds = %155
  %173 = call %struct.TYPE_5__* @USBx_OUTEP(i32 3)
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 8192
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %172
  %179 = call %struct.TYPE_5__* @USBx_OUTEP(i32 3)
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  store i32 524352, i32* %180, align 4
  %181 = load i32, i32* @USB_OTG_DOEPCTL_CNAK, align 4
  %182 = call %struct.TYPE_5__* @USBx_OUTEP(i32 3)
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %200

186:                                              ; preds = %172
  %187 = call %struct.TYPE_5__* @USBx_OUTEP(i32 3)
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %186
  %192 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %193 = call %struct.TYPE_5__* @USBx_OUTEP(i32 3)
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @puth(i32 %195)
  %197 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %199

198:                                              ; preds = %186
  br label %199

199:                                              ; preds = %198, %191
  br label %200

200:                                              ; preds = %199, %178
  br label %201

201:                                              ; preds = %200, %162
  %202 = call %struct.TYPE_5__* @USBx_OUTEP(i32 0)
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @USB_OTG_DIEPINT_XFRC, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %201
  %209 = load i32, i32* @USB_OTG_DOEPTSIZ_STUPCNT, align 4
  %210 = load i32, i32* @USB_OTG_DOEPTSIZ_PKTCNT, align 4
  %211 = and i32 %210, 524288
  %212 = or i32 %209, %211
  %213 = or i32 %212, 8
  %214 = call %struct.TYPE_5__* @USBx_OUTEP(i32 0)
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %208, %201
  %217 = call %struct.TYPE_5__* @USBx_OUTEP(i32 0)
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @USB_OTG_DOEPINT_STUP, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %216
  %224 = call i32 (...) @usb_setup()
  br label %225

225:                                              ; preds = %223, %216
  %226 = call %struct.TYPE_5__* @USBx_OUTEP(i32 0)
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call %struct.TYPE_5__* @USBx_OUTEP(i32 0)
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 4
  %231 = call %struct.TYPE_5__* @USBx_OUTEP(i32 2)
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call %struct.TYPE_5__* @USBx_OUTEP(i32 2)
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 4
  %236 = call %struct.TYPE_5__* @USBx_OUTEP(i32 3)
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call %struct.TYPE_5__* @USBx_OUTEP(i32 3)
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %225, %133
  %242 = load i32, i32* %1, align 4
  %243 = load i32, i32* @USB_OTG_GINTSTS_IEPINT, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %341

246:                                              ; preds = %241
  %247 = load i32, i32* @current_int0_alt_setting, align 4
  switch i32 %247, label %283 [
    i32 0, label %248
    i32 1, label %262
  ]

248:                                              ; preds = %246
  %249 = call %struct.TYPE_6__* @USBx_INEP(i32 1)
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @USB_OTG_DIEPMSK_ITTXFEMSK, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load i64, i64* @resp, align 8
  %257 = inttoptr i64 %256 to i8*
  %258 = load i64, i64* @resp, align 8
  %259 = call i64 @usb_cb_ep1_in(i64 %258, i32 64, i32 1)
  %260 = call i32 @USB_WritePacket(i8* %257, i64 %259, i32 1)
  br label %261

261:                                              ; preds = %255, %248
  br label %285

262:                                              ; preds = %246
  %263 = call %struct.TYPE_6__* @USBx_INEP(i32 1)
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @USB_OTG_DIEPMSK_ITTXFEMSK, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %282

269:                                              ; preds = %262
  %270 = load i64, i64* @resp, align 8
  %271 = call i64 @usb_cb_ep1_in(i64 %270, i32 64, i32 1)
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %8, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %269
  %276 = load i64, i64* @resp, align 8
  %277 = inttoptr i64 %276 to i8*
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = call i32 @USB_WritePacket(i8* %277, i64 %279, i32 1)
  br label %281

281:                                              ; preds = %275, %269
  br label %282

282:                                              ; preds = %281, %262
  br label %285

283:                                              ; preds = %246
  %284 = call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %285

285:                                              ; preds = %283, %282, %261
  %286 = call %struct.TYPE_6__* @USBx_INEP(i32 0)
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @USB_OTG_DIEPMSK_ITTXFEMSK, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %330

292:                                              ; preds = %285
  %293 = load i32, i32* @ep0_txlen, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %329

295:                                              ; preds = %292
  %296 = call %struct.TYPE_6__* @USBx_INEP(i32 0)
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @USB_OTG_DTXFSTS_INEPTFSAV, align 4
  %300 = and i32 %298, %299
  %301 = icmp uge i32 %300, 64
  br i1 %301, label %302, label %329

302:                                              ; preds = %295
  %303 = load i32, i32* @ep0_txlen, align 4
  %304 = call i64 @MIN(i32 %303, i32 64)
  store i64 %304, i64* %9, align 8
  %305 = load i8*, i8** @ep0_txdata, align 8
  %306 = load i64, i64* %9, align 8
  %307 = call i32 @USB_WritePacket(i8* %305, i64 %306, i32 0)
  %308 = load i8*, i8** @ep0_txdata, align 8
  %309 = load i64, i64* %9, align 8
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  store i8* %310, i8** @ep0_txdata, align 8
  %311 = load i64, i64* %9, align 8
  %312 = load i32, i32* @ep0_txlen, align 4
  %313 = zext i32 %312 to i64
  %314 = sub i64 %313, %311
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* @ep0_txlen, align 4
  %316 = load i32, i32* @ep0_txlen, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %328

318:                                              ; preds = %302
  store i8* null, i8** @ep0_txdata, align 8
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** @USBx_DEVICE, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = and i32 %321, -2
  store i32 %322, i32* %320, align 4
  %323 = load i32, i32* @USB_OTG_DOEPCTL_CNAK, align 4
  %324 = call %struct.TYPE_5__* @USBx_OUTEP(i32 0)
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %318, %302
  br label %329

329:                                              ; preds = %328, %295, %292
  br label %330

330:                                              ; preds = %329, %285
  %331 = call %struct.TYPE_6__* @USBx_INEP(i32 0)
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call %struct.TYPE_6__* @USBx_INEP(i32 0)
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  store i32 %333, i32* %335, align 4
  %336 = call %struct.TYPE_6__* @USBx_INEP(i32 1)
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call %struct.TYPE_6__* @USBx_INEP(i32 1)
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 0
  store i32 %338, i32* %340, align 4
  br label %341

341:                                              ; preds = %330, %241
  %342 = load i32, i32* %3, align 4
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** @USBx_DEVICE, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 4
  %345 = load i32, i32* %2, align 4
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 4
  %348 = load i32, i32* %1, align 4
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** @USBx, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 0
  store i32 %348, i32* %350, align 4
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @usb_reset(...) #1

declare dso_local i32 @puth(i32) #1

declare dso_local i32 @USB_ReadPacket(i32*, i32) #1

declare dso_local i32 @usb_cb_ep2_out(i32, i32, i32) #1

declare dso_local i32 @usb_cb_ep3_out(i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @USBx_OUTEP(i32) #1

declare dso_local i32 @usb_setup(...) #1

declare dso_local %struct.TYPE_6__* @USBx_INEP(i32) #1

declare dso_local i32 @USB_WritePacket(i8*, i64, i32) #1

declare dso_local i64 @usb_cb_ep1_in(i64, i32, i32) #1

declare dso_local i64 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
