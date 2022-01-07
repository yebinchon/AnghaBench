; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc2004_sjis2004/extr_euc2004_sjis2004.c_euc_jis_20042shift_jis_2004.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc2004_sjis2004/extr_euc2004_sjis2004.c_euc_jis_20042shift_jis_2004.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_EUC_JIS_2004 = common dso_local global i32 0, align 4
@SS2 = common dso_local global i32 0, align 4
@SS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @euc_jis_20042shift_jis_2004 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @euc_jis_20042shift_jis_2004(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %11

11:                                               ; preds = %245, %29, %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %253

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @IS_HIGHBIT_SET(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @PG_EUC_JIS_2004, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @report_invalid_encoding(i32 %25, i8* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %7, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  store i8 %31, i8* %32, align 1
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  br label %11

38:                                               ; preds = %14
  %39 = load i32, i32* @PG_EUC_JIS_2004, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @pg_encoding_verifymb(i32 %39, i8* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* @PG_EUC_JIS_2004, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @report_invalid_encoding(i32 %46, i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SS2, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  store i8 %60, i8* %61, align 1
  br label %245

63:                                               ; preds = %54, %50
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @SS3, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %154

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %154

70:                                               ; preds = %67
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = sub nsw i32 %74, 160
  store i32 %75, i32* %8, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %79, 160
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  switch i32 %81, label %93 [
    i32 1, label %82
    i32 3, label %82
    i32 4, label %82
    i32 5, label %82
    i32 8, label %82
    i32 12, label %82
    i32 13, label %82
    i32 14, label %82
    i32 15, label %82
  ]

82:                                               ; preds = %70, %70, %70, %70, %70, %70, %70, %70, %70
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 479
  %85 = ashr i32 %84, 1
  %86 = load i32, i32* %8, align 4
  %87 = ashr i32 %86, 3
  %88 = mul nsw i32 %87, 3
  %89 = sub nsw i32 %85, %88
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %5, align 8
  store i8 %90, i8* %91, align 1
  br label %112

93:                                               ; preds = %70
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %94, 78
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp sle i32 %97, 94
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 411
  %102 = ashr i32 %101, 1
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %5, align 8
  store i8 %103, i8* %104, align 1
  br label %111

106:                                              ; preds = %96, %93
  %107 = load i32, i32* @PG_EUC_JIS_2004, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @report_invalid_encoding(i32 %107, i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %99
  br label %112

112:                                              ; preds = %111, %82
  %113 = load i32, i32* %8, align 4
  %114 = srem i32 %113, 2
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %147

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = icmp sge i32 %117, 1
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = icmp sle i32 %120, 63
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 63
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %5, align 8
  store i8 %125, i8* %126, align 1
  br label %146

128:                                              ; preds = %119, %116
  %129 = load i32, i32* %9, align 4
  %130 = icmp sge i32 %129, 64
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i32, i32* %9, align 4
  %133 = icmp sle i32 %132, 94
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 64
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %5, align 8
  store i8 %137, i8* %138, align 1
  br label %145

140:                                              ; preds = %131, %128
  %141 = load i32, i32* @PG_EUC_JIS_2004, align 4
  %142 = load i8*, i8** %4, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @report_invalid_encoding(i32 %141, i8* %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %134
  br label %146

146:                                              ; preds = %145, %122
  br label %153

147:                                              ; preds = %112
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 158
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %5, align 8
  store i8 %150, i8* %151, align 1
  br label %153

153:                                              ; preds = %147, %146
  br label %244

154:                                              ; preds = %67, %63
  %155 = load i32, i32* %10, align 4
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %238

157:                                              ; preds = %154
  %158 = load i32, i32* %7, align 4
  %159 = sub nsw i32 %158, 160
  store i32 %159, i32* %8, align 4
  %160 = load i8*, i8** %4, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = sub nsw i32 %163, 160
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp sge i32 %165, 1
  br i1 %166, label %167, label %177

167:                                              ; preds = %157
  %168 = load i32, i32* %8, align 4
  %169 = icmp sle i32 %168, 62
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 257
  %173 = ashr i32 %172, 1
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %5, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %5, align 8
  store i8 %174, i8* %175, align 1
  br label %196

177:                                              ; preds = %167, %157
  %178 = load i32, i32* %8, align 4
  %179 = icmp sge i32 %178, 63
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load i32, i32* %8, align 4
  %182 = icmp sle i32 %181, 94
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 385
  %186 = ashr i32 %185, 1
  %187 = trunc i32 %186 to i8
  %188 = load i8*, i8** %5, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %5, align 8
  store i8 %187, i8* %188, align 1
  br label %195

190:                                              ; preds = %180, %177
  %191 = load i32, i32* @PG_EUC_JIS_2004, align 4
  %192 = load i8*, i8** %4, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @report_invalid_encoding(i32 %191, i8* %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %183
  br label %196

196:                                              ; preds = %195, %170
  %197 = load i32, i32* %8, align 4
  %198 = srem i32 %197, 2
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %231

200:                                              ; preds = %196
  %201 = load i32, i32* %9, align 4
  %202 = icmp sge i32 %201, 1
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load i32, i32* %9, align 4
  %205 = icmp sle i32 %204, 63
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 63
  %209 = trunc i32 %208 to i8
  %210 = load i8*, i8** %5, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %5, align 8
  store i8 %209, i8* %210, align 1
  br label %230

212:                                              ; preds = %203, %200
  %213 = load i32, i32* %9, align 4
  %214 = icmp sge i32 %213, 64
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = load i32, i32* %9, align 4
  %217 = icmp sle i32 %216, 94
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 64
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %5, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %5, align 8
  store i8 %221, i8* %222, align 1
  br label %229

224:                                              ; preds = %215, %212
  %225 = load i32, i32* @PG_EUC_JIS_2004, align 4
  %226 = load i8*, i8** %4, align 8
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @report_invalid_encoding(i32 %225, i8* %226, i32 %227)
  br label %229

229:                                              ; preds = %224, %218
  br label %230

230:                                              ; preds = %229, %206
  br label %237

231:                                              ; preds = %196
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 158
  %234 = trunc i32 %233 to i8
  %235 = load i8*, i8** %5, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %5, align 8
  store i8 %234, i8* %235, align 1
  br label %237

237:                                              ; preds = %231, %230
  br label %243

238:                                              ; preds = %154
  %239 = load i32, i32* @PG_EUC_JIS_2004, align 4
  %240 = load i8*, i8** %4, align 8
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @report_invalid_encoding(i32 %239, i8* %240, i32 %241)
  br label %243

243:                                              ; preds = %238, %237
  br label %244

244:                                              ; preds = %243, %153
  br label %245

245:                                              ; preds = %244, %57
  %246 = load i32, i32* %10, align 4
  %247 = load i8*, i8** %4, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8* %249, i8** %4, align 8
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %6, align 4
  %252 = sub nsw i32 %251, %250
  store i32 %252, i32* %6, align 4
  br label %11

253:                                              ; preds = %11
  %254 = load i8*, i8** %5, align 8
  store i8 0, i8* %254, align 1
  ret void
}

declare dso_local i32 @IS_HIGHBIT_SET(i32) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @pg_encoding_verifymb(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
