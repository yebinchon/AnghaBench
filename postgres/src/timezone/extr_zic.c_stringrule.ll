; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_stringrule.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_stringrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i32, i64, i32, i32, i32, i32, i64, i64 }

@DC_DOM = common dso_local global i64 0, align 8
@TM_FEBRUARY = common dso_local global i32 0, align 4
@len_months = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"J%d\00", align 1
@DC_DOWGEQ = common dso_local global i64 0, align 8
@DAYSPERWEEK = common dso_local global i32 0, align 4
@SECSPERDAY = common dso_local global i32 0, align 4
@DC_DOWLEQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"M%d.%d.%d\00", align 1
@SECSPERMIN = common dso_local global i32 0, align 4
@MINSPERHOUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rule*, i32, i32)* @stringrule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stringrule(i8* %0, %struct.rule* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rule*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.rule* %1, %struct.rule** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.rule*, %struct.rule** %7, align 8
  %18 = getelementptr inbounds %struct.rule, %struct.rule* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.rule*, %struct.rule** %7, align 8
  %21 = getelementptr inbounds %struct.rule, %struct.rule* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DC_DOM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %86

25:                                               ; preds = %4
  %26 = load %struct.rule*, %struct.rule** %7, align 8
  %27 = getelementptr inbounds %struct.rule, %struct.rule* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 29
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.rule*, %struct.rule** %7, align 8
  %32 = getelementptr inbounds %struct.rule, %struct.rule* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TM_FEBRUARY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %246

37:                                               ; preds = %30, %25
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.rule*, %struct.rule** %7, align 8
  %41 = getelementptr inbounds %struct.rule, %struct.rule* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load i32**, i32*** @len_months, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %38

57:                                               ; preds = %38
  %58 = load %struct.rule*, %struct.rule** %7, align 8
  %59 = getelementptr inbounds %struct.rule, %struct.rule* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %60, 1
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.rule*, %struct.rule** %7, align 8
  %66 = getelementptr inbounds %struct.rule, %struct.rule* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %64, %67
  %69 = sub nsw i32 %68, 1
  %70 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %6, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %6, align 8
  br label %85

74:                                               ; preds = %57
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.rule*, %struct.rule** %7, align 8
  %78 = getelementptr inbounds %struct.rule, %struct.rule* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %76, %79
  %81 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %6, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %6, align 8
  br label %85

85:                                               ; preds = %74, %62
  br label %187

86:                                               ; preds = %4
  %87 = load %struct.rule*, %struct.rule** %7, align 8
  %88 = getelementptr inbounds %struct.rule, %struct.rule* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %15, align 4
  %90 = load %struct.rule*, %struct.rule** %7, align 8
  %91 = getelementptr inbounds %struct.rule, %struct.rule* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DC_DOWGEQ, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %86
  %96 = load %struct.rule*, %struct.rule** %7, align 8
  %97 = getelementptr inbounds %struct.rule, %struct.rule* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* @DAYSPERWEEK, align 4
  %101 = srem i32 %99, %100
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  store i32 2013, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %95
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %15, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @SECSPERDAY, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %10, align 4
  %114 = load %struct.rule*, %struct.rule** %7, align 8
  %115 = getelementptr inbounds %struct.rule, %struct.rule* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* @DAYSPERWEEK, align 4
  %119 = sdiv i32 %117, %118
  %120 = add nsw i32 1, %119
  store i32 %120, i32* %14, align 4
  br label %168

121:                                              ; preds = %86
  %122 = load %struct.rule*, %struct.rule** %7, align 8
  %123 = getelementptr inbounds %struct.rule, %struct.rule* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DC_DOWLEQ, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %166

127:                                              ; preds = %121
  %128 = load %struct.rule*, %struct.rule** %7, align 8
  %129 = getelementptr inbounds %struct.rule, %struct.rule* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32**, i32*** @len_months, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.rule*, %struct.rule** %7, align 8
  %135 = getelementptr inbounds %struct.rule, %struct.rule* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %130, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %127
  store i32 5, i32* %14, align 4
  br label %165

142:                                              ; preds = %127
  %143 = load %struct.rule*, %struct.rule** %7, align 8
  %144 = getelementptr inbounds %struct.rule, %struct.rule* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @DAYSPERWEEK, align 4
  %147 = srem i32 %145, %146
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  store i32 2013, i32* %11, align 4
  br label %151

151:                                              ; preds = %150, %142
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %15, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* @SECSPERDAY, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %10, align 4
  %160 = load %struct.rule*, %struct.rule** %7, align 8
  %161 = getelementptr inbounds %struct.rule, %struct.rule* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @DAYSPERWEEK, align 4
  %164 = sdiv i32 %162, %163
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %151, %141
  br label %167

166:                                              ; preds = %121
  store i32 -1, i32* %5, align 4
  br label %246

167:                                              ; preds = %165
  br label %168

168:                                              ; preds = %167, %105
  %169 = load i32, i32* %15, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32, i32* @DAYSPERWEEK, align 4
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i8*, i8** %6, align 8
  %177 = load %struct.rule*, %struct.rule** %7, align 8
  %178 = getelementptr inbounds %struct.rule, %struct.rule* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %15, align 4
  %183 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %180, i32 %181, i32 %182)
  %184 = load i8*, i8** %6, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8* %186, i8** %6, align 8
  br label %187

187:                                              ; preds = %175, %85
  %188 = load %struct.rule*, %struct.rule** %7, align 8
  %189 = getelementptr inbounds %struct.rule, %struct.rule* %188, i32 0, i32 7
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %10, align 4
  br label %196

196:                                              ; preds = %192, %187
  %197 = load %struct.rule*, %struct.rule** %7, align 8
  %198 = getelementptr inbounds %struct.rule, %struct.rule* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %196
  %202 = load %struct.rule*, %struct.rule** %7, align 8
  %203 = getelementptr inbounds %struct.rule, %struct.rule* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %206, %201, %196
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* @SECSPERMIN, align 4
  %213 = mul nsw i32 2, %212
  %214 = load i32, i32* @MINSPERHOUR, align 4
  %215 = mul nsw i32 %213, %214
  %216 = icmp ne i32 %211, %215
  br i1 %216, label %217, label %244

217:                                              ; preds = %210
  %218 = load i8*, i8** %6, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %6, align 8
  store i8 47, i8* %218, align 1
  %220 = load i8*, i8** %6, align 8
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @stringoffset(i8* %220, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %217
  store i32 -1, i32* %5, align 4
  br label %246

225:                                              ; preds = %217
  %226 = load i32, i32* %10, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i32, i32* %11, align 4
  %230 = icmp slt i32 %229, 2013
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i32 2013, i32* %11, align 4
  br label %232

232:                                              ; preds = %231, %228
  br label %243

233:                                              ; preds = %225
  %234 = load i32, i32* @SECSPERDAY, align 4
  %235 = load i32, i32* %10, align 4
  %236 = icmp sle i32 %234, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = load i32, i32* %11, align 4
  %239 = icmp slt i32 %238, 1994
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store i32 1994, i32* %11, align 4
  br label %241

241:                                              ; preds = %240, %237
  br label %242

242:                                              ; preds = %241, %233
  br label %243

243:                                              ; preds = %242, %232
  br label %244

244:                                              ; preds = %243, %210
  %245 = load i32, i32* %11, align 4
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %244, %224, %166, %36
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @stringoffset(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
