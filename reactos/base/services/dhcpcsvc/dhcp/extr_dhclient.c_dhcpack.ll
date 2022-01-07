; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_dhcpack.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_dhcpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { i32, %struct.TYPE_6__*, %struct.interface_info* }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.interface_info = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64, %struct.client_lease* }
%struct.client_lease = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i32 }

@S_REBOOTING = common dso_local global i64 0, align 8
@S_REQUESTING = common dso_local global i64 0, align 8
@S_RENEWING = common dso_local global i64 0, align 8
@S_REBINDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"DHCPACK from %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"packet_to_lease failed.\00", align 1
@send_request = common dso_local global i32 0, align 4
@DHO_DHCP_LEASE_TIME = common dso_local global i64 0, align 8
@DHCP_DEFAULT_LEASE_TIME = common dso_local global i32 0, align 4
@TIME_MAX = common dso_local global i8* null, align 8
@DHO_DHCP_RENEWAL_TIME = common dso_local global i64 0, align 8
@DHO_DHCP_REBINDING_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dhcpack(%struct.packet* %0) #0 {
  %2 = alloca %struct.packet*, align 8
  %3 = alloca %struct.interface_info*, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca i32, align 4
  store %struct.packet* %0, %struct.packet** %2, align 8
  %6 = load %struct.packet*, %struct.packet** %2, align 8
  %7 = getelementptr inbounds %struct.packet, %struct.packet* %6, i32 0, i32 2
  %8 = load %struct.interface_info*, %struct.interface_info** %7, align 8
  store %struct.interface_info* %8, %struct.interface_info** %3, align 8
  %9 = call i32 @time(i32* %5)
  %10 = load %struct.packet*, %struct.packet** %2, align 8
  %11 = getelementptr inbounds %struct.packet, %struct.packet* %10, i32 0, i32 2
  %12 = load %struct.interface_info*, %struct.interface_info** %11, align 8
  %13 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.packet*, %struct.packet** %2, align 8
  %18 = getelementptr inbounds %struct.packet, %struct.packet* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %16, %21
  br i1 %22, label %55, label %23

23:                                               ; preds = %1
  %24 = load %struct.packet*, %struct.packet** %2, align 8
  %25 = getelementptr inbounds %struct.packet, %struct.packet* %24, i32 0, i32 2
  %26 = load %struct.interface_info*, %struct.interface_info** %25, align 8
  %27 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.packet*, %struct.packet** %2, align 8
  %31 = getelementptr inbounds %struct.packet, %struct.packet* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %29, %34
  br i1 %35, label %55, label %36

36:                                               ; preds = %23
  %37 = load %struct.packet*, %struct.packet** %2, align 8
  %38 = getelementptr inbounds %struct.packet, %struct.packet* %37, i32 0, i32 2
  %39 = load %struct.interface_info*, %struct.interface_info** %38, align 8
  %40 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.packet*, %struct.packet** %2, align 8
  %44 = getelementptr inbounds %struct.packet, %struct.packet* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.packet*, %struct.packet** %2, align 8
  %49 = getelementptr inbounds %struct.packet, %struct.packet* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @memcmp(i32 %42, i32 %47, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %36, %23, %1
  br label %384

56:                                               ; preds = %36
  %57 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %58 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @S_REBOOTING, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %56
  %65 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %66 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @S_REQUESTING, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %64
  %73 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %74 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @S_RENEWING, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %82 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @S_REBINDING, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %384

89:                                               ; preds = %80, %72, %64, %56
  %90 = load %struct.packet*, %struct.packet** %2, align 8
  %91 = getelementptr inbounds %struct.packet, %struct.packet* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @piaddr(i32 %92)
  %94 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load %struct.packet*, %struct.packet** %2, align 8
  %96 = call %struct.client_lease* @packet_to_lease(%struct.packet* %95)
  store %struct.client_lease* %96, %struct.client_lease** %4, align 8
  %97 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %98 = icmp ne %struct.client_lease* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %89
  %100 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %384

101:                                              ; preds = %89
  %102 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %103 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %104 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store %struct.client_lease* %102, %struct.client_lease** %106, align 8
  %107 = load i32, i32* @send_request, align 4
  %108 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %109 = call i32 @cancel_timeout(i32 %107, %struct.interface_info* %108)
  %110 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %111 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load %struct.client_lease*, %struct.client_lease** %113, align 8
  %115 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %114, i32 0, i32 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load i64, i64* @DHO_DHCP_LEASE_TIME, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %101
  %123 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %124 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load %struct.client_lease*, %struct.client_lease** %126, align 8
  %128 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %127, i32 0, i32 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i64, i64* @DHO_DHCP_LEASE_TIME, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i8* @getULong(i64 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %137 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load %struct.client_lease*, %struct.client_lease** %139, align 8
  %141 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %140, i32 0, i32 0
  store i32 %135, i32* %141, align 8
  br label %150

142:                                              ; preds = %101
  %143 = load i32, i32* @DHCP_DEFAULT_LEASE_TIME, align 4
  %144 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %145 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load %struct.client_lease*, %struct.client_lease** %147, align 8
  %149 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %148, i32 0, i32 0
  store i32 %143, i32* %149, align 8
  br label %150

150:                                              ; preds = %142, %122
  %151 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %152 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load %struct.client_lease*, %struct.client_lease** %154, align 8
  %156 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %150
  %160 = load i8*, i8** @TIME_MAX, align 8
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %163 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load %struct.client_lease*, %struct.client_lease** %165, align 8
  %167 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %166, i32 0, i32 0
  store i32 %161, i32* %167, align 8
  br label %168

168:                                              ; preds = %159, %150
  %169 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %170 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %169, i32 0, i32 0
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load %struct.client_lease*, %struct.client_lease** %172, align 8
  %174 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %175, 60
  br i1 %176, label %177, label %184

177:                                              ; preds = %168
  %178 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %179 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %178, i32 0, i32 0
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = load %struct.client_lease*, %struct.client_lease** %181, align 8
  %183 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %182, i32 0, i32 0
  store i32 60, i32* %183, align 8
  br label %184

184:                                              ; preds = %177, %168
  %185 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %186 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %185, i32 0, i32 0
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %189 = load %struct.client_lease*, %struct.client_lease** %188, align 8
  %190 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %189, i32 0, i32 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load i64, i64* @DHO_DHCP_RENEWAL_TIME, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %217

197:                                              ; preds = %184
  %198 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %199 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %198, i32 0, i32 0
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  %202 = load %struct.client_lease*, %struct.client_lease** %201, align 8
  %203 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %202, i32 0, i32 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = load i64, i64* @DHO_DHCP_RENEWAL_TIME, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i8* @getULong(i64 %208)
  %210 = ptrtoint i8* %209 to i32
  %211 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %212 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %211, i32 0, i32 0
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 2
  %215 = load %struct.client_lease*, %struct.client_lease** %214, align 8
  %216 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %215, i32 0, i32 1
  store i32 %210, i32* %216, align 4
  br label %232

217:                                              ; preds = %184
  %218 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %219 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %218, i32 0, i32 0
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load %struct.client_lease*, %struct.client_lease** %221, align 8
  %223 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sdiv i32 %224, 2
  %226 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %227 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %226, i32 0, i32 0
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load %struct.client_lease*, %struct.client_lease** %229, align 8
  %231 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %230, i32 0, i32 1
  store i32 %225, i32* %231, align 4
  br label %232

232:                                              ; preds = %217, %197
  %233 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %234 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %233, i32 0, i32 0
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 2
  %237 = load %struct.client_lease*, %struct.client_lease** %236, align 8
  %238 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %237, i32 0, i32 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = load i64, i64* @DHO_DHCP_REBINDING_TIME, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %265

245:                                              ; preds = %232
  %246 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %247 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %246, i32 0, i32 0
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load %struct.client_lease*, %struct.client_lease** %249, align 8
  %251 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %250, i32 0, i32 4
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = load i64, i64* @DHO_DHCP_REBINDING_TIME, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = call i8* @getULong(i64 %256)
  %258 = ptrtoint i8* %257 to i32
  %259 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %260 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %259, i32 0, i32 0
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  %263 = load %struct.client_lease*, %struct.client_lease** %262, align 8
  %264 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %263, i32 0, i32 2
  store i32 %258, i32* %264, align 8
  br label %297

265:                                              ; preds = %232
  %266 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %267 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %266, i32 0, i32 0
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 2
  %270 = load %struct.client_lease*, %struct.client_lease** %269, align 8
  %271 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %274 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %273, i32 0, i32 0
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 2
  %277 = load %struct.client_lease*, %struct.client_lease** %276, align 8
  %278 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = sdiv i32 %279, 2
  %281 = add nsw i32 %272, %280
  %282 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %283 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %282, i32 0, i32 0
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 2
  %286 = load %struct.client_lease*, %struct.client_lease** %285, align 8
  %287 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = sdiv i32 %288, 4
  %290 = add nsw i32 %281, %289
  %291 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %292 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %291, i32 0, i32 0
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 2
  %295 = load %struct.client_lease*, %struct.client_lease** %294, align 8
  %296 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %295, i32 0, i32 2
  store i32 %290, i32* %296, align 8
  br label %297

297:                                              ; preds = %265, %245
  %298 = load i32, i32* %5, align 4
  %299 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %300 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %299, i32 0, i32 0
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 2
  %303 = load %struct.client_lease*, %struct.client_lease** %302, align 8
  %304 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %305, %298
  store i32 %306, i32* %304, align 8
  %307 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %308 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %307, i32 0, i32 0
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 2
  %311 = load %struct.client_lease*, %struct.client_lease** %310, align 8
  %312 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %5, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %325

316:                                              ; preds = %297
  %317 = load i8*, i8** @TIME_MAX, align 8
  %318 = ptrtoint i8* %317 to i32
  %319 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %320 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %319, i32 0, i32 0
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 2
  %323 = load %struct.client_lease*, %struct.client_lease** %322, align 8
  %324 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %323, i32 0, i32 0
  store i32 %318, i32* %324, align 8
  br label %325

325:                                              ; preds = %316, %297
  %326 = load i32, i32* %5, align 4
  %327 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %328 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %327, i32 0, i32 0
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 2
  %331 = load %struct.client_lease*, %struct.client_lease** %330, align 8
  %332 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %333, %326
  store i32 %334, i32* %332, align 4
  %335 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %336 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %335, i32 0, i32 0
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 2
  %339 = load %struct.client_lease*, %struct.client_lease** %338, align 8
  %340 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %5, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %353

344:                                              ; preds = %325
  %345 = load i8*, i8** @TIME_MAX, align 8
  %346 = ptrtoint i8* %345 to i32
  %347 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %348 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %347, i32 0, i32 0
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 2
  %351 = load %struct.client_lease*, %struct.client_lease** %350, align 8
  %352 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %351, i32 0, i32 1
  store i32 %346, i32* %352, align 4
  br label %353

353:                                              ; preds = %344, %325
  %354 = load i32, i32* %5, align 4
  %355 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %356 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %355, i32 0, i32 0
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 2
  %359 = load %struct.client_lease*, %struct.client_lease** %358, align 8
  %360 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = add nsw i32 %361, %354
  store i32 %362, i32* %360, align 8
  %363 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %364 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %363, i32 0, i32 0
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 2
  %367 = load %struct.client_lease*, %struct.client_lease** %366, align 8
  %368 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* %5, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %381

372:                                              ; preds = %353
  %373 = load i8*, i8** @TIME_MAX, align 8
  %374 = ptrtoint i8* %373 to i32
  %375 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %376 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %375, i32 0, i32 0
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 2
  %379 = load %struct.client_lease*, %struct.client_lease** %378, align 8
  %380 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %379, i32 0, i32 2
  store i32 %374, i32* %380, align 8
  br label %381

381:                                              ; preds = %372, %353
  %382 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %383 = call i32 @bind_lease(%struct.interface_info* %382)
  br label %384

384:                                              ; preds = %381, %99, %88, %55
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @note(i8*, ...) #1

declare dso_local i32 @piaddr(i32) #1

declare dso_local %struct.client_lease* @packet_to_lease(%struct.packet*) #1

declare dso_local i32 @cancel_timeout(i32, %struct.interface_info*) #1

declare dso_local i8* @getULong(i64) #1

declare dso_local i32 @bind_lease(%struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
