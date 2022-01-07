; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_redirect_default_route_to_vpn.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_redirect_default_route_to_vpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_list = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32 }
%struct.tuntap = type { i32 }
%struct.env_set = type { i32 }

@__const.redirect_default_route_to_vpn.err = private unnamed_addr constant [44 x i8] c"NOTE: unable to redirect default gateway --\00", align 16
@RG_ENABLE = common dso_local global i32 0, align 4
@RG_LOCAL = common dso_local global i32 0, align 4
@RTSA_REMOTE_ENDPOINT = common dso_local global i32 0, align 4
@RG_REROUTE_GW = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"%s VPN gateway parameter (--route-gateway or --ifconfig) is missing\00", align 1
@RGI_ADDR_DEFINED = common dso_local global i32 0, align 4
@IPV4_INVALID_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"%s Cannot read current default gateway from system\00", align 1
@RTSA_REMOTE_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"%s Cannot obtain current remote host address\00", align 1
@RG_AUTO_LOCAL = common dso_local global i32 0, align 4
@TLA_NONLOCAL = common dso_local global i32 0, align 4
@D_ROUTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"ROUTE remote_host is NOT LOCAL\00", align 1
@TLA_LOCAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"ROUTE remote_host is LOCAL\00", align 1
@IPV4_NETMASK_HOST = common dso_local global i32 0, align 4
@ROUTE_REF_GW = common dso_local global i32 0, align 4
@RL_DID_LOCAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"ROUTE remote_host protocol differs from tunneled\00", align 1
@RG_DEF1 = common dso_local global i32 0, align 4
@RL_DID_REDIRECT_DEFAULT_GATEWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.route_list*, %struct.tuntap*, i32, %struct.env_set*, i32*)* @redirect_default_route_to_vpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redirect_default_route_to_vpn(%struct.route_list* %0, %struct.tuntap* %1, i32 %2, %struct.env_set* %3, i32* %4) #0 {
  %6 = alloca %struct.route_list*, align 8
  %7 = alloca %struct.tuntap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.env_set*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [44 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.route_list* %0, %struct.route_list** %6, align 8
  store %struct.tuntap* %1, %struct.tuntap** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.env_set* %3, %struct.env_set** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = bitcast [44 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([44 x i8], [44 x i8]* @__const.redirect_default_route_to_vpn.err, i32 0, i32 0), i64 44, i1 false)
  %15 = load %struct.route_list*, %struct.route_list** %6, align 8
  %16 = icmp ne %struct.route_list* %15, null
  br i1 %16, label %17, label %246

17:                                               ; preds = %5
  %18 = load %struct.route_list*, %struct.route_list** %6, align 8
  %19 = getelementptr inbounds %struct.route_list, %struct.route_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RG_ENABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %246

24:                                               ; preds = %17
  %25 = load %struct.route_list*, %struct.route_list** %6, align 8
  %26 = getelementptr inbounds %struct.route_list, %struct.route_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RG_LOCAL, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.route_list*, %struct.route_list** %6, align 8
  %31 = getelementptr inbounds %struct.route_list, %struct.route_list* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RTSA_REMOTE_ENDPOINT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %24
  %38 = load %struct.route_list*, %struct.route_list** %6, align 8
  %39 = getelementptr inbounds %struct.route_list, %struct.route_list* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @RG_REROUTE_GW, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @M_WARN, align 4
  %46 = getelementptr inbounds [44 x i8], [44 x i8]* %11, i64 0, i64 0
  %47 = call i32 @msg(i32 %45, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %245

48:                                               ; preds = %37, %24
  %49 = load %struct.route_list*, %struct.route_list** %6, align 8
  %50 = getelementptr inbounds %struct.route_list, %struct.route_list* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RGI_ADDR_DEFINED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = load %struct.route_list*, %struct.route_list** %6, align 8
  %61 = getelementptr inbounds %struct.route_list, %struct.route_list* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IPV4_INVALID_ADDR, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @M_WARN, align 4
  %68 = getelementptr inbounds [44 x i8], [44 x i8]* %11, i64 0, i64 0
  %69 = call i32 @msg(i32 %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  br label %244

70:                                               ; preds = %59, %56, %48
  %71 = load %struct.route_list*, %struct.route_list** %6, align 8
  %72 = getelementptr inbounds %struct.route_list, %struct.route_list* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RTSA_REMOTE_HOST, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @M_WARN, align 4
  %80 = getelementptr inbounds [44 x i8], [44 x i8]* %11, i64 0, i64 0
  %81 = call i32 @msg(i32 %79, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %243

82:                                               ; preds = %70
  %83 = load %struct.route_list*, %struct.route_list** %6, align 8
  %84 = getelementptr inbounds %struct.route_list, %struct.route_list* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RG_AUTO_LOCAL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %82
  %90 = load %struct.route_list*, %struct.route_list** %6, align 8
  %91 = getelementptr inbounds %struct.route_list, %struct.route_list* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @TLA_NONLOCAL, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @D_ROUTE, align 4
  %99 = call i32 @dmsg(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %108

100:                                              ; preds = %89
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @TLA_LOCAL, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @D_ROUTE, align 4
  %106 = call i32 @dmsg(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %107

107:                                              ; preds = %104, %100
  br label %108

108:                                              ; preds = %107, %97
  br label %109

109:                                              ; preds = %108, %82
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %149, label %112

112:                                              ; preds = %109
  %113 = load %struct.route_list*, %struct.route_list** %6, align 8
  %114 = getelementptr inbounds %struct.route_list, %struct.route_list* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @IPV4_INVALID_ADDR, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %145

119:                                              ; preds = %112
  %120 = load %struct.route_list*, %struct.route_list** %6, align 8
  %121 = getelementptr inbounds %struct.route_list, %struct.route_list* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* @IPV4_NETMASK_HOST, align 4
  %126 = load %struct.route_list*, %struct.route_list** %6, align 8
  %127 = getelementptr inbounds %struct.route_list, %struct.route_list* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @ROUTE_REF_GW, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.route_list*, %struct.route_list** %6, align 8
  %136 = getelementptr inbounds %struct.route_list, %struct.route_list* %135, i32 0, i32 2
  %137 = load %struct.env_set*, %struct.env_set** %9, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @add_route3(i32 %124, i32 %125, i32 %130, %struct.tuntap* %131, i32 %134, %struct.TYPE_8__* %136, %struct.env_set* %137, i32* %138)
  %140 = load i32, i32* @RL_DID_LOCAL, align 4
  %141 = load %struct.route_list*, %struct.route_list** %6, align 8
  %142 = getelementptr inbounds %struct.route_list, %struct.route_list* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %148

145:                                              ; preds = %112
  %146 = load i32, i32* @D_ROUTE, align 4
  %147 = call i32 @dmsg(i32 %146, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %119
  br label %149

149:                                              ; preds = %148, %109
  %150 = load %struct.route_list*, %struct.route_list** %6, align 8
  %151 = getelementptr inbounds %struct.route_list, %struct.route_list* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 4
  %153 = load %struct.route_list*, %struct.route_list** %6, align 8
  %154 = getelementptr inbounds %struct.route_list, %struct.route_list* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.route_list*, %struct.route_list** %6, align 8
  %161 = getelementptr inbounds %struct.route_list, %struct.route_list* %160, i32 0, i32 2
  %162 = load %struct.env_set*, %struct.env_set** %9, align 8
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @add_bypass_routes(i32* %152, i32 %157, %struct.tuntap* %158, i32 %159, %struct.TYPE_8__* %161, %struct.env_set* %162, i32* %163)
  %165 = load %struct.route_list*, %struct.route_list** %6, align 8
  %166 = getelementptr inbounds %struct.route_list, %struct.route_list* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @RG_REROUTE_GW, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %237

171:                                              ; preds = %149
  %172 = load %struct.route_list*, %struct.route_list** %6, align 8
  %173 = getelementptr inbounds %struct.route_list, %struct.route_list* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @RG_DEF1, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %171
  %179 = load %struct.route_list*, %struct.route_list** %6, align 8
  %180 = getelementptr inbounds %struct.route_list, %struct.route_list* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.route_list*, %struct.route_list** %6, align 8
  %186 = getelementptr inbounds %struct.route_list, %struct.route_list* %185, i32 0, i32 2
  %187 = load %struct.env_set*, %struct.env_set** %9, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = call i32 @add_route3(i32 0, i32 -2147483648, i32 %182, %struct.tuntap* %183, i32 %184, %struct.TYPE_8__* %186, %struct.env_set* %187, i32* %188)
  %190 = load %struct.route_list*, %struct.route_list** %6, align 8
  %191 = getelementptr inbounds %struct.route_list, %struct.route_list* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.route_list*, %struct.route_list** %6, align 8
  %197 = getelementptr inbounds %struct.route_list, %struct.route_list* %196, i32 0, i32 2
  %198 = load %struct.env_set*, %struct.env_set** %9, align 8
  %199 = load i32*, i32** %10, align 8
  %200 = call i32 @add_route3(i32 -2147483648, i32 -2147483648, i32 %193, %struct.tuntap* %194, i32 %195, %struct.TYPE_8__* %197, %struct.env_set* %198, i32* %199)
  br label %236

201:                                              ; preds = %171
  %202 = load %struct.route_list*, %struct.route_list** %6, align 8
  %203 = getelementptr inbounds %struct.route_list, %struct.route_list* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @RGI_ADDR_DEFINED, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %201
  %210 = load %struct.route_list*, %struct.route_list** %6, align 8
  %211 = getelementptr inbounds %struct.route_list, %struct.route_list* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @ROUTE_REF_GW, align 4
  %218 = or i32 %216, %217
  %219 = load %struct.route_list*, %struct.route_list** %6, align 8
  %220 = getelementptr inbounds %struct.route_list, %struct.route_list* %219, i32 0, i32 2
  %221 = load %struct.env_set*, %struct.env_set** %9, align 8
  %222 = load i32*, i32** %10, align 8
  %223 = call i32 @del_route3(i32 0, i32 0, i32 %214, %struct.tuntap* %215, i32 %218, %struct.TYPE_8__* %220, %struct.env_set* %221, i32* %222)
  br label %224

224:                                              ; preds = %209, %201
  %225 = load %struct.route_list*, %struct.route_list** %6, align 8
  %226 = getelementptr inbounds %struct.route_list, %struct.route_list* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %230 = load i32, i32* %8, align 4
  %231 = load %struct.route_list*, %struct.route_list** %6, align 8
  %232 = getelementptr inbounds %struct.route_list, %struct.route_list* %231, i32 0, i32 2
  %233 = load %struct.env_set*, %struct.env_set** %9, align 8
  %234 = load i32*, i32** %10, align 8
  %235 = call i32 @add_route3(i32 0, i32 0, i32 %228, %struct.tuntap* %229, i32 %230, %struct.TYPE_8__* %232, %struct.env_set* %233, i32* %234)
  br label %236

236:                                              ; preds = %224, %178
  br label %237

237:                                              ; preds = %236, %149
  %238 = load i32, i32* @RL_DID_REDIRECT_DEFAULT_GATEWAY, align 4
  %239 = load %struct.route_list*, %struct.route_list** %6, align 8
  %240 = getelementptr inbounds %struct.route_list, %struct.route_list* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %237, %78
  br label %244

244:                                              ; preds = %243, %66
  br label %245

245:                                              ; preds = %244, %44
  br label %246

246:                                              ; preds = %245, %17, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @msg(i32, i8*, i8*) #2

declare dso_local i32 @dmsg(i32, i8*) #2

declare dso_local i32 @add_route3(i32, i32, i32, %struct.tuntap*, i32, %struct.TYPE_8__*, %struct.env_set*, i32*) #2

declare dso_local i32 @add_bypass_routes(i32*, i32, %struct.tuntap*, i32, %struct.TYPE_8__*, %struct.env_set*, i32*) #2

declare dso_local i32 @del_route3(i32, i32, i32, %struct.tuntap*, i32, %struct.TYPE_8__*, %struct.env_set*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
