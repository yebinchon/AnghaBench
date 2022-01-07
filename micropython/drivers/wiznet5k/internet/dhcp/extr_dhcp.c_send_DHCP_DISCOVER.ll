; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_send_DHCP_DISCOVER.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_send_DHCP_DISCOVER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@dhcpMessageType = common dso_local global i32 0, align 4
@pDHCPMSG = common dso_local global %struct.TYPE_2__* null, align 8
@DHCP_DISCOVER = common dso_local global i32 0, align 4
@dhcpClientIdentifier = common dso_local global i32 0, align 4
@DHCP_CHADDR = common dso_local global i8** null, align 8
@hostName = common dso_local global i32 0, align 4
@HOST_NAME = common dso_local global i32* null, align 8
@dhcpParamRequest = common dso_local global i64 0, align 8
@subnetMask = common dso_local global i32 0, align 4
@routersOnSubnet = common dso_local global i32 0, align 4
@dns = common dso_local global i32 0, align 4
@domainName = common dso_local global i32 0, align 4
@dhcpT1value = common dso_local global i32 0, align 4
@dhcpT2value = common dso_local global i32 0, align 4
@endOption = common dso_local global i32 0, align 4
@OPT_SIZE = common dso_local global i64 0, align 8
@DHCP_SOCKET = common dso_local global i32 0, align 4
@RIP_MSG_SIZE = common dso_local global i32 0, align 4
@DHCP_SERVER_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_DHCP_DISCOVER() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [4 x i32], align 16
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  %4 = call i32 (...) @makeDHCPMSG()
  store i64 4, i64* %3, align 8
  %5 = load i32, i32* @dhcpMessageType, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* %3, align 8
  %11 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32 %5, i32* %11, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %3, align 8
  %17 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* @DHCP_DISCOVER, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  %24 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %18, i32* %24, align 4
  %25 = load i32, i32* @dhcpClientIdentifier, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  %31 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %25, i32* %31, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  %37 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 7, i32* %37, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %3, align 8
  %43 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 1, i32* %43, align 4
  %44 = load i8**, i8*** @DHCP_CHADDR, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %3, align 8
  %53 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %47, i32* %53, align 4
  %54 = load i8**, i8*** @DHCP_CHADDR, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %3, align 8
  %63 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %57, i32* %63, align 4
  %64 = load i8**, i8*** @DHCP_CHADDR, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %3, align 8
  %73 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %73, align 4
  %74 = load i8**, i8*** @DHCP_CHADDR, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 3
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %3, align 8
  %83 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %77, i32* %83, align 4
  %84 = load i8**, i8*** @DHCP_CHADDR, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 4
  %86 = load i8*, i8** %85, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %3, align 8
  %93 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %87, i32* %93, align 4
  %94 = load i8**, i8*** @DHCP_CHADDR, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 5
  %96 = load i8*, i8** %95, align 8
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %3, align 8
  %103 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %97, i32* %103, align 4
  %104 = load i32, i32* @hostName, align 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %3, align 8
  %110 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %104, i32* %110, align 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %3, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %3, align 8
  %116 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 0, i32* %116, align 4
  store i64 0, i64* %1, align 8
  br label %117

117:                                              ; preds = %134, %0
  %118 = load i32*, i32** @HOST_NAME, align 8
  %119 = load i64, i64* %1, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load i32*, i32** @HOST_NAME, align 8
  %125 = load i64, i64* %1, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %3, align 8
  %133 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %127, i32* %133, align 4
  br label %134

134:                                              ; preds = %123
  %135 = load i64, i64* %1, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %1, align 8
  br label %117

137:                                              ; preds = %117
  %138 = load i8**, i8*** @DHCP_CHADDR, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 3
  %140 = load i8*, i8** %139, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %3, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %3, align 8
  %147 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32 %141, i32* %147, align 4
  %148 = load i8**, i8*** @DHCP_CHADDR, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 4
  %150 = load i8*, i8** %149, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %3, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %3, align 8
  %157 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32 %151, i32* %157, align 4
  %158 = load i8**, i8*** @DHCP_CHADDR, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 5
  %160 = load i8*, i8** %159, align 8
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %3, align 8
  %167 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32 %161, i32* %167, align 4
  %168 = load i64, i64* %1, align 8
  %169 = add i64 %168, 3
  %170 = trunc i64 %169 to i32
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* %3, align 8
  %175 = load i64, i64* %1, align 8
  %176 = add i64 %175, 3
  %177 = add i64 %176, 1
  %178 = sub i64 %174, %177
  %179 = getelementptr inbounds i32, i32* %173, i64 %178
  store i32 %170, i32* %179, align 4
  %180 = load i64, i64* @dhcpParamRequest, align 8
  %181 = trunc i64 %180 to i32
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %3, align 8
  %187 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32 %181, i32* %187, align 4
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* %3, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %3, align 8
  %193 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32 6, i32* %193, align 4
  %194 = load i32, i32* @subnetMask, align 4
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* %3, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %3, align 8
  %200 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32 %194, i32* %200, align 4
  %201 = load i32, i32* @routersOnSubnet, align 4
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* %3, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %3, align 8
  %207 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32 %201, i32* %207, align 4
  %208 = load i32, i32* @dns, align 4
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* %3, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %3, align 8
  %214 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 %208, i32* %214, align 4
  %215 = load i32, i32* @domainName, align 4
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i64, i64* %3, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %3, align 8
  %221 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32 %215, i32* %221, align 4
  %222 = load i32, i32* @dhcpT1value, align 4
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %3, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %3, align 8
  %228 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32 %222, i32* %228, align 4
  %229 = load i32, i32* @dhcpT2value, align 4
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i64, i64* %3, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %3, align 8
  %235 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32 %229, i32* %235, align 4
  %236 = load i32, i32* @endOption, align 4
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* %3, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %3, align 8
  %242 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32 %236, i32* %242, align 4
  %243 = load i64, i64* %3, align 8
  store i64 %243, i64* %1, align 8
  br label %244

244:                                              ; preds = %254, %137
  %245 = load i64, i64* %1, align 8
  %246 = load i64, i64* @OPT_SIZE, align 8
  %247 = icmp ult i64 %245, %246
  br i1 %247, label %248, label %257

248:                                              ; preds = %244
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* %1, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 0, i32* %253, align 4
  br label %254

254:                                              ; preds = %248
  %255 = load i64, i64* %1, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %1, align 8
  br label %244

257:                                              ; preds = %244
  %258 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 255, i32* %258, align 16
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  store i32 255, i32* %259, align 4
  %260 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  store i32 255, i32* %260, align 8
  %261 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  store i32 255, i32* %261, align 4
  %262 = load i32, i32* @DHCP_SOCKET, align 4
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %264 = bitcast %struct.TYPE_2__* %263 to i32*
  %265 = load i32, i32* @RIP_MSG_SIZE, align 4
  %266 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %267 = load i32, i32* @DHCP_SERVER_PORT, align 4
  %268 = call i32 @sendto(i32 %262, i32* %264, i32 %265, i32* %266, i32 %267)
  ret void
}

declare dso_local i32 @makeDHCPMSG(...) #1

declare dso_local i32 @sendto(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
