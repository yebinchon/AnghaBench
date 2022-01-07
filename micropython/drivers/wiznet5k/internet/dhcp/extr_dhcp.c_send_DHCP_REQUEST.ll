; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_send_DHCP_REQUEST.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_send_DHCP_REQUEST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i8**, i32 }

@dhcp_state = common dso_local global i64 0, align 8
@STATE_DHCP_LEASED = common dso_local global i64 0, align 8
@STATE_DHCP_REREQUEST = common dso_local global i64 0, align 8
@DHCP_FLAGSUNICAST = common dso_local global i32 0, align 4
@pDHCPMSG = common dso_local global %struct.TYPE_2__* null, align 8
@DHCP_allocated_ip = common dso_local global i8** null, align 8
@DHCP_SIP = common dso_local global i8** null, align 8
@dhcpMessageType = common dso_local global i32 0, align 4
@DHCP_REQUEST = common dso_local global i32 0, align 4
@dhcpClientIdentifier = common dso_local global i32 0, align 4
@DHCP_CHADDR = common dso_local global i8** null, align 8
@dhcpRequestedIPaddr = common dso_local global i32 0, align 4
@dhcpServerIdentifier = common dso_local global i32 0, align 4
@hostName = common dso_local global i32 0, align 4
@HOST_NAME = common dso_local global i32* null, align 8
@dhcpParamRequest = common dso_local global i32 0, align 4
@subnetMask = common dso_local global i32 0, align 4
@routersOnSubnet = common dso_local global i32 0, align 4
@dns = common dso_local global i32 0, align 4
@domainName = common dso_local global i32 0, align 4
@dhcpT1value = common dso_local global i32 0, align 4
@dhcpT2value = common dso_local global i32 0, align 4
@performRouterDiscovery = common dso_local global i32 0, align 4
@staticRoute = common dso_local global i32 0, align 4
@endOption = common dso_local global i32 0, align 4
@OPT_SIZE = common dso_local global i32 0, align 4
@DHCP_SOCKET = common dso_local global i32 0, align 4
@RIP_MSG_SIZE = common dso_local global i32 0, align 4
@DHCP_SERVER_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_DHCP_REQUEST() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @makeDHCPMSG()
  %5 = load i64, i64* @dhcp_state, align 8
  %6 = load i64, i64* @STATE_DHCP_LEASED, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* @dhcp_state, align 8
  %10 = load i64, i64* @STATE_DHCP_REREQUEST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %71

12:                                               ; preds = %8, %0
  %13 = load i32, i32* @DHCP_FLAGSUNICAST, align 4
  %14 = and i32 %13, 65280
  %15 = ashr i32 %14, 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @DHCP_FLAGSUNICAST, align 4
  %19 = and i32 %18, 255
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %19, i32* %22, align 4
  %23 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %25, i8** %29, align 8
  %30 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  store i8* %32, i8** %36, align 8
  %37 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  store i8* %39, i8** %43, align 8
  %44 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 3
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 3
  store i8* %46, i8** %50, align 8
  %51 = load i8**, i8*** @DHCP_SIP, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 %54, i32* %55, align 16
  %56 = load i8**, i8*** @DHCP_SIP, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load i8**, i8*** @DHCP_SIP, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  store i32 %64, i32* %65, align 8
  %66 = load i8**, i8*** @DHCP_SIP, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 3
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  store i32 %69, i32* %70, align 4
  br label %76

71:                                               ; preds = %8
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 255, i32* %72, align 16
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  store i32 255, i32* %73, align 4
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  store i32 255, i32* %74, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  store i32 255, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %12
  store i32 4, i32* %3, align 4
  %77 = load i32, i32* @dhcpMessageType, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %77, i32* %84, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 1, i32* %91, align 4
  %92 = load i32, i32* @DHCP_REQUEST, align 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %92, i32* %99, align 4
  %100 = load i32, i32* @dhcpClientIdentifier, align 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %100, i32* %107, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32 7, i32* %114, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 1, i32* %121, align 4
  %122 = load i8**, i8*** @DHCP_CHADDR, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %125, i32* %132, align 4
  %133 = load i8**, i8*** @DHCP_CHADDR, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 1
  %135 = load i8*, i8** %134, align 8
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %136, i32* %143, align 4
  %144 = load i8**, i8*** @DHCP_CHADDR, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 2
  %146 = load i8*, i8** %145, align 8
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %147, i32* %154, align 4
  %155 = load i8**, i8*** @DHCP_CHADDR, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 3
  %157 = load i8*, i8** %156, align 8
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %3, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 %158, i32* %165, align 4
  %166 = load i8**, i8*** @DHCP_CHADDR, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 4
  %168 = load i8*, i8** %167, align 8
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %3, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 %169, i32* %176, align 4
  %177 = load i8**, i8*** @DHCP_CHADDR, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 5
  %179 = load i8*, i8** %178, align 8
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 %180, i32* %187, align 4
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 255
  br i1 %190, label %191, label %310

191:                                              ; preds = %76
  %192 = load i32, i32* @dhcpRequestedIPaddr, align 4
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %3, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 %192, i32* %199, align 4
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %3, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %3, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  store i32 4, i32* %206, align 4
  %207 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 0
  %209 = load i8*, i8** %208, align 8
  %210 = ptrtoint i8* %209 to i32
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %3, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %3, align 4
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  store i32 %210, i32* %217, align 4
  %218 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %219 = getelementptr inbounds i8*, i8** %218, i64 1
  %220 = load i8*, i8** %219, align 8
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %3, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %3, align 4
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  store i32 %221, i32* %228, align 4
  %229 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 2
  %231 = load i8*, i8** %230, align 8
  %232 = ptrtoint i8* %231 to i32
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %3, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %3, align 4
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  store i32 %232, i32* %239, align 4
  %240 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %241 = getelementptr inbounds i8*, i8** %240, i64 3
  %242 = load i8*, i8** %241, align 8
  %243 = ptrtoint i8* %242 to i32
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %3, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %3, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  store i32 %243, i32* %250, align 4
  %251 = load i32, i32* @dhcpServerIdentifier, align 4
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %3, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %3, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 %251, i32* %258, align 4
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %3, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %3, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  store i32 4, i32* %265, align 4
  %266 = load i8**, i8*** @DHCP_SIP, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 0
  %268 = load i8*, i8** %267, align 8
  %269 = ptrtoint i8* %268 to i32
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %3, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %3, align 4
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  store i32 %269, i32* %276, align 4
  %277 = load i8**, i8*** @DHCP_SIP, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 1
  %279 = load i8*, i8** %278, align 8
  %280 = ptrtoint i8* %279 to i32
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %3, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %3, align 4
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  store i32 %280, i32* %287, align 4
  %288 = load i8**, i8*** @DHCP_SIP, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i64 2
  %290 = load i8*, i8** %289, align 8
  %291 = ptrtoint i8* %290 to i32
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %3, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %3, align 4
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  store i32 %291, i32* %298, align 4
  %299 = load i8**, i8*** @DHCP_SIP, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 3
  %301 = load i8*, i8** %300, align 8
  %302 = ptrtoint i8* %301 to i32
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %3, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %3, align 4
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  store i32 %302, i32* %309, align 4
  br label %310

310:                                              ; preds = %191, %76
  %311 = load i32, i32* @hostName, align 4
  %312 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %3, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %3, align 4
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  store i32 %311, i32* %318, align 4
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %3, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %3, align 4
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i32, i32* %321, i64 %324
  store i32 0, i32* %325, align 4
  store i32 0, i32* %1, align 4
  br label %326

326:                                              ; preds = %346, %310
  %327 = load i32*, i32** @HOST_NAME, align 8
  %328 = load i32, i32* %1, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %349

333:                                              ; preds = %326
  %334 = load i32*, i32** @HOST_NAME, align 8
  %335 = load i32, i32* %1, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %3, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %3, align 4
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  store i32 %338, i32* %345, align 4
  br label %346

346:                                              ; preds = %333
  %347 = load i32, i32* %1, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %1, align 4
  br label %326

349:                                              ; preds = %326
  %350 = load i8**, i8*** @DHCP_CHADDR, align 8
  %351 = getelementptr inbounds i8*, i8** %350, i64 3
  %352 = load i8*, i8** %351, align 8
  %353 = ptrtoint i8* %352 to i32
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %3, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %3, align 4
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  store i32 %353, i32* %360, align 4
  %361 = load i8**, i8*** @DHCP_CHADDR, align 8
  %362 = getelementptr inbounds i8*, i8** %361, i64 4
  %363 = load i8*, i8** %362, align 8
  %364 = ptrtoint i8* %363 to i32
  %365 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %3, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %3, align 4
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds i32, i32* %367, i64 %370
  store i32 %364, i32* %371, align 4
  %372 = load i8**, i8*** @DHCP_CHADDR, align 8
  %373 = getelementptr inbounds i8*, i8** %372, i64 5
  %374 = load i8*, i8** %373, align 8
  %375 = ptrtoint i8* %374 to i32
  %376 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %3, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %3, align 4
  %381 = sext i32 %379 to i64
  %382 = getelementptr inbounds i32, i32* %378, i64 %381
  store i32 %375, i32* %382, align 4
  %383 = load i32, i32* %1, align 4
  %384 = add nsw i32 %383, 3
  %385 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %3, align 4
  %389 = load i32, i32* %1, align 4
  %390 = add nsw i32 %389, 3
  %391 = add nsw i32 %390, 1
  %392 = sub nsw i32 %388, %391
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %387, i64 %393
  store i32 %384, i32* %394, align 4
  %395 = load i32, i32* @dhcpParamRequest, align 4
  %396 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i32 0, i32 0
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %3, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %3, align 4
  %401 = sext i32 %399 to i64
  %402 = getelementptr inbounds i32, i32* %398, i64 %401
  store i32 %395, i32* %402, align 4
  %403 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 0
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %3, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %3, align 4
  %408 = sext i32 %406 to i64
  %409 = getelementptr inbounds i32, i32* %405, i64 %408
  store i32 8, i32* %409, align 4
  %410 = load i32, i32* @subnetMask, align 4
  %411 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %3, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %3, align 4
  %416 = sext i32 %414 to i64
  %417 = getelementptr inbounds i32, i32* %413, i64 %416
  store i32 %410, i32* %417, align 4
  %418 = load i32, i32* @routersOnSubnet, align 4
  %419 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %420 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %419, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %3, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %3, align 4
  %424 = sext i32 %422 to i64
  %425 = getelementptr inbounds i32, i32* %421, i64 %424
  store i32 %418, i32* %425, align 4
  %426 = load i32, i32* @dns, align 4
  %427 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %427, i32 0, i32 0
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %3, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %3, align 4
  %432 = sext i32 %430 to i64
  %433 = getelementptr inbounds i32, i32* %429, i64 %432
  store i32 %426, i32* %433, align 4
  %434 = load i32, i32* @domainName, align 4
  %435 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %436 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %435, i32 0, i32 0
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %3, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %3, align 4
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds i32, i32* %437, i64 %440
  store i32 %434, i32* %441, align 4
  %442 = load i32, i32* @dhcpT1value, align 4
  %443 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %444 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %443, i32 0, i32 0
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %3, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %3, align 4
  %448 = sext i32 %446 to i64
  %449 = getelementptr inbounds i32, i32* %445, i64 %448
  store i32 %442, i32* %449, align 4
  %450 = load i32, i32* @dhcpT2value, align 4
  %451 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %451, i32 0, i32 0
  %453 = load i32*, i32** %452, align 8
  %454 = load i32, i32* %3, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %3, align 4
  %456 = sext i32 %454 to i64
  %457 = getelementptr inbounds i32, i32* %453, i64 %456
  store i32 %450, i32* %457, align 4
  %458 = load i32, i32* @performRouterDiscovery, align 4
  %459 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %460 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %459, i32 0, i32 0
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %3, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %3, align 4
  %464 = sext i32 %462 to i64
  %465 = getelementptr inbounds i32, i32* %461, i64 %464
  store i32 %458, i32* %465, align 4
  %466 = load i32, i32* @staticRoute, align 4
  %467 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %467, i32 0, i32 0
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %3, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %3, align 4
  %472 = sext i32 %470 to i64
  %473 = getelementptr inbounds i32, i32* %469, i64 %472
  store i32 %466, i32* %473, align 4
  %474 = load i32, i32* @endOption, align 4
  %475 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %476 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %475, i32 0, i32 0
  %477 = load i32*, i32** %476, align 8
  %478 = load i32, i32* %3, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %3, align 4
  %480 = sext i32 %478 to i64
  %481 = getelementptr inbounds i32, i32* %477, i64 %480
  store i32 %474, i32* %481, align 4
  %482 = load i32, i32* %3, align 4
  store i32 %482, i32* %1, align 4
  br label %483

483:                                              ; preds = %494, %349
  %484 = load i32, i32* %1, align 4
  %485 = load i32, i32* @OPT_SIZE, align 4
  %486 = icmp slt i32 %484, %485
  br i1 %486, label %487, label %497

487:                                              ; preds = %483
  %488 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %489 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %488, i32 0, i32 0
  %490 = load i32*, i32** %489, align 8
  %491 = load i32, i32* %1, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  store i32 0, i32* %493, align 4
  br label %494

494:                                              ; preds = %487
  %495 = load i32, i32* %1, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %1, align 4
  br label %483

497:                                              ; preds = %483
  %498 = load i32, i32* @DHCP_SOCKET, align 4
  %499 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %500 = bitcast %struct.TYPE_2__* %499 to i32*
  %501 = load i32, i32* @RIP_MSG_SIZE, align 4
  %502 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %503 = load i32, i32* @DHCP_SERVER_PORT, align 4
  %504 = call i32 @sendto(i32 %498, i32* %500, i32 %501, i32* %502, i32 %503)
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
