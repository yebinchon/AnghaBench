; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_associate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i32, i32, i32 }
%struct.zone = type { i32, i8, i32, i32, i32, i32, i32, %struct.rule* }

@nrules = common dso_local global i32 0, align 4
@rules = common dso_local global %struct.rule* null, align 8
@rcomp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"same rule name in multiple files\00", align 1
@nzones = common dso_local global i32 0, align 4
@zones = common dso_local global %struct.zone* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s in ruleless zone\00", align 1
@errors = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @associate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @associate() #0 {
  %1 = alloca %struct.zone*, align 8
  %2 = alloca %struct.rule*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @nrules, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %152

9:                                                ; preds = %0
  %10 = load %struct.rule*, %struct.rule** @rules, align 8
  %11 = load i32, i32* @nrules, align 4
  %12 = load i32, i32* @rcomp, align 4
  %13 = call i32 @qsort(%struct.rule* %10, i32 %11, i32 12, i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %148, %9
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @nrules, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %151

19:                                               ; preds = %14
  %20 = load %struct.rule*, %struct.rule** @rules, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rule, %struct.rule* %20, i64 %22
  %24 = getelementptr inbounds %struct.rule, %struct.rule* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rule*, %struct.rule** @rules, align 8
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.rule, %struct.rule* %26, i64 %29
  %31 = getelementptr inbounds %struct.rule, %struct.rule* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @strcmp(i32 %25, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %148

36:                                               ; preds = %19
  %37 = load %struct.rule*, %struct.rule** @rules, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rule, %struct.rule* %37, i64 %39
  %41 = getelementptr inbounds %struct.rule, %struct.rule* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rule*, %struct.rule** @rules, align 8
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.rule, %struct.rule* %43, i64 %46
  %48 = getelementptr inbounds %struct.rule, %struct.rule* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @strcmp(i32 %42, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  br label %148

53:                                               ; preds = %36
  %54 = load %struct.rule*, %struct.rule** @rules, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.rule, %struct.rule* %54, i64 %56
  %58 = getelementptr inbounds %struct.rule, %struct.rule* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rule*, %struct.rule** @rules, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.rule, %struct.rule* %60, i64 %62
  %64 = getelementptr inbounds %struct.rule, %struct.rule* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @eat(i32 %59, i32 %65)
  %67 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %68 = call i32 @warning(i32 %67)
  %69 = load %struct.rule*, %struct.rule** @rules, align 8
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.rule, %struct.rule* %69, i64 %72
  %74 = getelementptr inbounds %struct.rule, %struct.rule* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.rule*, %struct.rule** @rules, align 8
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.rule, %struct.rule* %76, i64 %79
  %81 = getelementptr inbounds %struct.rule, %struct.rule* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @eat(i32 %75, i32 %82)
  %84 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %85 = call i32 @warning(i32 %84)
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 2
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %142, %53
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @nrules, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %145

92:                                               ; preds = %88
  %93 = load %struct.rule*, %struct.rule** @rules, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.rule, %struct.rule* %93, i64 %95
  %97 = getelementptr inbounds %struct.rule, %struct.rule* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.rule*, %struct.rule** @rules, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.rule, %struct.rule* %99, i64 %101
  %103 = getelementptr inbounds %struct.rule, %struct.rule* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @strcmp(i32 %98, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  br label %145

108:                                              ; preds = %92
  %109 = load %struct.rule*, %struct.rule** @rules, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.rule, %struct.rule* %109, i64 %111
  %113 = getelementptr inbounds %struct.rule, %struct.rule* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rule*, %struct.rule** @rules, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.rule, %struct.rule* %115, i64 %117
  %119 = getelementptr inbounds %struct.rule, %struct.rule* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @strcmp(i32 %114, i32 %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %108
  br label %142

124:                                              ; preds = %108
  %125 = load %struct.rule*, %struct.rule** @rules, align 8
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.rule, %struct.rule* %125, i64 %128
  %130 = getelementptr inbounds %struct.rule, %struct.rule* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.rule*, %struct.rule** @rules, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.rule, %struct.rule* %132, i64 %134
  %136 = getelementptr inbounds %struct.rule, %struct.rule* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @strcmp(i32 %131, i32 %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %124
  br label %142

141:                                              ; preds = %124
  br label %145

142:                                              ; preds = %140, %123
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  br label %88

145:                                              ; preds = %141, %107, %88
  %146 = load i32, i32* %4, align 4
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %145, %52, %35
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  br label %14

151:                                              ; preds = %14
  br label %152

152:                                              ; preds = %151, %0
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %166, %152
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @nzones, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %153
  %158 = load %struct.zone*, %struct.zone** @zones, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.zone, %struct.zone* %158, i64 %160
  store %struct.zone* %161, %struct.zone** %1, align 8
  %162 = load %struct.zone*, %struct.zone** %1, align 8
  %163 = getelementptr inbounds %struct.zone, %struct.zone* %162, i32 0, i32 7
  store %struct.rule* null, %struct.rule** %163, align 8
  %164 = load %struct.zone*, %struct.zone** %1, align 8
  %165 = getelementptr inbounds %struct.zone, %struct.zone* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  br label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %3, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %3, align 4
  br label %153

169:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %234, %169
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @nrules, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %236

174:                                              ; preds = %170
  %175 = load %struct.rule*, %struct.rule** @rules, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.rule, %struct.rule* %175, i64 %177
  store %struct.rule* %178, %struct.rule** %2, align 8
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %199, %174
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @nrules, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %202

185:                                              ; preds = %181
  %186 = load %struct.rule*, %struct.rule** %2, align 8
  %187 = getelementptr inbounds %struct.rule, %struct.rule* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.rule*, %struct.rule** @rules, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.rule, %struct.rule* %189, i64 %191
  %193 = getelementptr inbounds %struct.rule, %struct.rule* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @strcmp(i32 %188, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  br label %202

198:                                              ; preds = %185
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %181

202:                                              ; preds = %197, %181
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %230, %202
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @nzones, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %233

207:                                              ; preds = %203
  %208 = load %struct.zone*, %struct.zone** @zones, align 8
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.zone, %struct.zone* %208, i64 %210
  store %struct.zone* %211, %struct.zone** %1, align 8
  %212 = load %struct.zone*, %struct.zone** %1, align 8
  %213 = getelementptr inbounds %struct.zone, %struct.zone* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.rule*, %struct.rule** %2, align 8
  %216 = getelementptr inbounds %struct.rule, %struct.rule* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @strcmp(i32 %214, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %207
  br label %230

221:                                              ; preds = %207
  %222 = load %struct.rule*, %struct.rule** %2, align 8
  %223 = load %struct.zone*, %struct.zone** %1, align 8
  %224 = getelementptr inbounds %struct.zone, %struct.zone* %223, i32 0, i32 7
  store %struct.rule* %222, %struct.rule** %224, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* %5, align 4
  %227 = sub nsw i32 %225, %226
  %228 = load %struct.zone*, %struct.zone** %1, align 8
  %229 = getelementptr inbounds %struct.zone, %struct.zone* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %221, %220
  %231 = load i32, i32* %3, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %3, align 4
  br label %203

233:                                              ; preds = %203
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %6, align 4
  store i32 %235, i32* %5, align 4
  br label %170

236:                                              ; preds = %170
  store i32 0, i32* %3, align 4
  br label %237

237:                                              ; preds = %276, %236
  %238 = load i32, i32* %3, align 4
  %239 = load i32, i32* @nzones, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %279

241:                                              ; preds = %237
  %242 = load %struct.zone*, %struct.zone** @zones, align 8
  %243 = load i32, i32* %3, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.zone, %struct.zone* %242, i64 %244
  store %struct.zone* %245, %struct.zone** %1, align 8
  %246 = load %struct.zone*, %struct.zone** %1, align 8
  %247 = getelementptr inbounds %struct.zone, %struct.zone* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %275

250:                                              ; preds = %241
  %251 = load %struct.zone*, %struct.zone** %1, align 8
  %252 = getelementptr inbounds %struct.zone, %struct.zone* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.zone*, %struct.zone** %1, align 8
  %255 = getelementptr inbounds %struct.zone, %struct.zone* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @eat(i32 %253, i32 %256)
  %258 = load %struct.zone*, %struct.zone** %1, align 8
  %259 = getelementptr inbounds %struct.zone, %struct.zone* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.zone*, %struct.zone** %1, align 8
  %262 = getelementptr inbounds %struct.zone, %struct.zone* %261, i32 0, i32 2
  %263 = call i32 @getsave(i32 %260, i32* %262)
  %264 = load %struct.zone*, %struct.zone** %1, align 8
  %265 = getelementptr inbounds %struct.zone, %struct.zone* %264, i32 0, i32 4
  store i32 %263, i32* %265, align 8
  %266 = load %struct.zone*, %struct.zone** %1, align 8
  %267 = getelementptr inbounds %struct.zone, %struct.zone* %266, i32 0, i32 1
  %268 = load i8, i8* %267, align 4
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 115
  br i1 %270, label %271, label %274

271:                                              ; preds = %250
  %272 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %273 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %272)
  br label %274

274:                                              ; preds = %271, %250
  br label %275

275:                                              ; preds = %274, %241
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %3, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %3, align 4
  br label %237

279:                                              ; preds = %237
  %280 = load i64, i64* @errors, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i32, i32* @EXIT_FAILURE, align 4
  %284 = call i32 @exit(i32 %283) #3
  unreachable

285:                                              ; preds = %279
  ret void
}

declare dso_local i32 @qsort(%struct.rule*, i32, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @eat(i32, i32) #1

declare dso_local i32 @warning(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @getsave(i32, i32*) #1

declare dso_local i32 @error(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
