; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_evnt_handler.c_hci_unsol_event_handler.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_evnt_handler.c_hci_unsol_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 (i32, i32*, i32)*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@HCI_EVENT_OPCODE_OFFSET = common dso_local global i32 0, align 4
@HCI_EVNT_UNSOL_BASE = common dso_local global i32 0, align 4
@tSLInformation = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@HCI_EVENT_CC3000_CAN_SHUT_DOWN = common dso_local global i32 0, align 4
@HCI_EVNT_WLAN_UNSOL_BASE = common dso_local global i32 0, align 4
@NETAPP_IPCONFIG_MAC_OFFSET = common dso_local global i32 0, align 4
@HCI_EVENT_HEADER_SIZE = common dso_local global i32 0, align 4
@NETAPP_IPCONFIG_IP_LENGTH = common dso_local global i32 0, align 4
@HCI_EVENT_STATUS_OFFSET = common dso_local global i32 0, align 4
@NETAPP_PING_PACKETS_SENT_OFFSET = common dso_local global i32 0, align 4
@NETAPP_PING_PACKETS_RCVD_OFFSET = common dso_local global i32 0, align 4
@NETAPP_PING_MIN_RTT_OFFSET = common dso_local global i32 0, align 4
@NETAPP_PING_MAX_RTT_OFFSET = common dso_local global i32 0, align 4
@NETAPP_PING_AVG_RTT_OFFSET = common dso_local global i32 0, align 4
@HCI_EVNT_SEND = common dso_local global i32 0, align 4
@HCI_EVNT_SENDTO = common dso_local global i32 0, align 4
@HCI_EVNT_WRITE = common dso_local global i32 0, align 4
@BSD_RSP_PARAMS_STATUS_OFFSET = common dso_local global i32 0, align 4
@ERROR_SOCKET_INACTIVE = common dso_local global i32 0, align 4
@HCI_EVNT_PATCHES_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_unsol_event_handler(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @HCI_EVENT_OPCODE_OFFSET, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @STREAM_TO_UINT16(i32* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @HCI_EVNT_UNSOL_BASE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %41 [
    i32 135, label %24
  ]

24:                                               ; preds = %22
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @hci_event_unsol_flowcontrol_handler(i32* %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 5), align 8
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 4), align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 3), align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 2), align 8
  %37 = load i32, i32* @HCI_EVENT_CC3000_CAN_SHUT_DOWN, align 4
  %38 = call i32 %36(i32 %37, i32* null, i32 0)
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %24
  store i32 1, i32* %2, align 4
  br label %204

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @HCI_EVNT_WLAN_UNSOL_BASE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %163

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  switch i32 %48, label %161 [
    i32 132, label %49
    i32 131, label %49
    i32 129, label %49
    i32 128, label %49
    i32 133, label %49
    i32 130, label %57
    i32 134, label %110
    i32 136, label %148
  ]

49:                                               ; preds = %47, %47, %47, %47, %47
  %50 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 2), align 8
  %51 = icmp ne i32 (i32, i32*, i32)* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 2), align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 %53(i32 %54, i32* null, i32 0)
  br label %56

56:                                               ; preds = %52, %49
  br label %162

57:                                               ; preds = %47
  %58 = load i32, i32* @NETAPP_IPCONFIG_MAC_OFFSET, align 4
  %59 = add nsw i32 %58, 1
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %8, align 8
  %62 = alloca i32, i64 %60, align 16
  store i64 %60, i64* %9, align 8
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @HCI_EVENT_HEADER_SIZE, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %4, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* @NETAPP_IPCONFIG_IP_LENGTH, align 4
  %70 = call i32 @STREAM_TO_STREAM(i32* %67, i32* %68, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32* %72, i32** %4, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* @NETAPP_IPCONFIG_IP_LENGTH, align 4
  %76 = call i32 @STREAM_TO_STREAM(i32* %73, i32* %74, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32* %78, i32** %4, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* @NETAPP_IPCONFIG_IP_LENGTH, align 4
  %82 = call i32 @STREAM_TO_STREAM(i32* %79, i32* %80, i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32* %84, i32** %4, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* @NETAPP_IPCONFIG_IP_LENGTH, align 4
  %88 = call i32 @STREAM_TO_STREAM(i32* %85, i32* %86, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  store i32* %90, i32** %4, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* @NETAPP_IPCONFIG_IP_LENGTH, align 4
  %94 = call i32 @STREAM_TO_STREAM(i32* %91, i32* %92, i32 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* @HCI_EVENT_STATUS_OFFSET, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @STREAM_TO_UINT8(i32* %95, i32 %96, i32 %98)
  %100 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 2), align 8
  %101 = icmp ne i32 (i32, i32*, i32)* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %57
  %103 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 2), align 8
  %104 = load i32, i32* %5, align 4
  %105 = mul nuw i64 4, %60
  %106 = trunc i64 %105 to i32
  %107 = call i32 %103(i32 %104, i32* %62, i32 %106)
  br label %108

108:                                              ; preds = %102, %57
  %109 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %109)
  br label %162

110:                                              ; preds = %47
  %111 = load i32*, i32** %3, align 8
  %112 = load i32, i32* @HCI_EVENT_HEADER_SIZE, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32* %114, i32** %4, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* @NETAPP_PING_PACKETS_SENT_OFFSET, align 4
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @STREAM_TO_UINT32(i32* %115, i32 %116, i32 %118)
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* @NETAPP_PING_PACKETS_RCVD_OFFSET, align 4
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @STREAM_TO_UINT32(i32* %120, i32 %121, i32 %123)
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* @NETAPP_PING_MIN_RTT_OFFSET, align 4
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @STREAM_TO_UINT32(i32* %125, i32 %126, i32 %128)
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* @NETAPP_PING_MAX_RTT_OFFSET, align 4
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @STREAM_TO_UINT32(i32* %130, i32 %131, i32 %133)
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* @NETAPP_PING_AVG_RTT_OFFSET, align 4
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @STREAM_TO_UINT32(i32* %135, i32 %136, i32 %138)
  %140 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 2), align 8
  %141 = icmp ne i32 (i32, i32*, i32)* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %110
  %143 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 2), align 8
  %144 = load i32, i32* %5, align 4
  %145 = bitcast %struct.TYPE_3__* %11 to i32*
  %146 = call i32 %143(i32 %144, i32* %145, i32 20)
  br label %147

147:                                              ; preds = %142, %110
  br label %162

148:                                              ; preds = %47
  %149 = load i32*, i32** %3, align 8
  %150 = load i32, i32* @HCI_EVENT_HEADER_SIZE, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32* %152, i32** %4, align 8
  %153 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 2), align 8
  %154 = icmp ne i32 (i32, i32*, i32)* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 2), align 8
  %157 = load i32, i32* %5, align 4
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 %156(i32 %157, i32* %158, i32 1)
  br label %160

160:                                              ; preds = %155, %148
  br label %162

161:                                              ; preds = %47
  store i32 0, i32* %2, align 4
  br label %204

162:                                              ; preds = %160, %147, %108, %56
  store i32 1, i32* %2, align 4
  br label %204

163:                                              ; preds = %42
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @HCI_EVNT_SEND, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @HCI_EVNT_SENDTO, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @HCI_EVNT_WRITE, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %194

175:                                              ; preds = %171, %167, %163
  %176 = load i32*, i32** %3, align 8
  %177 = call i32* @M_BSD_RESP_PARAMS_OFFSET(i32* %176)
  store i32* %177, i32** %12, align 8
  %178 = load i32*, i32** %12, align 8
  %179 = load i32, i32* @BSD_RSP_PARAMS_STATUS_OFFSET, align 4
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @STREAM_TO_UINT32(i32* %178, i32 %179, i32 %180)
  %182 = load i32, i32* @ERROR_SOCKET_INACTIVE, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %175
  %186 = load i32*, i32** %3, align 8
  %187 = load i32, i32* @HCI_EVENT_STATUS_OFFSET, align 4
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 1), align 4
  %189 = call i32 @STREAM_TO_UINT8(i32* %186, i32 %187, i32 %188)
  %190 = load i32*, i32** %3, align 8
  %191 = call i32* @M_BSD_RESP_PARAMS_OFFSET(i32* %190)
  %192 = call i32 @update_socket_active_status(i32* %191)
  store i32 1, i32* %2, align 4
  br label %204

193:                                              ; preds = %175
  store i32 0, i32* %2, align 4
  br label %204

194:                                              ; preds = %171
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tSLInformation, i32 0, i32 0), align 8
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %194
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* @HCI_EVNT_PATCHES_REQ, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  store i32 1, i32* %2, align 4
  br label %204

203:                                              ; preds = %198, %194
  store i32 0, i32* %2, align 4
  br label %204

204:                                              ; preds = %203, %202, %193, %185, %162, %161, %40
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @STREAM_TO_UINT16(i32*, i32, i32) #1

declare dso_local i32 @hci_event_unsol_flowcontrol_handler(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @STREAM_TO_STREAM(i32*, i32*, i32) #1

declare dso_local i32 @STREAM_TO_UINT8(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @STREAM_TO_UINT32(i32*, i32, i32) #1

declare dso_local i32* @M_BSD_RESP_PARAMS_OFFSET(i32*) #1

declare dso_local i32 @update_socket_active_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
