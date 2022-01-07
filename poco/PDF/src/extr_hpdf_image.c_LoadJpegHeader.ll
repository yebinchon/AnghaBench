; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image.c_LoadJpegHeader.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image.c_LoadJpegHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c" HPDF_Image_LoadJpegHeader\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_INVALID_JPEG_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"tag=%04X size=%u\0A\00", align 1
@HPDF_UNSUPPORTED_JPEG_FORMAT = common dso_local global i32 0, align 4
@HPDF_SEEK_CUR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@COL_GRAY = common dso_local global i8* null, align 8
@COL_RGB = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"Decode\00", align 1
@COL_CMYK = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"BitsPerComponent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @LoadJpegHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LoadJpegHeader(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %16 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %12, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = call i64 @HPDF_Stream_Read(%struct.TYPE_9__* %17, i32* %6, i32* %12)
  %19 = load i64, i64* @HPDF_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @HPDF_Error_GetCode(i32 %24)
  store i64 %25, i64* %3, align 8
  br label %305

26:                                               ; preds = %2
  %27 = call i32 @HPDF_UInt16Swap(i32* %6)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 65496
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @HPDF_INVALID_JPEG_DATA, align 8
  store i64 %31, i64* %3, align 8
  br label %305

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %139, %32
  store i32 2, i32* %12, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = call i64 @HPDF_Stream_Read(%struct.TYPE_9__* %34, i32* %6, i32* %12)
  %36 = load i64, i64* @HPDF_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @HPDF_Error_GetCode(i32 %41)
  store i64 %42, i64* %3, align 8
  br label %305

43:                                               ; preds = %33
  %44 = call i32 @HPDF_UInt16Swap(i32* %6)
  store i32 2, i32* %12, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = call i64 @HPDF_Stream_Read(%struct.TYPE_9__* %45, i32* %15, i32* %12)
  %47 = load i64, i64* @HPDF_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @HPDF_Error_GetCode(i32 %52)
  store i64 %53, i64* %3, align 8
  br label %305

54:                                               ; preds = %43
  %55 = call i32 @HPDF_UInt16Swap(i32* %15)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @HPDF_PTRACE(i8* %59)
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 65472
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 65473
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 65474
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 65481
  br i1 %71, label %72, label %115

72:                                               ; preds = %69, %66, %63, %54
  store i32 1, i32* %12, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = call i64 @HPDF_Stream_Read(%struct.TYPE_9__* %73, i32* %9, i32* %12)
  %75 = load i64, i64* @HPDF_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @HPDF_Error_GetCode(i32 %80)
  store i64 %81, i64* %3, align 8
  br label %305

82:                                               ; preds = %72
  store i32 2, i32* %12, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = call i64 @HPDF_Stream_Read(%struct.TYPE_9__* %83, i32* %7, i32* %12)
  %85 = load i64, i64* @HPDF_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @HPDF_Error_GetCode(i32 %90)
  store i64 %91, i64* %3, align 8
  br label %305

92:                                               ; preds = %82
  %93 = call i32 @HPDF_UInt16Swap(i32* %7)
  store i32 2, i32* %12, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = call i64 @HPDF_Stream_Read(%struct.TYPE_9__* %94, i32* %8, i32* %12)
  %96 = load i64, i64* @HPDF_OK, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @HPDF_Error_GetCode(i32 %101)
  store i64 %102, i64* %3, align 8
  br label %305

103:                                              ; preds = %92
  %104 = call i32 @HPDF_UInt16Swap(i32* %8)
  store i32 1, i32* %12, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = call i64 @HPDF_Stream_Read(%struct.TYPE_9__* %105, i32* %10, i32* %12)
  %107 = load i64, i64* @HPDF_OK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @HPDF_Error_GetCode(i32 %112)
  store i64 %113, i64* %3, align 8
  br label %305

114:                                              ; preds = %103
  br label %140

115:                                              ; preds = %69
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, 255
  %118 = icmp ne i32 %117, 65535
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @HPDF_UNSUPPORTED_JPEG_FORMAT, align 4
  %124 = call i64 @HPDF_SetError(i32 %122, i32 %123, i32 0)
  store i64 %124, i64* %3, align 8
  br label %305

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sub nsw i32 %128, 2
  %130 = load i32, i32* @HPDF_SEEK_CUR, align 4
  %131 = call i64 @HPDF_Stream_Seek(%struct.TYPE_9__* %127, i32 %129, i32 %130)
  %132 = load i64, i64* @HPDF_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %126
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @HPDF_Error_GetCode(i32 %137)
  store i64 %138, i64* %3, align 8
  br label %305

139:                                              ; preds = %126
  br label %33

140:                                              ; preds = %114
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_10__* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i64, i64* @HPDF_OK, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @HPDF_Error_GetCode(i32 %149)
  store i64 %150, i64* %3, align 8
  br label %305

151:                                              ; preds = %140
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_10__* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  %155 = load i64, i64* @HPDF_OK, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @HPDF_Error_GetCode(i32 %160)
  store i64 %161, i64* %3, align 8
  br label %305

162:                                              ; preds = %151
  %163 = load i32, i32* %10, align 4
  switch i32 %163, label %267 [
    i32 1, label %164
    i32 3, label %166
    i32 4, label %168
  ]

164:                                              ; preds = %162
  %165 = load i8*, i8** @COL_GRAY, align 8
  store i8* %165, i8** %11, align 8
  br label %273

166:                                              ; preds = %162
  %167 = load i8*, i8** @COL_RGB, align 8
  store i8* %167, i8** %11, align 8
  br label %273

168:                                              ; preds = %162
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @HPDF_Array_New(i32 %171)
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %168
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @HPDF_Error_GetCode(i32 %178)
  store i64 %179, i64* %3, align 8
  br label %305

180:                                              ; preds = %168
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %182 = load i32, i32* %14, align 4
  %183 = call i64 @HPDF_Dict_Add(%struct.TYPE_10__* %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %182)
  store i64 %183, i64* %13, align 8
  %184 = load i64, i64* %13, align 8
  %185 = load i64, i64* @HPDF_OK, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %180
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @HPDF_Error_GetCode(i32 %190)
  store i64 %191, i64* %3, align 8
  br label %305

192:                                              ; preds = %180
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @HPDF_Number_New(i32 %196, i32 1)
  %198 = call i64 @HPDF_Array_Add(i32 %193, i32 %197)
  %199 = load i64, i64* %13, align 8
  %200 = add nsw i64 %199, %198
  store i64 %200, i64* %13, align 8
  %201 = load i32, i32* %14, align 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @HPDF_Number_New(i32 %204, i32 0)
  %206 = call i64 @HPDF_Array_Add(i32 %201, i32 %205)
  %207 = load i64, i64* %13, align 8
  %208 = add nsw i64 %207, %206
  store i64 %208, i64* %13, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @HPDF_Number_New(i32 %212, i32 1)
  %214 = call i64 @HPDF_Array_Add(i32 %209, i32 %213)
  %215 = load i64, i64* %13, align 8
  %216 = add nsw i64 %215, %214
  store i64 %216, i64* %13, align 8
  %217 = load i32, i32* %14, align 4
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @HPDF_Number_New(i32 %220, i32 0)
  %222 = call i64 @HPDF_Array_Add(i32 %217, i32 %221)
  %223 = load i64, i64* %13, align 8
  %224 = add nsw i64 %223, %222
  store i64 %224, i64* %13, align 8
  %225 = load i32, i32* %14, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @HPDF_Number_New(i32 %228, i32 1)
  %230 = call i64 @HPDF_Array_Add(i32 %225, i32 %229)
  %231 = load i64, i64* %13, align 8
  %232 = add nsw i64 %231, %230
  store i64 %232, i64* %13, align 8
  %233 = load i32, i32* %14, align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @HPDF_Number_New(i32 %236, i32 0)
  %238 = call i64 @HPDF_Array_Add(i32 %233, i32 %237)
  %239 = load i64, i64* %13, align 8
  %240 = add nsw i64 %239, %238
  store i64 %240, i64* %13, align 8
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @HPDF_Number_New(i32 %244, i32 1)
  %246 = call i64 @HPDF_Array_Add(i32 %241, i32 %245)
  %247 = load i64, i64* %13, align 8
  %248 = add nsw i64 %247, %246
  store i64 %248, i64* %13, align 8
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @HPDF_Number_New(i32 %252, i32 0)
  %254 = call i64 @HPDF_Array_Add(i32 %249, i32 %253)
  %255 = load i64, i64* %13, align 8
  %256 = add nsw i64 %255, %254
  store i64 %256, i64* %13, align 8
  %257 = load i64, i64* %13, align 8
  %258 = load i64, i64* @HPDF_OK, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %192
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i64 @HPDF_Error_GetCode(i32 %263)
  store i64 %264, i64* %3, align 8
  br label %305

265:                                              ; preds = %192
  %266 = load i8*, i8** @COL_CMYK, align 8
  store i8* %266, i8** %11, align 8
  br label %273

267:                                              ; preds = %162
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @HPDF_UNSUPPORTED_JPEG_FORMAT, align 4
  %272 = call i64 @HPDF_SetError(i32 %270, i32 %271, i32 0)
  store i64 %272, i64* %3, align 8
  br label %305

273:                                              ; preds = %265, %166, %164
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i8*, i8** %11, align 8
  %279 = call i32 @HPDF_Name_New(i32 %277, i8* %278)
  %280 = call i64 @HPDF_Dict_Add(%struct.TYPE_10__* %274, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %279)
  %281 = load i64, i64* @HPDF_OK, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %273
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i64 @HPDF_Error_GetCode(i32 %286)
  store i64 %287, i64* %3, align 8
  br label %305

288:                                              ; preds = %273
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %9, align 4
  %294 = call i32 @HPDF_Number_New(i32 %292, i32 %293)
  %295 = call i64 @HPDF_Dict_Add(%struct.TYPE_10__* %289, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %294)
  %296 = load i64, i64* @HPDF_OK, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %298, label %303

298:                                              ; preds = %288
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i64 @HPDF_Error_GetCode(i32 %301)
  store i64 %302, i64* %3, align 8
  br label %305

303:                                              ; preds = %288
  %304 = load i64, i64* @HPDF_OK, align 8
  store i64 %304, i64* %3, align 8
  br label %305

305:                                              ; preds = %303, %298, %283, %267, %260, %187, %175, %157, %146, %134, %119, %109, %98, %87, %77, %49, %38, %30, %21
  %306 = load i64, i64* %3, align 8
  ret i64 %306
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Stream_Read(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i32 @HPDF_UInt16Swap(i32*) #1

declare dso_local i64 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @HPDF_Stream_Seek(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @HPDF_Array_New(i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @HPDF_Array_Add(i32, i32) #1

declare dso_local i32 @HPDF_Number_New(i32, i32) #1

declare dso_local i32 @HPDF_Name_New(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
