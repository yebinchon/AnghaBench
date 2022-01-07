; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_on_recv.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_on_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, i32, %struct.TYPE_12__, %struct.udp_pcb* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.udp_pcb = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.pbuf = type { i32, i32 }
%struct.ip_addr = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__, i32, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"sntp: on_recv\0A\00", align 1
@state = common dso_local global %struct.TYPE_19__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"sntp: transmit timestamp: %u, %u\0A\00", align 1
@serverp = common dso_local global %struct.TYPE_20__* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"DENY\00", align 1
@pending_LI = common dso_local global i32 0, align 4
@the_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i32)* @on_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_recv(i8* %0, %struct.udp_pcb* %1, %struct.pbuf* %2, %struct.ip_addr* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.udp_pcb*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca %struct.ip_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.udp_pcb* %1, %struct.udp_pcb** %7, align 8
  store %struct.pbuf* %2, %struct.pbuf** %8, align 8
  store %struct.ip_addr* %3, %struct.ip_addr** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 (i8*, ...) @sntp_dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %21 = icmp ne %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 5
  %25 = load %struct.udp_pcb*, %struct.udp_pcb** %24, align 8
  %26 = load %struct.udp_pcb*, %struct.udp_pcb** %7, align 8
  %27 = icmp ne %struct.udp_pcb* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22, %5
  %29 = load %struct.udp_pcb*, %struct.udp_pcb** %7, align 8
  %30 = call i32 @udp_remove(%struct.udp_pcb* %29)
  %31 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %32 = call i32 @pbuf_free(%struct.pbuf* %31)
  br label %254

33:                                               ; preds = %22
  %34 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %35 = icmp ne %struct.pbuf* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %254

37:                                               ; preds = %33
  %38 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 56
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %45 = call i32 @pbuf_free(%struct.pbuf* %44)
  br label %254

46:                                               ; preds = %37
  %47 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %48 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @os_memcpy(%struct.TYPE_17__* %11, i32 %49, i32 56)
  %51 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %52 = call i32 @pbuf_free(%struct.pbuf* %51)
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @sntp_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = call i32 @NTP_ANYCAST_ADDR(%struct.TYPE_18__* %12)
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** @serverp, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %67, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %46
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** @serverp, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ip_addr*, %struct.ip_addr** %9, align 8
  %80 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %254

84:                                               ; preds = %71, %46
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %87, %91
  br i1 %92, label %102, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %96, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93, %84
  br label %254

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %107, label %141

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 7
  %109 = call i64 @memcmp(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %107
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = shl i32 1, %118
  %120 = and i32 %114, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %111
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** @serverp, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %139

129:                                              ; preds = %111
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = shl i32 1, %133
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %129, %122
  br label %140

140:                                              ; preds = %139, %107
  br label %254

141:                                              ; preds = %103
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = shl i32 1, %145
  %147 = xor i32 %146, -1
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 3
  %154 = call i32 @os_timer_disarm(i32* %153)
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %141
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* @pending_LI, align 4
  br label %161

161:                                              ; preds = %158, %141
  %162 = call i32 (...) @update_offset()
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @ntohl(i32 %166)
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @ntohl(i32 %174)
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ntohl(i32 %181)
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 6
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 4
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ntohl(i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ntohl(i32 %193)
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ntohl(i32 %199)
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  store i32 1000000, i32* %13, align 4
  store i32 -2085978496, i32* %14, align 4
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ntohl(i32 %204)
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @ntohl(i32 %207)
  %209 = sdiv i32 %208, 2
  %210 = add nsw i32 %205, %209
  store i32 %210, i32* %15, align 4
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** @state, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = icmp eq i64 %213, %217
  %219 = zext i1 %218 to i32
  store i32 %219, i32* %16, align 4
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %222, -2085978496
  %224 = shl i32 %223, 32
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %224, %227
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %16, align 4
  %230 = load %struct.ip_addr*, %struct.ip_addr** %9, align 8
  %231 = load i32, i32* %17, align 4
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 (...) @system_get_time()
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %237, %240
  %242 = trunc i64 %241 to i32
  %243 = shl i32 %242, 16
  %244 = sdiv i32 %243, 1000000
  %245 = load i32, i32* %15, align 4
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @ntohl(i32 %247)
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @ntohl(i32 %250)
  %252 = call i32 @record_result(i32 %229, %struct.ip_addr* %230, i32 %231, i32 %233, i32 %235, i32 %244, i32 %245, i32 %248, i32 %251)
  %253 = call i32 (...) @sntp_dosend()
  br label %254

254:                                              ; preds = %161, %140, %102, %83, %43, %36, %28
  ret void
}

declare dso_local i32 @sntp_dbg(i8*, ...) #1

declare dso_local i32 @udp_remove(%struct.udp_pcb*) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @os_memcpy(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @NTP_ANYCAST_ADDR(%struct.TYPE_18__*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @update_offset(...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @record_result(i32, %struct.ip_addr*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @system_get_time(...) #1

declare dso_local i32 @sntp_dosend(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
