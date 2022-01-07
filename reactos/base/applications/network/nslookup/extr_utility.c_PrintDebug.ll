; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_utility.c_PrintDebug.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_utility.c_PrintDebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Got answer (%d bytes):\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"    HEADER:\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"        opcode = %s, id = %d, rcode = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"        header flags:  response\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c", want recursion\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c", recursion avail.\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"        questions = %d,  answers = %d,  authority records = %d,  additional = %d\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"    QUESTIONS:\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"        %s\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c", type = %s, class = %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"    ANSWERS:\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"    ->  \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"        type = %s, class = %s, dlen = %d\0A\00", align 1
@TYPE_A = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"        internet address = %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"        name = %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"        ttl = %d ()\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"    AUTHORITY RECORDS:\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"    ->  %s\0A\00", align 1
@TYPE_NS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [25 x i8] c"        nameserver = %s\0A\00", align 1
@TYPE_SOA = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [34 x i8] c"        primary name server = %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"        responsible mail addr = %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"        serial = ()\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"        refresh = ()\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"        retry = ()\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"        expire = ()\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"        default TTL = ()\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"    ADDITIONAL:\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"\0A------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintDebug(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [255 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %17, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohs(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %17, align 4
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %17, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %17, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %17, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %17, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %17, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohs(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %17, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohs(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %17, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ntohs(i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %17, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohs(i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %17, align 4
  %78 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %79 = call i32 (i32, ...) @_tprintf(i32 %78)
  %80 = call i32 @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i64, i64* %4, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 (i32, ...) @_tprintf(i32 %80, i32 %82)
  %84 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %85 = call i32 (i32, ...) @_tprintf(i32 %84)
  %86 = call i32 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, 120
  %89 = ashr i32 %88, 3
  %90 = call i32 @OpcodeIDtoOpcodeName(i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, 15
  %94 = call i32 @RCodeIDtoRCodeName(i32 %93)
  %95 = call i32 (i32, ...) @_tprintf(i32 %86, i32 %90, i32 %91, i32 %94)
  %96 = call i32 @_T(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 (i32, ...) @_tprintf(i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %2
  %102 = call i32 @_T(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %103 = call i32 (i32, ...) @_tprintf(i32 %102)
  br label %104

104:                                              ; preds = %101, %2
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, 128
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = call i32 @_T(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %110 = call i32 (i32, ...) @_tprintf(i32 %109)
  br label %111

111:                                              ; preds = %108, %104
  %112 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %113 = call i32 (i32, ...) @_tprintf(i32 %112)
  %114 = call i32 @_T(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i64 0, i64 0))
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 (i32, ...) @_tprintf(i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %169

122:                                              ; preds = %111
  %123 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %124 = call i32 (i32, ...) @_tprintf(i32 %123)
  store i32 0, i32* %18, align 4
  br label %125

125:                                              ; preds = %165, %122
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %168

129:                                              ; preds = %125
  %130 = load i32*, i32** %3, align 8
  %131 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %132 = load i32, i32* %17, align 4
  %133 = call i64 @ExtractName(i32* %130, i32* %131, i32 %132, i32 0)
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %17, align 4
  %138 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %139 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %140 = call i32 (i32, ...) @_tprintf(i32 %138, i32* %139)
  %141 = load i32*, i32** %3, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ntohs(i32 %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %148, 2
  store i32 %149, i32* %17, align 4
  %150 = load i32*, i32** %3, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ntohs(i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 2
  store i32 %158, i32* %17, align 4
  %159 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @TypeIDtoTypeName(i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @ClassIDtoClassName(i32 %162)
  %164 = call i32 (i32, ...) @_tprintf(i32 %159, i32 %161, i32 %163)
  br label %165

165:                                              ; preds = %129
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %18, align 4
  br label %125

168:                                              ; preds = %125
  br label %169

169:                                              ; preds = %168, %111
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %273

172:                                              ; preds = %169
  %173 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %174 = call i32 (i32, ...) @_tprintf(i32 %173)
  store i32 0, i32* %18, align 4
  br label %175

175:                                              ; preds = %269, %172
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %272

179:                                              ; preds = %175
  %180 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %181 = call i32 (i32, ...) @_tprintf(i32 %180)
  %182 = load i32*, i32** %3, align 8
  %183 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %184 = load i32, i32* %17, align 4
  %185 = call i64 @ExtractName(i32* %182, i32* %183, i32 %184, i32 0)
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %185
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %17, align 4
  %190 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %191 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %192 = call i32 (i32, ...) @_tprintf(i32 %190, i32* %191)
  %193 = load i32*, i32** %3, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ntohs(i32 %198)
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %17, align 4
  %201 = add nsw i32 %200, 2
  store i32 %201, i32* %17, align 4
  %202 = load i32*, i32** %3, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ntohs(i32 %207)
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %17, align 4
  %210 = add nsw i32 %209, 2
  store i32 %210, i32* %17, align 4
  %211 = load i32*, i32** %3, align 8
  %212 = load i32, i32* %17, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @ntohl(i32 %216)
  store i64 %217, i64* %14, align 8
  %218 = load i32, i32* %17, align 4
  %219 = add nsw i32 %218, 4
  store i32 %219, i32* %17, align 4
  %220 = load i32*, i32** %3, align 8
  %221 = load i32, i32* %17, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @ntohs(i32 %225)
  store i32 %226, i32* %16, align 4
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, 2
  store i32 %228, i32* %17, align 4
  %229 = call i32 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @TypeIDtoTypeName(i32 %230)
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @ClassIDtoClassName(i32 %232)
  %234 = load i32, i32* %16, align 4
  %235 = call i32 (i32, ...) @_tprintf(i32 %229, i32 %231, i32 %233, i32 %234)
  %236 = load i32, i32* @TYPE_A, align 4
  %237 = load i32, i32* %12, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %251

239:                                              ; preds = %179
  %240 = load i32*, i32** %3, align 8
  %241 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %242 = load i32, i32* %17, align 4
  %243 = call i64 @ExtractIP(i32* %240, i32* %241, i32 %242)
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %245, %243
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %17, align 4
  %248 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %249 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %250 = call i32 (i32, ...) @_tprintf(i32 %248, i32* %249)
  br label %264

251:                                              ; preds = %179
  %252 = load i32*, i32** %3, align 8
  %253 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %16, align 4
  %256 = call i64 @ExtractName(i32* %252, i32* %253, i32 %254, i32 %255)
  %257 = load i32, i32* %17, align 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %258, %256
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %17, align 4
  %261 = call i32 @_T(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %262 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %263 = call i32 (i32, ...) @_tprintf(i32 %261, i32* %262)
  br label %264

264:                                              ; preds = %251, %239
  %265 = call i32 @_T(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %266 = load i64, i64* %14, align 8
  %267 = trunc i64 %266 to i32
  %268 = call i32 (i32, ...) @_tprintf(i32 %265, i32 %267)
  br label %269

269:                                              ; preds = %264
  %270 = load i32, i32* %18, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %18, align 4
  br label %175

272:                                              ; preds = %175
  br label %273

273:                                              ; preds = %272, %169
  %274 = load i32, i32* %10, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %407

276:                                              ; preds = %273
  %277 = call i32 @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %278 = call i32 (i32, ...) @_tprintf(i32 %277)
  store i32 0, i32* %18, align 4
  br label %279

279:                                              ; preds = %403, %276
  %280 = load i32, i32* %18, align 4
  %281 = load i32, i32* %10, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %406

283:                                              ; preds = %279
  %284 = load i32*, i32** %3, align 8
  %285 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %286 = load i32, i32* %17, align 4
  %287 = call i64 @ExtractName(i32* %284, i32* %285, i32 %286, i32 0)
  %288 = load i32, i32* %17, align 4
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %289, %287
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %17, align 4
  %292 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %293 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %294 = call i32 (i32, ...) @_tprintf(i32 %292, i32* %293)
  %295 = load i32*, i32** %3, align 8
  %296 = load i32, i32* %17, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @ntohs(i32 %300)
  store i32 %301, i32* %12, align 4
  %302 = load i32, i32* %17, align 4
  %303 = add nsw i32 %302, 2
  store i32 %303, i32* %17, align 4
  %304 = load i32*, i32** %3, align 8
  %305 = load i32, i32* %17, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @ntohs(i32 %309)
  store i32 %310, i32* %13, align 4
  %311 = load i32, i32* %17, align 4
  %312 = add nsw i32 %311, 2
  store i32 %312, i32* %17, align 4
  %313 = load i32*, i32** %3, align 8
  %314 = load i32, i32* %17, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = call i64 @ntohl(i32 %318)
  store i64 %319, i64* %14, align 8
  %320 = load i32, i32* %17, align 4
  %321 = add nsw i32 %320, 4
  store i32 %321, i32* %17, align 4
  %322 = load i32*, i32** %3, align 8
  %323 = load i32, i32* %17, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @ntohs(i32 %327)
  store i32 %328, i32* %16, align 4
  %329 = load i32, i32* %17, align 4
  %330 = add nsw i32 %329, 2
  store i32 %330, i32* %17, align 4
  %331 = call i32 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %332 = load i32, i32* %12, align 4
  %333 = call i32 @TypeIDtoTypeName(i32 %332)
  %334 = load i32, i32* %13, align 4
  %335 = call i32 @ClassIDtoClassName(i32 %334)
  %336 = load i32, i32* %16, align 4
  %337 = call i32 (i32, ...) @_tprintf(i32 %331, i32 %333, i32 %335, i32 %336)
  %338 = load i32, i32* @TYPE_NS, align 4
  %339 = load i32, i32* %12, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %358

341:                                              ; preds = %283
  %342 = load i32*, i32** %3, align 8
  %343 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %344 = load i32, i32* %17, align 4
  %345 = load i32, i32* %16, align 4
  %346 = call i64 @ExtractName(i32* %342, i32* %343, i32 %344, i32 %345)
  %347 = load i32, i32* %17, align 4
  %348 = sext i32 %347 to i64
  %349 = add nsw i64 %348, %346
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %17, align 4
  %351 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %352 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %353 = call i32 (i32, ...) @_tprintf(i32 %351, i32* %352)
  %354 = call i32 @_T(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %355 = load i64, i64* %14, align 8
  %356 = trunc i64 %355 to i32
  %357 = call i32 (i32, ...) @_tprintf(i32 %354, i32 %356)
  br label %402

358:                                              ; preds = %283
  %359 = load i32, i32* @TYPE_SOA, align 4
  %360 = load i32, i32* %12, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %401

362:                                              ; preds = %358
  %363 = call i32 @_T(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %364 = load i64, i64* %14, align 8
  %365 = trunc i64 %364 to i32
  %366 = call i32 (i32, ...) @_tprintf(i32 %363, i32 %365)
  %367 = load i32*, i32** %3, align 8
  %368 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %369 = load i32, i32* %17, align 4
  %370 = call i64 @ExtractName(i32* %367, i32* %368, i32 %369, i32 0)
  %371 = load i32, i32* %17, align 4
  %372 = sext i32 %371 to i64
  %373 = add nsw i64 %372, %370
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %17, align 4
  %375 = call i32 @_T(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %376 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %377 = call i32 (i32, ...) @_tprintf(i32 %375, i32* %376)
  %378 = load i32*, i32** %3, align 8
  %379 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %380 = load i32, i32* %17, align 4
  %381 = call i64 @ExtractName(i32* %378, i32* %379, i32 %380, i32 0)
  %382 = load i32, i32* %17, align 4
  %383 = sext i32 %382 to i64
  %384 = add nsw i64 %383, %381
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %17, align 4
  %386 = call i32 @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0))
  %387 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %388 = call i32 (i32, ...) @_tprintf(i32 %386, i32* %387)
  %389 = call i32 @_T(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %390 = call i32 (i32, ...) @_tprintf(i32 %389)
  %391 = call i32 @_T(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %392 = call i32 (i32, ...) @_tprintf(i32 %391)
  %393 = call i32 @_T(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  %394 = call i32 (i32, ...) @_tprintf(i32 %393)
  %395 = call i32 @_T(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0))
  %396 = call i32 (i32, ...) @_tprintf(i32 %395)
  %397 = call i32 @_T(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0))
  %398 = call i32 (i32, ...) @_tprintf(i32 %397)
  %399 = load i32, i32* %17, align 4
  %400 = add nsw i32 %399, 20
  store i32 %400, i32* %17, align 4
  br label %401

401:                                              ; preds = %362, %358
  br label %402

402:                                              ; preds = %401, %341
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %18, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %18, align 4
  br label %279

406:                                              ; preds = %279
  br label %407

407:                                              ; preds = %406, %273
  %408 = load i32, i32* %11, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %496

410:                                              ; preds = %407
  %411 = call i32 @_T(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  %412 = call i32 (i32, ...) @_tprintf(i32 %411)
  store i32 0, i32* %18, align 4
  br label %413

413:                                              ; preds = %492, %410
  %414 = load i32, i32* %18, align 4
  %415 = load i32, i32* %11, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %495

417:                                              ; preds = %413
  %418 = load i32*, i32** %3, align 8
  %419 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %420 = load i32, i32* %17, align 4
  %421 = call i64 @ExtractName(i32* %418, i32* %419, i32 %420, i32 0)
  %422 = load i32, i32* %17, align 4
  %423 = sext i32 %422 to i64
  %424 = add nsw i64 %423, %421
  %425 = trunc i64 %424 to i32
  store i32 %425, i32* %17, align 4
  %426 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %427 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %428 = call i32 (i32, ...) @_tprintf(i32 %426, i32* %427)
  %429 = load i32*, i32** %3, align 8
  %430 = load i32, i32* %17, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  %433 = getelementptr inbounds i32, i32* %432, i64 0
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @ntohs(i32 %434)
  store i32 %435, i32* %12, align 4
  %436 = load i32, i32* %17, align 4
  %437 = add nsw i32 %436, 2
  store i32 %437, i32* %17, align 4
  %438 = load i32*, i32** %3, align 8
  %439 = load i32, i32* %17, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = getelementptr inbounds i32, i32* %441, i64 0
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @ntohs(i32 %443)
  store i32 %444, i32* %13, align 4
  %445 = load i32, i32* %17, align 4
  %446 = add nsw i32 %445, 2
  store i32 %446, i32* %17, align 4
  %447 = load i32*, i32** %3, align 8
  %448 = load i32, i32* %17, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %447, i64 %449
  %451 = getelementptr inbounds i32, i32* %450, i64 0
  %452 = load i32, i32* %451, align 4
  %453 = call i64 @ntohl(i32 %452)
  store i64 %453, i64* %14, align 8
  %454 = load i32, i32* %17, align 4
  %455 = add nsw i32 %454, 4
  store i32 %455, i32* %17, align 4
  %456 = load i32*, i32** %3, align 8
  %457 = load i32, i32* %17, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %456, i64 %458
  %460 = getelementptr inbounds i32, i32* %459, i64 0
  %461 = load i32, i32* %460, align 4
  %462 = call i32 @ntohs(i32 %461)
  store i32 %462, i32* %16, align 4
  %463 = load i32, i32* %17, align 4
  %464 = add nsw i32 %463, 2
  store i32 %464, i32* %17, align 4
  %465 = call i32 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %466 = load i32, i32* %12, align 4
  %467 = call i32 @TypeIDtoTypeName(i32 %466)
  %468 = load i32, i32* %13, align 4
  %469 = call i32 @ClassIDtoClassName(i32 %468)
  %470 = load i32, i32* %16, align 4
  %471 = call i32 (i32, ...) @_tprintf(i32 %465, i32 %467, i32 %469, i32 %470)
  %472 = load i32, i32* @TYPE_A, align 4
  %473 = load i32, i32* %12, align 4
  %474 = icmp eq i32 %472, %473
  br i1 %474, label %475, label %491

475:                                              ; preds = %417
  %476 = load i32*, i32** %3, align 8
  %477 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %478 = load i32, i32* %17, align 4
  %479 = call i64 @ExtractIP(i32* %476, i32* %477, i32 %478)
  %480 = load i32, i32* %17, align 4
  %481 = sext i32 %480 to i64
  %482 = add nsw i64 %481, %479
  %483 = trunc i64 %482 to i32
  store i32 %483, i32* %17, align 4
  %484 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %485 = getelementptr inbounds [255 x i32], [255 x i32]* %15, i64 0, i64 0
  %486 = call i32 (i32, ...) @_tprintf(i32 %484, i32* %485)
  %487 = call i32 @_T(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %488 = load i64, i64* %14, align 8
  %489 = trunc i64 %488 to i32
  %490 = call i32 (i32, ...) @_tprintf(i32 %487, i32 %489)
  br label %491

491:                                              ; preds = %475, %417
  br label %492

492:                                              ; preds = %491
  %493 = load i32, i32* %18, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %18, align 4
  br label %413

495:                                              ; preds = %413
  br label %496

496:                                              ; preds = %495, %407
  %497 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %498 = call i32 (i32, ...) @_tprintf(i32 %497)
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @OpcodeIDtoOpcodeName(i32) #1

declare dso_local i32 @RCodeIDtoRCodeName(i32) #1

declare dso_local i64 @ExtractName(i32*, i32*, i32, i32) #1

declare dso_local i32 @TypeIDtoTypeName(i32) #1

declare dso_local i32 @ClassIDtoClassName(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @ExtractIP(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
