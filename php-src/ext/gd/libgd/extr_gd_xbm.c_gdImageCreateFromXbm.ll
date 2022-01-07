; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_xbm.c_gdImageCreateFromXbm.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_xbm.c_gdImageCreateFromXbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@MAX_XBM_LINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"#define %s %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"static unsigned char %s = {\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"static char %s = {\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"static unsigned short %s = {\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"static short %s = {\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"bits[]\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"invalid XBM\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"EOF before image was complete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @gdImageCreateFromXbm(i32* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [8 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %23 = load i32, i32* @MAX_XBM_LINE_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %4, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %5, align 8
  %27 = load i32, i32* @MAX_XBM_LINE_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @rewind(i32* %30)
  br label %32

32:                                               ; preds = %111, %1
  %33 = load i32, i32* @MAX_XBM_LINE_SIZE, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @fgets(i8* %26, i32 %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %112

37:                                               ; preds = %32
  %38 = load i32, i32* @MAX_XBM_LINE_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %26, i64 %40
  store i8 0, i8* %41, align 1
  %42 = call i32 @strlen(i8* %26)
  %43 = load i32, i32* @MAX_XBM_LINE_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %246

47:                                               ; preds = %37
  %48 = call i32 (i8*, i8*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %29, i32* %8)
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = call i8* @strrchr(i8* %29, i8 signext 95)
  store i8* %51, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i8* %29, i8** %7, align 8
  br label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %67, %63
  br label %111

70:                                               ; preds = %47
  %71 = call i32 (i8*, i8*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = call i32 (i8*, i8*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %70
  store i32 128, i32* %12, align 4
  br label %85

77:                                               ; preds = %73
  %78 = call i32 (i8*, i8*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %29)
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = call i32 (i8*, i8*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %29)
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %77
  store i32 32768, i32* %12, align 4
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %76
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, 7
  %91 = udiv i32 %90, 8
  %92 = load i32, i32* %10, align 4
  %93 = mul i32 %91, %92
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %246

97:                                               ; preds = %88
  %98 = call i8* @strrchr(i8* %29, i8 signext 95)
  store i8* %98, i8** %7, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i8* %29, i8** %7, align 8
  br label %104

101:                                              ; preds = %97
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %7, align 8
  br label %104

104:                                              ; preds = %101, %100
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  br label %112

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %85
  br label %111

111:                                              ; preds = %110, %69
  br label %32

112:                                              ; preds = %108, %32
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115, %112
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %246

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call %struct.TYPE_7__* @gdImageCreate(i32 %120, i32 %121)
  store %struct.TYPE_7__* %122, %struct.TYPE_7__** %13, align 8
  %123 = icmp ne %struct.TYPE_7__* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %246

125:                                              ; preds = %119
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %127 = call i32 @gdImageColorAllocate(%struct.TYPE_7__* %126, i32 255, i32 255, i32 255)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %129 = call i32 @gdImageColorAllocate(%struct.TYPE_7__* %128, i32 0, i32 0, i32 0)
  %130 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 2
  store i8 0, i8* %130, align 1
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 4
  store i8 0, i8* %131, align 1
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %239, %125
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %242

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %148, %136
  br label %138

138:                                              ; preds = %137
  %139 = load i32*, i32** %3, align 8
  %140 = call i32 @getc(i32* %139)
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* @EOF, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 1, i32* %11, align 4
  br label %149

144:                                              ; preds = %138
  %145 = load i32, i32* %19, align 4
  %146 = icmp eq i32 %145, 120
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %149

148:                                              ; preds = %144
  br label %137

149:                                              ; preds = %147, %143
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %242

153:                                              ; preds = %149
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @getc(i32* %154)
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* @EOF, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %242

159:                                              ; preds = %153
  %160 = load i32, i32* %19, align 4
  %161 = trunc i32 %160 to i8
  %162 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 0
  store i8 %161, i8* %162, align 1
  %163 = load i32*, i32** %3, align 8
  %164 = call i32 @getc(i32* %163)
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* @EOF, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %242

168:                                              ; preds = %159
  %169 = load i32, i32* %19, align 4
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 1
  store i8 %170, i8* %171, align 1
  %172 = load i32, i32* %12, align 4
  %173 = icmp eq i32 %172, 32768
  br i1 %173, label %174, label %193

174:                                              ; preds = %168
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @getc(i32* %175)
  store i32 %176, i32* %19, align 4
  %177 = load i32, i32* @EOF, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %242

180:                                              ; preds = %174
  %181 = load i32, i32* %19, align 4
  %182 = trunc i32 %181 to i8
  %183 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 2
  store i8 %182, i8* %183, align 1
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @getc(i32* %184)
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* @EOF, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  br label %242

189:                                              ; preds = %180
  %190 = load i32, i32* %19, align 4
  %191 = trunc i32 %190 to i8
  %192 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 3
  store i8 %191, i8* %192, align 1
  br label %193

193:                                              ; preds = %189, %168
  %194 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 0
  %195 = call i32 (i8*, i8*, ...) @sscanf(i8* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32* %21)
  %196 = icmp ne i32 %195, 1
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = call i32 @gd_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %200 = call i32 @gdImageDestroy(%struct.TYPE_7__* %199)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %246

201:                                              ; preds = %193
  store i32 1, i32* %16, align 4
  br label %202

202:                                              ; preds = %235, %201
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %238

206:                                              ; preds = %202
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %208 = load i32, i32* %17, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* %21, align 4
  %212 = load i32, i32* %16, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 1, i32 0
  %217 = call i32 @gdImageSetPixel(%struct.TYPE_7__* %207, i32 %208, i32 %210, i32 %216)
  %218 = load i32, i32* %17, align 4
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %218, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %206
  store i32 0, i32* %17, align 4
  %224 = load i32, i32* %18, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %18, align 4
  %226 = load i32, i32* %18, align 4
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %226, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %223
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %232, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %246

233:                                              ; preds = %223
  br label %238

234:                                              ; preds = %206
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %16, align 4
  %237 = shl i32 %236, 1
  store i32 %237, i32* %16, align 4
  br label %202

238:                                              ; preds = %233, %202
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %15, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %15, align 4
  br label %132

242:                                              ; preds = %188, %179, %167, %158, %152, %132
  %243 = call i32 @gd_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %245 = call i32 @gdImageDestroy(%struct.TYPE_7__* %244)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %246

246:                                              ; preds = %242, %231, %197, %124, %118, %96, %46
  %247 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %247)
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %248
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rewind(i32*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, ...) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local %struct.TYPE_7__* @gdImageCreate(i32, i32) #2

declare dso_local i32 @gdImageColorAllocate(%struct.TYPE_7__*, i32, i32, i32) #2

declare dso_local i32 @getc(i32*) #2

declare dso_local i32 @gd_error(i8*) #2

declare dso_local i32 @gdImageDestroy(%struct.TYPE_7__*) #2

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_7__*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
