; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_send_DHCP_DECLINE.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_send_DHCP_DECLINE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@DHCP_FLAGSUNICAST = common dso_local global i32 0, align 4
@pDHCPMSG = common dso_local global %struct.TYPE_2__* null, align 8
@dhcpMessageType = common dso_local global i32 0, align 4
@DHCP_DECLINE = common dso_local global i32 0, align 4
@dhcpClientIdentifier = common dso_local global i32 0, align 4
@DHCP_CHADDR = common dso_local global i8** null, align 8
@dhcpRequestedIPaddr = common dso_local global i32 0, align 4
@DHCP_allocated_ip = common dso_local global i8** null, align 8
@dhcpServerIdentifier = common dso_local global i32 0, align 4
@DHCP_SIP = common dso_local global i8** null, align 8
@endOption = common dso_local global i32 0, align 4
@OPT_SIZE = common dso_local global i32 0, align 4
@DHCP_SOCKET = common dso_local global i32 0, align 4
@RIP_MSG_SIZE = common dso_local global i32 0, align 4
@DHCP_SERVER_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_DHCP_DECLINE() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @makeDHCPMSG()
  store i32 4, i32* %3, align 4
  %5 = load i32, i32* @DHCP_FLAGSUNICAST, align 4
  %6 = and i32 %5, 65280
  %7 = ashr i32 %6, 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @DHCP_FLAGSUNICAST, align 4
  %11 = and i32 %10, 255
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @dhcpMessageType, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 %15, i32* %22, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* @DHCP_DECLINE, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %30, i32* %37, align 4
  %38 = load i32, i32* @dhcpClientIdentifier, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %38, i32* %45, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 7, i32* %52, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 1, i32* %59, align 4
  %60 = load i8**, i8*** @DHCP_CHADDR, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %63, i32* %70, align 4
  %71 = load i8**, i8*** @DHCP_CHADDR, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %74, i32* %81, align 4
  %82 = load i8**, i8*** @DHCP_CHADDR, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 2
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %85, i32* %92, align 4
  %93 = load i8**, i8*** @DHCP_CHADDR, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 3
  %95 = load i8*, i8** %94, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %96, i32* %103, align 4
  %104 = load i8**, i8*** @DHCP_CHADDR, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 4
  %106 = load i8*, i8** %105, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32 %107, i32* %114, align 4
  %115 = load i8**, i8*** @DHCP_CHADDR, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 5
  %117 = load i8*, i8** %116, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %118, i32* %125, align 4
  %126 = load i32, i32* @dhcpRequestedIPaddr, align 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %126, i32* %133, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 4, i32* %140, align 4
  %141 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %3, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %144, i32* %151, align 4
  %152 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 1
  %154 = load i8*, i8** %153, align 8
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %3, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 %155, i32* %162, align 4
  %163 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 2
  %165 = load i8*, i8** %164, align 8
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %3, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 %166, i32* %173, align 4
  %174 = load i8**, i8*** @DHCP_allocated_ip, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 3
  %176 = load i8*, i8** %175, align 8
  %177 = ptrtoint i8* %176 to i32
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %3, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  store i32 %177, i32* %184, align 4
  %185 = load i32, i32* @dhcpServerIdentifier, align 4
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %3, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %3, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  store i32 %185, i32* %192, align 4
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %3, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 4, i32* %199, align 4
  %200 = load i8**, i8*** @DHCP_SIP, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 0
  %202 = load i8*, i8** %201, align 8
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %3, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %3, align 4
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  store i32 %203, i32* %210, align 4
  %211 = load i8**, i8*** @DHCP_SIP, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 1
  %213 = load i8*, i8** %212, align 8
  %214 = ptrtoint i8* %213 to i32
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %3, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %3, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32 %214, i32* %221, align 4
  %222 = load i8**, i8*** @DHCP_SIP, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 2
  %224 = load i8*, i8** %223, align 8
  %225 = ptrtoint i8* %224 to i32
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %3, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %3, align 4
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  store i32 %225, i32* %232, align 4
  %233 = load i8**, i8*** @DHCP_SIP, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 3
  %235 = load i8*, i8** %234, align 8
  %236 = ptrtoint i8* %235 to i32
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %3, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %3, align 4
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  store i32 %236, i32* %243, align 4
  %244 = load i32, i32* @endOption, align 4
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %3, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %3, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32 %244, i32* %251, align 4
  %252 = load i32, i32* %3, align 4
  store i32 %252, i32* %1, align 4
  br label %253

253:                                              ; preds = %264, %0
  %254 = load i32, i32* %1, align 4
  %255 = load i32, i32* @OPT_SIZE, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %267

257:                                              ; preds = %253
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %1, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 0, i32* %263, align 4
  br label %264

264:                                              ; preds = %257
  %265 = load i32, i32* %1, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %1, align 4
  br label %253

267:                                              ; preds = %253
  %268 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 255, i32* %268, align 16
  %269 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  store i32 255, i32* %269, align 4
  %270 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  store i32 255, i32* %270, align 8
  %271 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  store i32 255, i32* %271, align 4
  %272 = load i32, i32* @DHCP_SOCKET, align 4
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %274 = bitcast %struct.TYPE_2__* %273 to i32*
  %275 = load i32, i32* @RIP_MSG_SIZE, align 4
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %277 = load i32, i32* @DHCP_SERVER_PORT, align 4
  %278 = call i32 @sendto(i32 %272, i32* %274, i32 %275, i32* %276, i32 %277)
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
