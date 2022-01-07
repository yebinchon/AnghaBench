; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_imagetag_cmdline.c_update_arg.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_imagetag_cmdline.c_update_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s: `--%s' (`-%c') option given more than once%s\0A\00", align 1
@package_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: `--%s' option given more than once%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: %s argument, \22%s\22, for option `--%s' (`-%c')%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ambiguous\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s: %s argument, \22%s\22, for option `--%s'%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: invalid numeric value: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*, i32*, i8*, i8**, i8*, i32, i32, i32, i32, i32, i8*, i8, i8*)* @update_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_arg(i8* %0, i8** %1, i32* %2, i32* %3, i8* %4, i8** %5, i8* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i8* %12, i8 signext %13, i8* %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8, align 1
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i8**, align 8
  store i8* %0, i8** %17, align 8
  store i8** %1, i8*** %18, align 8
  store i32* %2, i32** %19, align 8
  store i32* %3, i32** %20, align 8
  store i8* %4, i8** %21, align 8
  store i8** %5, i8*** %22, align 8
  store i8* %6, i8** %23, align 8
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store i32 %11, i32* %28, align 4
  store i8* %12, i8** %29, align 8
  store i8 %13, i8* %30, align 1
  store i8* %14, i8** %31, align 8
  store i8* null, i8** %32, align 8
  %36 = load i8*, i8** %21, align 8
  store i8* %36, i8** %33, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = call i32 @FIX_UNUSED(i8* %37)
  store i8* null, i8** %32, align 8
  store i32 0, i32* %34, align 4
  %39 = load i32, i32* %28, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %86, label %41

41:                                               ; preds = %15
  %42 = load i32*, i32** %20, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %86

44:                                               ; preds = %41
  %45 = load i32*, i32** %20, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %25, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %48
  %52 = load i32*, i32** %19, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %51, %44
  %56 = load i8, i8* %30, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 45
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** @package_name, align 8
  %62 = load i8*, i8** %29, align 8
  %63 = load i8, i8* %30, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8*, i8** %31, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i8*, i8** %31, align 8
  br label %70

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i8* [ %68, %67 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %69 ]
  %72 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %61, i8* %62, i32 %64, i8* %71)
  br label %85

73:                                               ; preds = %55
  %74 = load i32, i32* @stderr, align 4
  %75 = load i8*, i8** @package_name, align 8
  %76 = load i8*, i8** %29, align 8
  %77 = load i8*, i8** %31, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i8*, i8** %31, align 8
  br label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i8* [ %80, %79 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %81 ]
  %84 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %75, i8* %76, i8* %83)
  br label %85

85:                                               ; preds = %82, %70
  store i32 1, i32* %16, align 4
  br label %268

86:                                               ; preds = %51, %48, %41, %15
  %87 = load i8**, i8*** %22, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %89, label %142

89:                                               ; preds = %86
  %90 = load i8*, i8** %21, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i8*, i8** %21, align 8
  br label %96

94:                                               ; preds = %89
  %95 = load i8*, i8** %23, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i8* [ %93, %92 ], [ %95, %94 ]
  %98 = load i8**, i8*** %22, align 8
  %99 = call i32 @check_possible_values(i8* %97, i8** %98)
  store i32 %99, i32* %34, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %142

101:                                              ; preds = %96
  %102 = load i8, i8* %30, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 45
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load i32, i32* @stderr, align 4
  %107 = load i8*, i8** @package_name, align 8
  %108 = load i32, i32* %34, align 4
  %109 = icmp eq i32 %108, -2
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %112 = load i8*, i8** %21, align 8
  %113 = load i8*, i8** %29, align 8
  %114 = load i8, i8* %30, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8*, i8** %31, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i8*, i8** %31, align 8
  br label %121

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i8* [ %119, %118 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %120 ]
  %123 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %107, i8* %111, i8* %112, i8* %113, i32 %115, i8* %122)
  br label %141

124:                                              ; preds = %101
  %125 = load i32, i32* @stderr, align 4
  %126 = load i8*, i8** @package_name, align 8
  %127 = load i32, i32* %34, align 4
  %128 = icmp eq i32 %127, -2
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %131 = load i8*, i8** %21, align 8
  %132 = load i8*, i8** %29, align 8
  %133 = load i8*, i8** %31, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = load i8*, i8** %31, align 8
  br label %138

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i8* [ %136, %135 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %137 ]
  %140 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %126, i8* %130, i8* %131, i8* %132, i8* %139)
  br label %141

141:                                              ; preds = %138, %121
  store i32 1, i32* %16, align 4
  br label %268

142:                                              ; preds = %96, %86
  %143 = load i32*, i32** %19, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load i32*, i32** %19, align 8
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, i32* %26, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  store i32 0, i32* %16, align 4
  br label %268

153:                                              ; preds = %149, %145, %142
  %154 = load i32*, i32** %20, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32*, i32** %20, align 8
  %158 = load i32, i32* %157, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %156, %153
  %161 = load i32*, i32** %19, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32*, i32** %19, align 8
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %163, %160
  %168 = load i8**, i8*** %22, align 8
  %169 = icmp ne i8** %168, null
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i8**, i8*** %22, align 8
  %172 = load i32, i32* %34, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %33, align 8
  br label %176

176:                                              ; preds = %170, %167
  %177 = load i32, i32* %24, align 4
  switch i32 %177, label %217 [
    i32 131, label %178
    i32 130, label %187
    i32 128, label %196
  ]

178:                                              ; preds = %176
  %179 = load i8*, i8** %17, align 8
  %180 = bitcast i8* %179 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = load i8*, i8** %17, align 8
  %186 = bitcast i8* %185 to i32*
  store i32 %184, i32* %186, align 4
  br label %218

187:                                              ; preds = %176
  %188 = load i8*, i8** %33, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i8*, i8** %33, align 8
  %192 = call i32 @strtol(i8* %191, i8** %32, i32 0)
  %193 = load i8*, i8** %17, align 8
  %194 = bitcast i8* %193 to i32*
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %190, %187
  br label %218

196:                                              ; preds = %176
  %197 = load i8*, i8** %33, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %216

199:                                              ; preds = %196
  %200 = load i8*, i8** %17, align 8
  %201 = bitcast i8* %200 to i8**
  store i8** %201, i8*** %35, align 8
  %202 = load i32, i32* %27, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %199
  %205 = load i8**, i8*** %35, align 8
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load i8**, i8*** %35, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @free(i8* %210)
  br label %212

212:                                              ; preds = %208, %204, %199
  %213 = load i8*, i8** %33, align 8
  %214 = call i8* @gengetopt_strdup(i8* %213)
  %215 = load i8**, i8*** %35, align 8
  store i8* %214, i8** %215, align 8
  br label %216

216:                                              ; preds = %212, %196
  br label %218

217:                                              ; preds = %176
  br label %218

218:                                              ; preds = %217, %216, %195, %178
  %219 = load i32, i32* %24, align 4
  switch i32 %219, label %237 [
    i32 130, label %220
  ]

220:                                              ; preds = %218
  %221 = load i8*, i8** %33, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %236

223:                                              ; preds = %220
  %224 = load i8*, i8** %32, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %223
  %227 = load i8*, i8** %32, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %226, %223
  %232 = load i32, i32* @stderr, align 4
  %233 = load i8*, i8** @package_name, align 8
  %234 = load i8*, i8** %33, align 8
  %235 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %232, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %233, i8* %234)
  store i32 1, i32* %16, align 4
  br label %268

236:                                              ; preds = %226, %220
  br label %238

237:                                              ; preds = %218
  br label %238

238:                                              ; preds = %237, %236
  %239 = load i32, i32* %24, align 4
  switch i32 %239, label %241 [
    i32 129, label %240
    i32 131, label %240
  ]

240:                                              ; preds = %238, %238
  br label %267

241:                                              ; preds = %238
  %242 = load i8*, i8** %21, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %266

244:                                              ; preds = %241
  %245 = load i8**, i8*** %18, align 8
  %246 = icmp ne i8** %245, null
  br i1 %246, label %247, label %266

247:                                              ; preds = %244
  %248 = load i32, i32* %27, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i8*, i8** %21, align 8
  %252 = load i8**, i8*** %18, align 8
  store i8* %251, i8** %252, align 8
  br label %265

253:                                              ; preds = %247
  %254 = load i8**, i8*** %18, align 8
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = load i8**, i8*** %18, align 8
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @free(i8* %259)
  br label %261

261:                                              ; preds = %257, %253
  %262 = load i8*, i8** %21, align 8
  %263 = call i8* @gengetopt_strdup(i8* %262)
  %264 = load i8**, i8*** %18, align 8
  store i8* %263, i8** %264, align 8
  br label %265

265:                                              ; preds = %261, %250
  br label %266

266:                                              ; preds = %265, %244, %241
  br label %267

267:                                              ; preds = %266, %240
  store i32 0, i32* %16, align 4
  br label %268

268:                                              ; preds = %267, %231, %152, %141, %85
  %269 = load i32, i32* %16, align 4
  ret i32 %269
}

declare dso_local i32 @FIX_UNUSED(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @check_possible_values(i8*, i8**) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @gengetopt_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
