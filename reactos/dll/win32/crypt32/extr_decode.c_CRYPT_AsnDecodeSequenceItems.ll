; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_decode.c_CRYPT_AsnDecodeSequenceItems.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_decode.c_CRYPT_AsnDecodeSequenceItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AsnDecodeSequenceItem = type { i32, i32, i32 (i32*, i32, i32, i32*, i64*, i32*)*, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"%p, %d, %p, %d, %08x, %p, %p, %p\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CMSG_INDEFINITE_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Setting next pointer to %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"decoding item %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"sizing item %d\0A\00", align 1
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"item %d size: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"decoded length %d exceeds encoded %d\0A\00", align 1
@CRYPT_E_ASN1_CORRUPT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"item %d: decoded %d bytes\0A\00", align 1
@CRYPT_E_ASN1_BADTAG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"skipping optional item %d\0A\00", align 1
@NOERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"item %d failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"can't use indefinite length encoding without a decoder\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"item %d: tag %02x doesn't match expected %02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"missing optional item %d, skipping\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"not enough bytes for item %d, failing\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AsnDecodeSequenceItem*, i32, i32*, i32, i32, i8*, i32*, i32*)* @CRYPT_AsnDecodeSequenceItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_AsnDecodeSequenceItems(%struct.AsnDecodeSequenceItem* %0, i32 %1, i32* %2, i32 %3, i32 %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.AsnDecodeSequenceItem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.AsnDecodeSequenceItem* %0, %struct.AsnDecodeSequenceItem** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %19, align 4
  %25 = load i32*, i32** %11, align 8
  store i32* %25, i32** %20, align 8
  %26 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.AsnDecodeSequenceItem* %26, i32 %27, i32* %28, i32 %29, i32 %30, i8* %31, i32* %32, i32* %33)
  store i32 0, i32* %18, align 4
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %460, %8
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %45, label %463

45:                                               ; preds = %43
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32*, i32** %20, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = sub nsw i64 %47, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %430

56:                                               ; preds = %45
  %57 = load i32*, i32** %20, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32*, i32** %20, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = sub nsw i64 %59, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @CRYPT_GetLengthIndefinite(i32* %57, i32 %67, i32* %21)
  store i32 %68, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %429

70:                                               ; preds = %56
  %71 = load i32*, i32** %20, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @GET_LEN_BYTES(i32 %73)
  store i32 %74, i32* %22, align 4
  %75 = load i32*, i32** %20, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %78, i64 %80
  %82 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %77, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %70
  %86 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %86, i64 %88
  %90 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %390, label %93

93:                                               ; preds = %85, %70
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* @CMSG_INDEFINITE_LENGTH, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = load i32*, i32** %20, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = sub nsw i64 %99, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %23, align 4
  br label %113

108:                                              ; preds = %93
  %109 = load i32, i32* %22, align 4
  %110 = add nsw i32 1, %109
  %111 = load i32, i32* %21, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %23, align 4
  br label %113

113:                                              ; preds = %108, %97
  %114 = load i32*, i32** %15, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %142

116:                                              ; preds = %113
  %117 = load i8*, i8** %14, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %142

119:                                              ; preds = %116
  %120 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %120, i64 %122
  %124 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %119
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %128)
  %130 = load i32*, i32** %15, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %133, i64 %135
  %137 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %132, i64 %139
  %141 = bitcast i32* %140 to i32**
  store i32* %130, i32** %141, align 8
  br label %142

142:                                              ; preds = %127, %119, %116, %113
  %143 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %143, i64 %145
  %147 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %146, i32 0, i32 2
  %148 = load i32 (i32*, i32, i32, i32*, i64*, i32*)*, i32 (i32*, i32, i32, i32*, i64*, i32*)** %147, align 8
  %149 = icmp ne i32 (i32*, i32, i32, i32*, i64*, i32*)* %148, null
  br i1 %149, label %150, label %357

150:                                              ; preds = %142
  %151 = load i8*, i8** %14, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %18, align 4
  %155 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  br label %159

156:                                              ; preds = %150
  %157 = load i32, i32* %18, align 4
  %158 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %160, i64 %162
  %164 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %163, i32 0, i32 2
  %165 = load i32 (i32*, i32, i32, i32*, i64*, i32*)*, i32 (i32*, i32, i32, i32*, i64*, i32*)** %164, align 8
  %166 = load i32*, i32** %20, align 8
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %170 = xor i32 %169, -1
  %171 = and i32 %168, %170
  %172 = load i8*, i8** %14, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %185

174:                                              ; preds = %159
  %175 = load i8*, i8** %14, align 8
  %176 = bitcast i8* %175 to i32*
  %177 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %177, i64 %179
  %181 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %176, i64 %183
  br label %186

185:                                              ; preds = %159
  br label %186

186:                                              ; preds = %185, %174
  %187 = phi i32* [ %184, %174 ], [ null, %185 ]
  %188 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %188, i64 %190
  %192 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %191, i32 0, i32 4
  %193 = call i32 %165(i32* %166, i32 %167, i32 %171, i32* %187, i64* %192, i32* %24)
  store i32 %193, i32* %17, align 4
  %194 = load i32, i32* %17, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %322

196:                                              ; preds = %186
  %197 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %198 = load i32, i32* %18, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %197, i64 %199
  %201 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %204 = load i32, i32* %18, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %203, i64 %205
  %207 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = icmp slt i64 %202, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %196
  %211 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %211, i64 %213
  %215 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %217, i64 %219
  %221 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %220, i32 0, i32 4
  store i64 %216, i64* %221, align 8
  br label %250

222:                                              ; preds = %196
  %223 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %224 = load i32, i32* %18, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %223, i64 %225
  %227 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %230 = load i32, i32* %18, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %229, i64 %231
  %233 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %232, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  %235 = icmp sgt i64 %228, %234
  br i1 %235, label %236, label %249

236:                                              ; preds = %222
  %237 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %238 = load i32, i32* %18, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %237, i64 %239
  %241 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = call i64 @ALIGN_DWORD_PTR(i64 %242)
  %244 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %245 = load i32, i32* %18, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %244, i64 %246
  %248 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %247, i32 0, i32 4
  store i64 %243, i64* %248, align 8
  br label %249

249:                                              ; preds = %236, %222
  br label %250

250:                                              ; preds = %249, %210
  %251 = load i32, i32* %18, align 4
  %252 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %252, i64 %254
  %256 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %251, i64 %257)
  %259 = load i32*, i32** %15, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %299

261:                                              ; preds = %250
  %262 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %263 = load i32, i32* %18, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %262, i64 %264
  %266 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %265, i32 0, i32 7
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %299

269:                                              ; preds = %261
  %270 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %271 = load i32, i32* %18, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %270, i64 %272
  %274 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %277 = load i32, i32* %18, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %276, i64 %278
  %280 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %279, i32 0, i32 5
  %281 = load i64, i64* %280, align 8
  %282 = icmp sgt i64 %275, %281
  br i1 %282, label %283, label %299

283:                                              ; preds = %269
  %284 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %285 = load i32, i32* %18, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %284, i64 %286
  %288 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %287, i32 0, i32 4
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %291 = load i32, i32* %18, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %290, i64 %292
  %294 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %293, i32 0, i32 5
  %295 = load i64, i64* %294, align 8
  %296 = sub nsw i64 %289, %295
  %297 = load i32*, i32** %15, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 %296
  store i32* %298, i32** %15, align 8
  br label %299

299:                                              ; preds = %283, %269, %261, %250
  %300 = load i32, i32* %24, align 4
  %301 = load i32, i32* %23, align 4
  %302 = icmp sgt i32 %300, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load i32, i32* %24, align 4
  %305 = load i32, i32* %23, align 4
  %306 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %304, i32 %305)
  %307 = load i32, i32* @CRYPT_E_ASN1_CORRUPT, align 4
  %308 = call i32 @SetLastError(i32 %307)
  %309 = load i32, i32* @FALSE, align 4
  store i32 %309, i32* %17, align 4
  br label %321

310:                                              ; preds = %299
  %311 = load i32, i32* %24, align 4
  %312 = load i32*, i32** %20, align 8
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  store i32* %314, i32** %20, align 8
  %315 = load i32, i32* %24, align 4
  %316 = load i32, i32* %19, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* %19, align 4
  %318 = load i32, i32* %18, align 4
  %319 = load i32, i32* %24, align 4
  %320 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %310, %303
  br label %356

322:                                              ; preds = %186
  %323 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %324 = load i32, i32* %18, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %323, i64 %325
  %327 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %351

330:                                              ; preds = %322
  %331 = call i32 (...) @GetLastError()
  %332 = load i32, i32* @CRYPT_E_ASN1_BADTAG, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %351

334:                                              ; preds = %330
  %335 = load i32, i32* %18, align 4
  %336 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %335)
  %337 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %338 = load i32, i32* %18, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %337, i64 %339
  %341 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %340, i32 0, i32 5
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %344 = load i32, i32* %18, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %343, i64 %345
  %347 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %346, i32 0, i32 4
  store i64 %342, i64* %347, align 8
  %348 = load i32, i32* @NOERROR, align 4
  %349 = call i32 @SetLastError(i32 %348)
  %350 = load i32, i32* @TRUE, align 4
  store i32 %350, i32* %17, align 4
  br label %355

351:                                              ; preds = %330, %322
  %352 = load i32, i32* %18, align 4
  %353 = call i32 (...) @GetLastError()
  %354 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %351, %334
  br label %356

356:                                              ; preds = %355, %321
  br label %389

357:                                              ; preds = %142
  %358 = load i32, i32* %21, align 4
  %359 = load i32, i32* @CMSG_INDEFINITE_LENGTH, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %366

361:                                              ; preds = %357
  %362 = call i32 @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  %363 = load i32, i32* @CRYPT_E_ASN1_CORRUPT, align 4
  %364 = call i32 @SetLastError(i32 %363)
  %365 = load i32, i32* @FALSE, align 4
  store i32 %365, i32* %17, align 4
  br label %388

366:                                              ; preds = %357
  %367 = load i32, i32* %18, align 4
  %368 = load i32, i32* %23, align 4
  %369 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %367, i32 %368)
  %370 = load i32, i32* %23, align 4
  %371 = load i32*, i32** %20, align 8
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %371, i64 %372
  store i32* %373, i32** %20, align 8
  %374 = load i32, i32* %23, align 4
  %375 = load i32, i32* %19, align 4
  %376 = add nsw i32 %375, %374
  store i32 %376, i32* %19, align 4
  %377 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %378 = load i32, i32* %18, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %377, i64 %379
  %381 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %380, i32 0, i32 5
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %384 = load i32, i32* %18, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %383, i64 %385
  %387 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %386, i32 0, i32 4
  store i64 %382, i64* %387, align 8
  br label %388

388:                                              ; preds = %366, %361
  br label %389

389:                                              ; preds = %388, %356
  br label %428

390:                                              ; preds = %85
  %391 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %392 = load i32, i32* %18, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %391, i64 %393
  %395 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %394, i32 0, i32 6
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %412

398:                                              ; preds = %390
  %399 = load i32, i32* %18, align 4
  %400 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %399)
  %401 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %402 = load i32, i32* %18, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %401, i64 %403
  %405 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %404, i32 0, i32 5
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %408 = load i32, i32* %18, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %407, i64 %409
  %411 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %410, i32 0, i32 4
  store i64 %406, i64* %411, align 8
  br label %427

412:                                              ; preds = %390
  %413 = load i32, i32* %18, align 4
  %414 = load i32*, i32** %20, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 0
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %418 = load i32, i32* %18, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %417, i64 %419
  %421 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %413, i32 %416, i32 %422)
  %424 = load i32, i32* @CRYPT_E_ASN1_BADTAG, align 4
  %425 = call i32 @SetLastError(i32 %424)
  %426 = load i32, i32* @FALSE, align 4
  store i32 %426, i32* %17, align 4
  br label %427

427:                                              ; preds = %412, %398
  br label %428

428:                                              ; preds = %427, %389
  br label %429

429:                                              ; preds = %428, %56
  br label %459

430:                                              ; preds = %45
  %431 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %432 = load i32, i32* %18, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %431, i64 %433
  %435 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %434, i32 0, i32 6
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %452

438:                                              ; preds = %430
  %439 = load i32, i32* %18, align 4
  %440 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %439)
  %441 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %442 = load i32, i32* %18, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %441, i64 %443
  %445 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %444, i32 0, i32 5
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %9, align 8
  %448 = load i32, i32* %18, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %447, i64 %449
  %451 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %450, i32 0, i32 4
  store i64 %446, i64* %451, align 8
  br label %458

452:                                              ; preds = %430
  %453 = load i32, i32* %18, align 4
  %454 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %453)
  %455 = load i32, i32* @CRYPT_E_ASN1_CORRUPT, align 4
  %456 = call i32 @SetLastError(i32 %455)
  %457 = load i32, i32* @FALSE, align 4
  store i32 %457, i32* %17, align 4
  br label %458

458:                                              ; preds = %452, %438
  br label %459

459:                                              ; preds = %458, %429
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %18, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %18, align 4
  br label %36

463:                                              ; preds = %43
  %464 = load i32*, i32** %16, align 8
  %465 = icmp ne i32* %464, null
  br i1 %465, label %466, label %469

466:                                              ; preds = %463
  %467 = load i32, i32* %19, align 4
  %468 = load i32*, i32** %16, align 8
  store i32 %467, i32* %468, align 4
  br label %469

469:                                              ; preds = %466, %463
  %470 = load i32, i32* %17, align 4
  %471 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %470)
  %472 = load i32, i32* %17, align 4
  ret i32 %472
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @CRYPT_GetLengthIndefinite(i32*, i32, i32*) #1

declare dso_local i32 @GET_LEN_BYTES(i32) #1

declare dso_local i64 @ALIGN_DWORD_PTR(i64) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
