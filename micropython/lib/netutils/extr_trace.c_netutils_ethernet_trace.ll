; ModuleID = '/home/carl/AnghaBench/micropython/lib/netutils/extr_trace.c_netutils_ethernet_trace.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/netutils/extr_trace.c_netutils_ethernet_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"[% 8d] ETH%cX len=%u\00", align 1
@NETUTILS_TRACE_IS_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c" dst=%02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c" src=%02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" type=%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" type=0x%04x\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c" srcip=%u.%u.%u.%u dstip=%u.%u.%u.%u\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c" TCP srcport=%u dstport=%u seqnum=%u acknum=%u dataoff=%u flags=%x winsz=%u\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" opts=\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c" UDP srcport=%u dstport=%u\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" DHCPS\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" DHCPC\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" opts:\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" DISCOVER\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" OFFER\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c" REQUEST\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" DECLINE\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" ACK\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" NACK\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c" RELEASE\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c" INFORM\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c" prot=%u\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c" tclass=%u flow=%u len=%u nexthdr=%u hoplimit=%u\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c" srcip=\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c" dstip=\00", align 1
@NETUTILS_TRACE_PAYLOAD = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c" data=\00", align 1
@NETUTILS_TRACE_NEWLINE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netutils_ethernet_trace(i32* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 (...) @mp_hal_ticks_ms()
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @NETUTILS_TRACE_IS_TX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 84, i32 82
  %31 = load i64, i64* %6, align 8
  %32 = call i32 (i32*, i8*, ...) @mp_printf(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %30, i64 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32*, i8*, ...) @mp_printf(i32* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 9
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 10
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 11
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32*, i8*, ...) @mp_printf(i32* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %59, i32 %62, i32 %65, i32 %68, i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 12
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 13
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %76, %79
  %81 = call i8* @ethertype_str(i32 %80)
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %4
  %85 = load i32*, i32** %5, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 (i32*, i8*, ...) @mp_printf(i32* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %99

88:                                               ; preds = %4
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 12
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 13
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %93, %96
  %98 = call i32 (i32*, i8*, ...) @mp_printf(i32* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %88, %84
  %100 = load i64, i64* %6, align 8
  %101 = icmp ugt i64 %100, 14
  br i1 %101, label %102, label %375

102:                                              ; preds = %99
  %103 = load i64, i64* %6, align 8
  %104 = sub i64 %103, 14
  store i64 %104, i64* %6, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 14
  store i32* %106, i32** %7, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 -2
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 8
  br i1 %110, label %111, label %308

111:                                              ; preds = %102
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 -1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %308

116:                                              ; preds = %111
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 69
  br i1 %120, label %121, label %308

121:                                              ; preds = %116
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = call i8* @get_be16(i32* %123)
  %125 = ptrtoint i8* %124 to i64
  store i64 %125, i64* %6, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 12
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 13
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 14
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 15
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 16
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 17
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 18
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 19
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32*, i8*, ...) @mp_printf(i32* %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %129, i32 %132, i32 %135, i32 %138, i32 %141, i32 %144, i32 %147, i32 %150)
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 9
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %10, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 20
  store i32* %156, i32** %7, align 8
  %157 = load i64, i64* %6, align 8
  %158 = sub i64 %157, 20
  store i64 %158, i64* %6, align 8
  %159 = load i32, i32* %10, align 4
  %160 = icmp eq i32 %159, 6
  br i1 %160, label %161, label %220

161:                                              ; preds = %121
  %162 = load i32*, i32** %7, align 8
  %163 = call i8* @get_be16(i32* %162)
  %164 = ptrtoint i8* %163 to i32
  store i32 %164, i32* %11, align 4
  %165 = load i32*, i32** %7, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = call i8* @get_be16(i32* %166)
  %168 = ptrtoint i8* %167 to i32
  store i32 %168, i32* %12, align 4
  %169 = load i32*, i32** %7, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = call i32 @get_be32(i32* %170)
  store i32 %171, i32* %13, align 4
  %172 = load i32*, i32** %7, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 8
  %174 = call i32 @get_be32(i32* %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32*, i32** %7, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 12
  %177 = call i8* @get_be16(i32* %176)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %15, align 4
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 14
  %181 = call i8* @get_be16(i32* %180)
  %182 = ptrtoint i8* %181 to i32
  store i32 %182, i32* %16, align 4
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %15, align 4
  %189 = ashr i32 %188, 12
  %190 = load i32, i32* %15, align 4
  %191 = and i32 %190, 511
  %192 = load i32, i32* %16, align 4
  %193 = call i32 (i32*, i8*, ...) @mp_printf(i32* %183, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 %184, i32 %185, i32 %186, i32 %187, i32 %189, i32 %191, i32 %192)
  %194 = load i32*, i32** %7, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 20
  store i32* %195, i32** %7, align 8
  %196 = load i64, i64* %6, align 8
  %197 = sub i64 %196, 20
  store i64 %197, i64* %6, align 8
  %198 = load i32, i32* %15, align 4
  %199 = ashr i32 %198, 12
  %200 = icmp sgt i32 %199, 5
  br i1 %200, label %201, label %219

201:                                              ; preds = %161
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 (i32*, i8*, ...) @mp_printf(i32* %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %204 = load i32, i32* %15, align 4
  %205 = ashr i32 %204, 12
  %206 = sub nsw i32 %205, 5
  %207 = mul nsw i32 %206, 4
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %17, align 8
  %209 = load i32*, i32** %5, align 8
  %210 = load i64, i64* %17, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @dump_hex_bytes(i32* %209, i64 %210, i32* %211)
  %213 = load i64, i64* %17, align 8
  %214 = load i32*, i32** %7, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 %213
  store i32* %215, i32** %7, align 8
  %216 = load i64, i64* %17, align 8
  %217 = load i64, i64* %6, align 8
  %218 = sub i64 %217, %216
  store i64 %218, i64* %6, align 8
  br label %219

219:                                              ; preds = %201, %161
  br label %307

220:                                              ; preds = %121
  %221 = load i32, i32* %10, align 4
  %222 = icmp eq i32 %221, 17
  br i1 %222, label %223, label %302

223:                                              ; preds = %220
  %224 = load i32*, i32** %7, align 8
  %225 = call i8* @get_be16(i32* %224)
  %226 = ptrtoint i8* %225 to i32
  store i32 %226, i32* %18, align 4
  %227 = load i32*, i32** %7, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  %229 = call i8* @get_be16(i32* %228)
  %230 = ptrtoint i8* %229 to i32
  store i32 %230, i32* %19, align 4
  %231 = load i32*, i32** %5, align 8
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* %19, align 4
  %234 = call i32 (i32*, i8*, ...) @mp_printf(i32* %231, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %232, i32 %233)
  %235 = load i32*, i32** %7, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 4
  %237 = call i8* @get_be16(i32* %236)
  %238 = ptrtoint i8* %237 to i64
  store i64 %238, i64* %6, align 8
  %239 = load i32*, i32** %7, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 8
  store i32* %240, i32** %7, align 8
  %241 = load i32, i32* %18, align 4
  %242 = icmp eq i32 %241, 67
  br i1 %242, label %243, label %246

243:                                              ; preds = %223
  %244 = load i32, i32* %19, align 4
  %245 = icmp eq i32 %244, 68
  br i1 %245, label %252, label %246

246:                                              ; preds = %243, %223
  %247 = load i32, i32* %18, align 4
  %248 = icmp eq i32 %247, 68
  br i1 %248, label %249, label %301

249:                                              ; preds = %246
  %250 = load i32, i32* %19, align 4
  %251 = icmp eq i32 %250, 67
  br i1 %251, label %252, label %301

252:                                              ; preds = %249, %243
  %253 = load i32, i32* %18, align 4
  %254 = icmp eq i32 %253, 67
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i32*, i32** %5, align 8
  %257 = call i32 (i32*, i8*, ...) @mp_printf(i32* %256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %261

258:                                              ; preds = %252
  %259 = load i32*, i32** %5, align 8
  %260 = call i32 (i32*, i8*, ...) @mp_printf(i32* %259, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %261

261:                                              ; preds = %258, %255
  %262 = load i32*, i32** %5, align 8
  %263 = load i32*, i32** %7, align 8
  %264 = call i32 @dump_hex_bytes(i32* %262, i64 108, i32* %263)
  store i64 236, i64* %20, align 8
  %265 = load i64, i64* %20, align 8
  %266 = load i64, i64* %6, align 8
  %267 = sub i64 %266, %265
  store i64 %267, i64* %6, align 8
  %268 = load i64, i64* %20, align 8
  %269 = load i32*, i32** %7, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 %268
  store i32* %270, i32** %7, align 8
  %271 = load i32*, i32** %5, align 8
  %272 = call i32 (i32*, i8*, ...) @mp_printf(i32* %271, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %273 = load i32*, i32** %7, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 6
  %275 = load i32, i32* %274, align 4
  switch i32 %275, label %300 [
    i32 1, label %276
    i32 2, label %279
    i32 3, label %282
    i32 4, label %285
    i32 5, label %288
    i32 6, label %291
    i32 7, label %294
    i32 8, label %297
  ]

276:                                              ; preds = %261
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 (i32*, i8*, ...) @mp_printf(i32* %277, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %300

279:                                              ; preds = %261
  %280 = load i32*, i32** %5, align 8
  %281 = call i32 (i32*, i8*, ...) @mp_printf(i32* %280, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %300

282:                                              ; preds = %261
  %283 = load i32*, i32** %5, align 8
  %284 = call i32 (i32*, i8*, ...) @mp_printf(i32* %283, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %300

285:                                              ; preds = %261
  %286 = load i32*, i32** %5, align 8
  %287 = call i32 (i32*, i8*, ...) @mp_printf(i32* %286, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %300

288:                                              ; preds = %261
  %289 = load i32*, i32** %5, align 8
  %290 = call i32 (i32*, i8*, ...) @mp_printf(i32* %289, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %300

291:                                              ; preds = %261
  %292 = load i32*, i32** %5, align 8
  %293 = call i32 (i32*, i8*, ...) @mp_printf(i32* %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %300

294:                                              ; preds = %261
  %295 = load i32*, i32** %5, align 8
  %296 = call i32 (i32*, i8*, ...) @mp_printf(i32* %295, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %300

297:                                              ; preds = %261
  %298 = load i32*, i32** %5, align 8
  %299 = call i32 (i32*, i8*, ...) @mp_printf(i32* %298, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %300

300:                                              ; preds = %261, %297, %294, %291, %288, %285, %282, %279, %276
  br label %301

301:                                              ; preds = %300, %249, %246
  br label %306

302:                                              ; preds = %220
  %303 = load i32*, i32** %5, align 8
  %304 = load i32, i32* %10, align 4
  %305 = call i32 (i32*, i8*, ...) @mp_printf(i32* %303, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %304)
  br label %306

306:                                              ; preds = %302, %301
  br label %307

307:                                              ; preds = %306, %219
  br label %362

308:                                              ; preds = %116, %111, %102
  %309 = load i32*, i32** %7, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 -2
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %311, 134
  br i1 %312, label %313, label %361

313:                                              ; preds = %308
  %314 = load i32*, i32** %7, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 -1
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 221
  br i1 %317, label %318, label %361

318:                                              ; preds = %313
  %319 = load i32*, i32** %7, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 0
  %321 = load i32, i32* %320, align 4
  %322 = ashr i32 %321, 4
  %323 = icmp eq i32 %322, 6
  br i1 %323, label %324, label %361

324:                                              ; preds = %318
  %325 = load i32*, i32** %7, align 8
  %326 = call i32 @get_be32(i32* %325)
  store i32 %326, i32* %21, align 4
  %327 = load i32*, i32** %7, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 4
  %329 = call i8* @get_be16(i32* %328)
  %330 = ptrtoint i8* %329 to i32
  store i32 %330, i32* %22, align 4
  %331 = load i32*, i32** %5, align 8
  %332 = load i32, i32* %21, align 4
  %333 = ashr i32 %332, 20
  %334 = and i32 %333, 255
  %335 = load i32, i32* %21, align 4
  %336 = and i32 %335, 1048575
  %337 = load i32, i32* %22, align 4
  %338 = load i32*, i32** %7, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 6
  %340 = load i32, i32* %339, align 4
  %341 = load i32*, i32** %7, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 7
  %343 = load i32, i32* %342, align 4
  %344 = call i32 (i32*, i8*, ...) @mp_printf(i32* %331, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0), i32 %334, i32 %336, i32 %337, i32 %340, i32 %343)
  %345 = load i32*, i32** %5, align 8
  %346 = call i32 (i32*, i8*, ...) @mp_printf(i32* %345, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %347 = load i32*, i32** %5, align 8
  %348 = load i32*, i32** %7, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 8
  %350 = call i32 @dump_hex_bytes(i32* %347, i64 16, i32* %349)
  %351 = load i32*, i32** %5, align 8
  %352 = call i32 (i32*, i8*, ...) @mp_printf(i32* %351, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %353 = load i32*, i32** %5, align 8
  %354 = load i32*, i32** %7, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 24
  %356 = call i32 @dump_hex_bytes(i32* %353, i64 16, i32* %355)
  %357 = load i32*, i32** %7, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 40
  store i32* %358, i32** %7, align 8
  %359 = load i64, i64* %6, align 8
  %360 = sub i64 %359, 40
  store i64 %360, i64* %6, align 8
  br label %361

361:                                              ; preds = %324, %318, %313, %308
  br label %362

362:                                              ; preds = %361, %307
  %363 = load i32, i32* %8, align 4
  %364 = load i32, i32* @NETUTILS_TRACE_PAYLOAD, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %362
  %368 = load i32*, i32** %5, align 8
  %369 = call i32 (i32*, i8*, ...) @mp_printf(i32* %368, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %370 = load i32*, i32** %5, align 8
  %371 = load i64, i64* %6, align 8
  %372 = load i32*, i32** %7, align 8
  %373 = call i32 @dump_hex_bytes(i32* %370, i64 %371, i32* %372)
  br label %374

374:                                              ; preds = %367, %362
  br label %375

375:                                              ; preds = %374, %99
  %376 = load i32, i32* %8, align 4
  %377 = load i32, i32* @NETUTILS_TRACE_NEWLINE, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load i32*, i32** %5, align 8
  %382 = call i32 (i32*, i8*, ...) @mp_printf(i32* %381, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  br label %383

383:                                              ; preds = %380, %375
  ret void
}

declare dso_local i32 @mp_printf(i32*, i8*, ...) #1

declare dso_local i32 @mp_hal_ticks_ms(...) #1

declare dso_local i8* @ethertype_str(i32) #1

declare dso_local i8* @get_be16(i32*) #1

declare dso_local i32 @get_be32(i32*) #1

declare dso_local i32 @dump_hex_bytes(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
