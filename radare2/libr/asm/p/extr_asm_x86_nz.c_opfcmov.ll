; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opfcmov.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opfcmov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"fcmov\00", align 1
@OT_FPUREG = common dso_local global i32 0, align 4
@OT_REGALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"nbe\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"nu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*)* @opfcmov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opfcmov(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %9, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %240 [
    i32 2, label %19
  ]

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OT_FPUREG, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @OT_REGALL, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %238

32:                                               ; preds = %19
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %238

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @OT_FPUREG, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @OT_REGALL, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %238

53:                                               ; preds = %40
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 218, i32* %62, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 192, %68
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  br label %237

75:                                               ; preds = %53
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %75
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 218, i32* %84, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 200, %90
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %91, i32* %96, align 4
  br label %236

97:                                               ; preds = %75
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %97
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 218, i32* %106, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 208, %112
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %113, i32* %118, align 4
  br label %235

119:                                              ; preds = %97
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %141, label %123

123:                                              ; preds = %119
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 218, i32* %128, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 216, %134
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %135, i32* %140, align 4
  br label %234

141:                                              ; preds = %119
  %142 = load i8*, i8** %9, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %163, label %145

145:                                              ; preds = %141
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 219, i32* %150, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 192, %156
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 %157, i32* %162, align 4
  br label %233

163:                                              ; preds = %141
  %164 = load i8*, i8** %9, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %185, label %167

167:                                              ; preds = %163
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 219, i32* %172, align 4
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 200, %178
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  store i32 %179, i32* %184, align 4
  br label %232

185:                                              ; preds = %163
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %207, label %189

189:                                              ; preds = %185
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 219, i32* %194, align 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 1
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = or i32 208, %200
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  store i32 %201, i32* %206, align 4
  br label %231

207:                                              ; preds = %185
  %208 = load i8*, i8** %9, align 8
  %209 = call i32 @strcmp(i8* %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %229, label %211

211:                                              ; preds = %207
  %212 = load i32*, i32** %6, align 8
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  store i32 219, i32* %216, align 4
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i64 1
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = or i32 216, %222
  %224 = load i32*, i32** %6, align 8
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  store i32 %223, i32* %228, align 4
  br label %230

229:                                              ; preds = %207
  store i32 -1, i32* %4, align 4
  br label %243

230:                                              ; preds = %211
  br label %231

231:                                              ; preds = %230, %189
  br label %232

232:                                              ; preds = %231, %167
  br label %233

233:                                              ; preds = %232, %145
  br label %234

234:                                              ; preds = %233, %123
  br label %235

235:                                              ; preds = %234, %101
  br label %236

236:                                              ; preds = %235, %79
  br label %237

237:                                              ; preds = %236, %57
  br label %239

238:                                              ; preds = %40, %32, %19
  store i32 -1, i32* %4, align 4
  br label %243

239:                                              ; preds = %237
  br label %241

240:                                              ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %243

241:                                              ; preds = %239
  %242 = load i32, i32* %8, align 4
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %241, %240, %238, %229
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
