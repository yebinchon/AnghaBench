; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_parseRequest.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_parseRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i64, i64, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_10__*, %struct.lsapi_header_offset*, %struct.lsapi_http_header_index*, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.lsapi_header_offset = type { i32 }
%struct.lsapi_http_header_index = type { i32 }

@LSAPI_ENDIAN = common dso_local global i32 0, align 4
@LSAPI_ENDIAN_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Bad request header - ERROR#1\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Request header does match total size, total: %d, real: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Bad request header - ERROR#2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @parseRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseRequest(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 4
  store i8* %12, i8** %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %8, align 8
  %19 = load i32, i32* @LSAPI_ENDIAN, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 9
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LSAPI_ENDIAN_BIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %19, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = call i32 @fixEndian(%struct.TYPE_11__* %33)
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 9
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %38, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %35
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 13
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 9
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @allocateEnvList(i32* %47, i64* %49, i64 %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %302

58:                                               ; preds = %45, %35
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 9
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %61, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %58
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 12
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 9
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @allocateEnvList(i32* %70, i64* %72, i64 %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %302

81:                                               ; preds = %68, %58
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 9
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @parseEnv(i32 %84, i64 %89, i8** %7, i8* %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  store i32 -1, i32* %3, align 4
  br label %302

94:                                               ; preds = %81
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 12
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 9
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @parseEnv(i32 %97, i64 %102, i8** %7, i8* %103)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  store i32 -1, i32* %3, align 4
  br label %302

107:                                              ; preds = %94
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 9
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %167, label %114

114:                                              ; preds = %107
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 9
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %167, label %122

122:                                              ; preds = %114
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 9
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %167, label %129

129:                                              ; preds = %122
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 9
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %167, label %137

137:                                              ; preds = %129
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 9
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %167, label %144

144:                                              ; preds = %137
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 9
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %167, label %152

152:                                              ; preds = %144
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 9
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %152
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 9
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %159, %152, %144, %137, %129, %122, %114, %107
  %168 = call i32 (i8*, ...) @lsapi_log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %302

169:                                              ; preds = %159
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 9
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %172, i64 %178
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 9
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %184, i64 %190
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 4
  store i8* %191, i8** %193, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 9
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %196, i64 %202
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 5
  store i8* %203, i8** %205, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 9
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %208, i64 %214
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 6
  store i8* %215, i8** %217, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i8*, i8** %7, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = ptrtoint i8* %221 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = add nsw i64 %227, 7
  %229 = and i64 %228, -8
  %230 = getelementptr inbounds i8, i8* %220, i64 %229
  store i8* %230, i8** %7, align 8
  %231 = load i8*, i8** %7, align 8
  %232 = bitcast i8* %231 to %struct.lsapi_http_header_index*
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 11
  store %struct.lsapi_http_header_index* %232, %struct.lsapi_http_header_index** %234, align 8
  %235 = load i8*, i8** %7, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 4
  store i8* %236, i8** %7, align 8
  %237 = load i8*, i8** %7, align 8
  %238 = bitcast i8* %237 to %struct.lsapi_header_offset*
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 10
  store %struct.lsapi_header_offset* %238, %struct.lsapi_header_offset** %240, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 9
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = mul i64 4, %246
  %248 = load i8*, i8** %7, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 %247
  store i8* %249, i8** %7, align 8
  %250 = load i8*, i8** %7, align 8
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 7
  store i8* %250, i8** %252, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 9
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 8
  %258 = load i8*, i8** %7, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i8, i8* %258, i64 %259
  store i8* %260, i8** %7, align 8
  %261 = load i8*, i8** %7, align 8
  %262 = load i8*, i8** %8, align 8
  %263 = icmp ne i8* %261, %262
  br i1 %263, label %264, label %274

264:                                              ; preds = %169
  %265 = load i32, i32* %5, align 4
  %266 = load i8*, i8** %7, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = ptrtoint i8* %266 to i64
  %271 = ptrtoint i8* %269 to i64
  %272 = sub i64 %270, %271
  %273 = call i32 (i8*, ...) @lsapi_log(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %265, i64 %272)
  store i32 -1, i32* %3, align 4
  br label %302

274:                                              ; preds = %169
  %275 = load i32, i32* %6, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %279 = call i32 @fixHeaderIndexEndian(%struct.TYPE_11__* %278)
  br label %280

280:                                              ; preds = %277, %274
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %282 = call i32 @validateHeaders(%struct.TYPE_11__* %281)
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = call i32 (i8*, ...) @lsapi_log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %302

286:                                              ; preds = %280
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 9
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 8
  store i32 %291, i32* %293, align 8
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 8
  %296 = load i32, i32* %295, align 8
  %297 = icmp eq i32 %296, -2
  br i1 %297, label %298, label %301

298:                                              ; preds = %286
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %300 = call i32 @parseContentLenFromHeader(%struct.TYPE_11__* %299)
  br label %301

301:                                              ; preds = %298, %286
  store i32 0, i32* %3, align 4
  br label %302

302:                                              ; preds = %301, %284, %264, %167, %106, %93, %80, %57
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local i32 @fixEndian(%struct.TYPE_11__*) #1

declare dso_local i32 @allocateEnvList(i32*, i64*, i64) #1

declare dso_local i32 @parseEnv(i32, i64, i8**, i8*) #1

declare dso_local i32 @lsapi_log(i8*, ...) #1

declare dso_local i32 @fixHeaderIndexEndian(%struct.TYPE_11__*) #1

declare dso_local i32 @validateHeaders(%struct.TYPE_11__*) #1

declare dso_local i32 @parseContentLenFromHeader(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
