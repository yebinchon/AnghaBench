; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_parseDHCPMSG.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_parseDHCPMSG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32 }

@DHCP_SOCKET = common dso_local global i32 0, align 4
@pDHCPMSG = common dso_local global %struct.TYPE_2__* null, align 8
@DHCP_SERVER_PORT = common dso_local global i32 0, align 4
@DHCP_CHADDR = common dso_local global i64* null, align 8
@DHCP_allocated_sn = common dso_local global i32* null, align 8
@DHCP_allocated_gw = common dso_local global i32* null, align 8
@DHCP_allocated_dns = common dso_local global i32* null, align 8
@dhcp_lease_time = common dso_local global i32 0, align 4
@DHCP_SIP = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parseDHCPMSG() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @DHCP_SOCKET, align 4
  %10 = call i32 @getSn_RX_RSR(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %0
  %13 = load i32, i32* @DHCP_SOCKET, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %15 = bitcast %struct.TYPE_2__* %14 to i32*
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %18 = call i32 @recvfrom(i32 %13, i32* %15, i32 %16, i32* %17, i32* %3)
  store i32 %18, i32* %4, align 4
  br label %20

19:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %269

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DHCP_SERVER_PORT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %267

24:                                               ; preds = %20
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** @DHCP_CHADDR, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %84, label %34

34:                                               ; preds = %24
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** @DHCP_CHADDR, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %84, label %44

44:                                               ; preds = %34
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** @DHCP_CHADDR, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %84, label %54

54:                                               ; preds = %44
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** @DHCP_CHADDR, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %84, label %64

64:                                               ; preds = %54
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 4
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** @DHCP_CHADDR, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %84, label %74

74:                                               ; preds = %64
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 5
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** @DHCP_CHADDR, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74, %64, %54, %44, %34, %24
  store i32 0, i32* %1, align 4
  br label %269

85:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32* %87, i32** %5, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 240
  store i32* %89, i32** %5, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %91, 240
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32* %94, i32** %6, align 8
  br label %95

95:                                               ; preds = %265, %85
  %96 = load i32*, i32** %5, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = icmp ult i32* %96, %97
  br i1 %98, label %99, label %266

99:                                               ; preds = %95
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %255 [
    i32 131, label %102
    i32 130, label %104
    i32 134, label %107
    i32 128, label %115
    i32 129, label %140
    i32 132, label %171
    i32 135, label %202
    i32 133, label %229
  ]

102:                                              ; preds = %99
  %103 = load i32*, i32** %6, align 8
  store i32* %103, i32** %5, align 8
  br label %265

104:                                              ; preds = %99
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %5, align 8
  br label %265

107:                                              ; preds = %99
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %5, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %5, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %5, align 8
  %114 = load i32, i32* %112, align 4
  store i32 %114, i32* %7, align 4
  br label %265

115:                                              ; preds = %99
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %5, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %5, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %5, align 8
  %122 = load i32, i32* %120, align 4
  %123 = load i32*, i32** @DHCP_allocated_sn, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %122, i32* %124, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %5, align 8
  %127 = load i32, i32* %125, align 4
  %128 = load i32*, i32** @DHCP_allocated_sn, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %5, align 8
  %132 = load i32, i32* %130, align 4
  %133 = load i32*, i32** @DHCP_allocated_sn, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  store i32 %132, i32* %134, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %5, align 8
  %137 = load i32, i32* %135, align 4
  %138 = load i32*, i32** @DHCP_allocated_sn, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  store i32 %137, i32* %139, align 4
  br label %265

140:                                              ; preds = %99
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %5, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %5, align 8
  %145 = load i32, i32* %143, align 4
  store i32 %145, i32* %8, align 4
  %146 = load i32*, i32** %5, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %5, align 8
  %148 = load i32, i32* %146, align 4
  %149 = load i32*, i32** @DHCP_allocated_gw, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %148, i32* %150, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %5, align 8
  %153 = load i32, i32* %151, align 4
  %154 = load i32*, i32** @DHCP_allocated_gw, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %153, i32* %155, align 4
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %5, align 8
  %158 = load i32, i32* %156, align 4
  %159 = load i32*, i32** @DHCP_allocated_gw, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  store i32 %158, i32* %160, align 4
  %161 = load i32*, i32** %5, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %5, align 8
  %163 = load i32, i32* %161, align 4
  %164 = load i32*, i32** @DHCP_allocated_gw, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  store i32 %163, i32* %165, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sub nsw i32 %167, 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32* %170, i32** %5, align 8
  br label %265

171:                                              ; preds = %99
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %5, align 8
  %174 = load i32*, i32** %5, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %5, align 8
  %176 = load i32, i32* %174, align 4
  store i32 %176, i32* %8, align 4
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %5, align 8
  %179 = load i32, i32* %177, align 4
  %180 = load i32*, i32** @DHCP_allocated_dns, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  store i32 %179, i32* %181, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %5, align 8
  %184 = load i32, i32* %182, align 4
  %185 = load i32*, i32** @DHCP_allocated_dns, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 %184, i32* %186, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %5, align 8
  %189 = load i32, i32* %187, align 4
  %190 = load i32*, i32** @DHCP_allocated_dns, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  store i32 %189, i32* %191, align 4
  %192 = load i32*, i32** %5, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %5, align 8
  %194 = load i32, i32* %192, align 4
  %195 = load i32*, i32** @DHCP_allocated_dns, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 3
  store i32 %194, i32* %196, align 4
  %197 = load i32*, i32** %5, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sub nsw i32 %198, 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  store i32* %201, i32** %5, align 8
  br label %265

202:                                              ; preds = %99
  %203 = load i32*, i32** %5, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %5, align 8
  %205 = load i32*, i32** %5, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %5, align 8
  %207 = load i32, i32* %205, align 4
  store i32 %207, i32* %8, align 4
  %208 = load i32*, i32** %5, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 1
  store i32* %209, i32** %5, align 8
  %210 = load i32, i32* %208, align 4
  store i32 %210, i32* @dhcp_lease_time, align 4
  %211 = load i32, i32* @dhcp_lease_time, align 4
  %212 = shl i32 %211, 8
  %213 = load i32*, i32** %5, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %5, align 8
  %215 = load i32, i32* %213, align 4
  %216 = add nsw i32 %212, %215
  store i32 %216, i32* @dhcp_lease_time, align 4
  %217 = load i32, i32* @dhcp_lease_time, align 4
  %218 = shl i32 %217, 8
  %219 = load i32*, i32** %5, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %5, align 8
  %221 = load i32, i32* %219, align 4
  %222 = add nsw i32 %218, %221
  store i32 %222, i32* @dhcp_lease_time, align 4
  %223 = load i32, i32* @dhcp_lease_time, align 4
  %224 = shl i32 %223, 8
  %225 = load i32*, i32** %5, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %5, align 8
  %227 = load i32, i32* %225, align 4
  %228 = add nsw i32 %224, %227
  store i32 %228, i32* @dhcp_lease_time, align 4
  br label %265

229:                                              ; preds = %99
  %230 = load i32*, i32** %5, align 8
  %231 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %231, i32** %5, align 8
  %232 = load i32*, i32** %5, align 8
  %233 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %233, i32** %5, align 8
  %234 = load i32, i32* %232, align 4
  store i32 %234, i32* %8, align 4
  %235 = load i32*, i32** %5, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %236, i32** %5, align 8
  %237 = load i32, i32* %235, align 4
  %238 = load i32*, i32** @DHCP_SIP, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  store i32 %237, i32* %239, align 4
  %240 = load i32*, i32** %5, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %5, align 8
  %242 = load i32, i32* %240, align 4
  %243 = load i32*, i32** @DHCP_SIP, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  store i32 %242, i32* %244, align 4
  %245 = load i32*, i32** %5, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %5, align 8
  %247 = load i32, i32* %245, align 4
  %248 = load i32*, i32** @DHCP_SIP, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 2
  store i32 %247, i32* %249, align 4
  %250 = load i32*, i32** %5, align 8
  %251 = getelementptr inbounds i32, i32* %250, i32 1
  store i32* %251, i32** %5, align 8
  %252 = load i32, i32* %250, align 4
  %253 = load i32*, i32** @DHCP_SIP, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 3
  store i32 %252, i32* %254, align 4
  br label %265

255:                                              ; preds = %99
  %256 = load i32*, i32** %5, align 8
  %257 = getelementptr inbounds i32, i32* %256, i32 1
  store i32* %257, i32** %5, align 8
  %258 = load i32*, i32** %5, align 8
  %259 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %259, i32** %5, align 8
  %260 = load i32, i32* %258, align 4
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %8, align 4
  %262 = load i32*, i32** %5, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32* %264, i32** %5, align 8
  br label %265

265:                                              ; preds = %255, %229, %202, %171, %140, %115, %107, %104, %102
  br label %95

266:                                              ; preds = %95
  br label %267

267:                                              ; preds = %266, %20
  %268 = load i32, i32* %7, align 4
  store i32 %268, i32* %1, align 4
  br label %269

269:                                              ; preds = %267, %84, %19
  %270 = load i32, i32* %1, align 4
  ret i32 %270
}

declare dso_local i32 @getSn_RX_RSR(i32) #1

declare dso_local i32 @recvfrom(i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
