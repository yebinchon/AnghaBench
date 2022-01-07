; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_setCompDefaults.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_setCompDefaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@pf2cs = common dso_local global i32* null, align 8
@tjPixelSize = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"TJ_REVERT\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@JCP_FASTEST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"TJ_OPTIMIZE\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"TJ_ARITHMETIC\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"TJ_RESTART\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@TJFLAG_ACCURATEDCT = common dso_local global i32 0, align 4
@JDCT_ISLOW = common dso_local global i32 0, align 4
@JDCT_FASTEST = common dso_local global i32 0, align 4
@TJSAMP_GRAY = common dso_local global i32 0, align 4
@JCS_GRAYSCALE = common dso_local global i32 0, align 4
@TJPF_CMYK = common dso_local global i32 0, align 4
@JCS_YCCK = common dso_local global i32 0, align 4
@JCS_YCbCr = common dso_local global i32 0, align 4
@TJFLAG_PROGRESSIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"TJ_PROGRESSIVE\00", align 1
@JCP_MAX_COMPRESSION = common dso_local global i64 0, align 8
@tjMCUWidth = common dso_local global i32* null, align 8
@tjMCUHeight = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jpeg_compress_struct*, i32, i32, i32, i32)* @setCompDefaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setCompDefaults(%struct.jpeg_compress_struct* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.jpeg_compress_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %15 = load i32*, i32** @pf2cs, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** @tjPixelSize, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %5
  %32 = load i8*, i8** %12, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* @JCP_FASTEST, align 8
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 %40, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %35, %31, %5
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %47 = call i32 @jpeg_set_defaults(%struct.jpeg_compress_struct* %46)
  %48 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %48, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i8*, i8** %12, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** @TRUE, align 8
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %54, %50, %45
  %63 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i8* %63, i8** %12, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i8*, i8** %12, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** @TRUE, align 8
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %69, %65, %62
  %78 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i8* %78, i8** %12, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %111

80:                                               ; preds = %77
  %81 = load i8*, i8** %12, align 8
  %82 = call i64 @strlen(i8* %81)
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  store i32 -1, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @sscanf(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %13, i8* %14)
  %87 = icmp sge i32 %86, 1
  br i1 %87, label %88, label %110

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = icmp sle i32 %92, 65535
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load i8, i8* %14, align 1
  %96 = call signext i8 @toupper(i8 signext %95)
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 66
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %102 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %104 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  br label %109

105:                                              ; preds = %94
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %108 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %99
  br label %110

110:                                              ; preds = %109, %91, %88, %84
  br label %111

111:                                              ; preds = %110, %80, %77
  %112 = load i32, i32* %9, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %111
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i8*, i8** @TRUE, align 8
  %118 = call i32 @jpeg_set_quality(%struct.jpeg_compress_struct* %115, i32 %116, i8* %117)
  %119 = load i32, i32* %9, align 4
  %120 = icmp sge i32 %119, 96
  br i1 %120, label %126, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @TJFLAG_ACCURATEDCT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121, %114
  %127 = load i32, i32* @JDCT_ISLOW, align 4
  %128 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  br label %134

130:                                              ; preds = %121
  %131 = load i32, i32* @JDCT_FASTEST, align 4
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %133 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134, %111
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @TJSAMP_GRAY, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %141 = load i32, i32* @JCS_GRAYSCALE, align 4
  %142 = call i32 @jpeg_set_colorspace(%struct.jpeg_compress_struct* %140, i32 %141)
  br label %156

143:                                              ; preds = %135
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @TJPF_CMYK, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %149 = load i32, i32* @JCS_YCCK, align 4
  %150 = call i32 @jpeg_set_colorspace(%struct.jpeg_compress_struct* %148, i32 %149)
  br label %155

151:                                              ; preds = %143
  %152 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %153 = load i32, i32* @JCS_YCbCr, align 4
  %154 = call i32 @jpeg_set_colorspace(%struct.jpeg_compress_struct* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %147
  br label %156

156:                                              ; preds = %155, %139
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @TJFLAG_PROGRESSIVE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %163 = call i32 @jpeg_simple_progression(%struct.jpeg_compress_struct* %162)
  br label %179

164:                                              ; preds = %156
  %165 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i8* %165, i8** %12, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load i8*, i8** %12, align 8
  %169 = call i64 @strlen(i8* %168)
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = load i8*, i8** %12, align 8
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %177 = call i32 @jpeg_simple_progression(%struct.jpeg_compress_struct* %176)
  br label %178

178:                                              ; preds = %175, %171, %167, %164
  br label %179

179:                                              ; preds = %178, %161
  %180 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %181 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %180, i32 0, i32 4
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @JCP_MAX_COMPRESSION, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %179
  %188 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %189 = call i32 @jpeg_simple_progression(%struct.jpeg_compress_struct* %188)
  br label %190

190:                                              ; preds = %187, %179
  %191 = load i32*, i32** @tjMCUWidth, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sdiv i32 %195, 8
  %197 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %198 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %197, i32 0, i32 3
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  store i32 %196, i32* %201, align 4
  %202 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %203 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %202, i32 0, i32 3
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 1
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  store i32 1, i32* %206, align 4
  %207 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %208 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %207, i32 0, i32 3
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 2
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  store i32 1, i32* %211, align 4
  %212 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %213 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp sgt i32 %214, 3
  br i1 %215, label %216, label %228

216:                                              ; preds = %190
  %217 = load i32*, i32** @tjMCUWidth, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = sdiv i32 %221, 8
  %223 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %224 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %223, i32 0, i32 3
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 3
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  store i32 %222, i32* %227, align 4
  br label %228

228:                                              ; preds = %216, %190
  %229 = load i32*, i32** @tjMCUHeight, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %233, 8
  %235 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %236 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %235, i32 0, i32 3
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  store i32 %234, i32* %239, align 4
  %240 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %241 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %240, i32 0, i32 3
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i64 1
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  store i32 1, i32* %244, align 4
  %245 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %246 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %245, i32 0, i32 3
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i64 2
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  store i32 1, i32* %249, align 4
  %250 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %251 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = icmp sgt i32 %252, 3
  br i1 %253, label %254, label %266

254:                                              ; preds = %228
  %255 = load i32*, i32** @tjMCUHeight, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = sdiv i32 %259, 8
  %261 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %262 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %261, i32 0, i32 3
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i64 3
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  store i32 %260, i32* %265, align 4
  br label %266

266:                                              ; preds = %254, %228
  %267 = load i32, i32* %11, align 4
  ret i32 %267
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @jpeg_set_defaults(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @jpeg_set_quality(%struct.jpeg_compress_struct*, i32, i8*) #1

declare dso_local i32 @jpeg_set_colorspace(%struct.jpeg_compress_struct*, i32) #1

declare dso_local i32 @jpeg_simple_progression(%struct.jpeg_compress_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
