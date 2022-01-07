; ModuleID = '/home/carl/AnghaBench/openssl/crypto/aria/extr_aria.c_aria_set_decrypt_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/aria/extr_aria.c_aria_set_decrypt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8** }

@ARIA_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aria_set_decrypt_key(i8* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = call i32 @aria_set_encrypt_key(i8* %21, i32 %22, %struct.TYPE_8__* %23)
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %20, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %20, align 4
  store i32 %28, i32* %4, align 4
  br label %315

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %37
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %9, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %12, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %13, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 2
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %14, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 3
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %15, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = load i32, i32* @ARIA_BLOCK_SIZE, align 4
  %62 = call i32 @memcpy(%struct.TYPE_7__* %59, %struct.TYPE_7__* %60, i32 %61)
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  store i8* %63, i8** %67, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  store i8* %68, i8** %72, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 2
  store i8* %73, i8** %77, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 3
  store i8* %78, i8** %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 1
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %8, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 -1
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %9, align 8
  br label %87

87:                                               ; preds = %238, %29
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = icmp ult %struct.TYPE_7__* %88, %89
  br i1 %90, label %91, label %243

91:                                               ; preds = %87
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %96, i8* %97, i8* %98, i8* %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %105, i8* %106, i8* %107, i8* %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 2
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %114, i8* %115, i8* %116, i8* %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 3
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %123, i8* %124, i8* %125, i8* %126)
  %128 = load i8*, i8** %12, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = call i32 @ARIA_DIFF_WORD(i8* %128, i8* %129, i8* %130, i8* %131)
  %133 = load i8*, i8** %12, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = call i32 @ARIA_DIFF_BYTE(i8* %133, i8* %134, i8* %135, i8* %136)
  %138 = load i8*, i8** %12, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 @ARIA_DIFF_WORD(i8* %138, i8* %139, i8* %140, i8* %141)
  %143 = load i8*, i8** %12, align 8
  store i8* %143, i8** %16, align 8
  %144 = load i8*, i8** %13, align 8
  store i8* %144, i8** %17, align 8
  %145 = load i8*, i8** %14, align 8
  store i8* %145, i8** %18, align 8
  %146 = load i8*, i8** %15, align 8
  store i8* %146, i8** %19, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %151, i8* %152, i8* %153, i8* %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i8**, i8*** %157, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %160, i8* %161, i8* %162, i8* %163)
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i8**, i8*** %166, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 2
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %169, i8* %170, i8* %171, i8* %172)
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i8**, i8*** %175, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 3
  %178 = load i8*, i8** %177, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = load i8*, i8** %11, align 8
  %182 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %178, i8* %179, i8* %180, i8* %181)
  %183 = load i8*, i8** %12, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = load i8*, i8** %14, align 8
  %186 = load i8*, i8** %15, align 8
  %187 = call i32 @ARIA_DIFF_WORD(i8* %183, i8* %184, i8* %185, i8* %186)
  %188 = load i8*, i8** %12, align 8
  %189 = load i8*, i8** %13, align 8
  %190 = load i8*, i8** %14, align 8
  %191 = load i8*, i8** %15, align 8
  %192 = call i32 @ARIA_DIFF_BYTE(i8* %188, i8* %189, i8* %190, i8* %191)
  %193 = load i8*, i8** %12, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = load i8*, i8** %14, align 8
  %196 = load i8*, i8** %15, align 8
  %197 = call i32 @ARIA_DIFF_WORD(i8* %193, i8* %194, i8* %195, i8* %196)
  %198 = load i8*, i8** %12, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i8**, i8*** %200, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 0
  store i8* %198, i8** %202, align 8
  %203 = load i8*, i8** %13, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i8**, i8*** %205, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 1
  store i8* %203, i8** %207, align 8
  %208 = load i8*, i8** %14, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i8**, i8*** %210, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 2
  store i8* %208, i8** %212, align 8
  %213 = load i8*, i8** %15, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i8**, i8*** %215, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 3
  store i8* %213, i8** %217, align 8
  %218 = load i8*, i8** %16, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i8**, i8*** %220, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i64 0
  store i8* %218, i8** %222, align 8
  %223 = load i8*, i8** %17, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i8**, i8*** %225, align 8
  %227 = getelementptr inbounds i8*, i8** %226, i64 1
  store i8* %223, i8** %227, align 8
  %228 = load i8*, i8** %18, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i8**, i8*** %230, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 2
  store i8* %228, i8** %232, align 8
  %233 = load i8*, i8** %19, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i8**, i8*** %235, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 3
  store i8* %233, i8** %237, align 8
  br label %238

238:                                              ; preds = %91
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 1
  store %struct.TYPE_7__* %240, %struct.TYPE_7__** %8, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 -1
  store %struct.TYPE_7__* %242, %struct.TYPE_7__** %9, align 8
  br label %87

243:                                              ; preds = %87
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i8**, i8*** %245, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 0
  %248 = load i8*, i8** %247, align 8
  %249 = load i8*, i8** %12, align 8
  %250 = load i8*, i8** %10, align 8
  %251 = load i8*, i8** %11, align 8
  %252 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %248, i8* %249, i8* %250, i8* %251)
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i8**, i8*** %254, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 1
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** %13, align 8
  %259 = load i8*, i8** %10, align 8
  %260 = load i8*, i8** %11, align 8
  %261 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %257, i8* %258, i8* %259, i8* %260)
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i8**, i8*** %263, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 2
  %266 = load i8*, i8** %265, align 8
  %267 = load i8*, i8** %14, align 8
  %268 = load i8*, i8** %10, align 8
  %269 = load i8*, i8** %11, align 8
  %270 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %266, i8* %267, i8* %268, i8* %269)
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i8**, i8*** %272, align 8
  %274 = getelementptr inbounds i8*, i8** %273, i64 3
  %275 = load i8*, i8** %274, align 8
  %276 = load i8*, i8** %15, align 8
  %277 = load i8*, i8** %10, align 8
  %278 = load i8*, i8** %11, align 8
  %279 = call i32 @ARIA_DEC_DIFF_BYTE(i8* %275, i8* %276, i8* %277, i8* %278)
  %280 = load i8*, i8** %12, align 8
  %281 = load i8*, i8** %13, align 8
  %282 = load i8*, i8** %14, align 8
  %283 = load i8*, i8** %15, align 8
  %284 = call i32 @ARIA_DIFF_WORD(i8* %280, i8* %281, i8* %282, i8* %283)
  %285 = load i8*, i8** %12, align 8
  %286 = load i8*, i8** %13, align 8
  %287 = load i8*, i8** %14, align 8
  %288 = load i8*, i8** %15, align 8
  %289 = call i32 @ARIA_DIFF_BYTE(i8* %285, i8* %286, i8* %287, i8* %288)
  %290 = load i8*, i8** %12, align 8
  %291 = load i8*, i8** %13, align 8
  %292 = load i8*, i8** %14, align 8
  %293 = load i8*, i8** %15, align 8
  %294 = call i32 @ARIA_DIFF_WORD(i8* %290, i8* %291, i8* %292, i8* %293)
  %295 = load i8*, i8** %12, align 8
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 0
  %298 = load i8**, i8*** %297, align 8
  %299 = getelementptr inbounds i8*, i8** %298, i64 0
  store i8* %295, i8** %299, align 8
  %300 = load i8*, i8** %13, align 8
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  %303 = load i8**, i8*** %302, align 8
  %304 = getelementptr inbounds i8*, i8** %303, i64 1
  store i8* %300, i8** %304, align 8
  %305 = load i8*, i8** %14, align 8
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load i8**, i8*** %307, align 8
  %309 = getelementptr inbounds i8*, i8** %308, i64 2
  store i8* %305, i8** %309, align 8
  %310 = load i8*, i8** %15, align 8
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 0
  %313 = load i8**, i8*** %312, align 8
  %314 = getelementptr inbounds i8*, i8** %313, i64 3
  store i8* %310, i8** %314, align 8
  store i32 0, i32* %4, align 4
  br label %315

315:                                              ; preds = %243, %27
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local i32 @aria_set_encrypt_key(i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ARIA_DEC_DIFF_BYTE(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ARIA_DIFF_WORD(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ARIA_DIFF_BYTE(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
