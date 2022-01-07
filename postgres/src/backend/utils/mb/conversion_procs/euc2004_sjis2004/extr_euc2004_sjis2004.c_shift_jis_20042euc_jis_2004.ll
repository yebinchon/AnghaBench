; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc2004_sjis2004/extr_euc2004_sjis2004.c_shift_jis_20042euc_jis_2004.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc2004_sjis2004/extr_euc2004_sjis2004.c_shift_jis_20042euc_jis_2004.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_SHIFT_JIS_2004 = common dso_local global i32 0, align 4
@SS2 = common dso_local global i32 0, align 4
@SS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @shift_jis_20042euc_jis_2004 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shift_jis_20042euc_jis_2004(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %14

14:                                               ; preds = %225, %32, %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %233

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @IS_HIGHBIT_SET(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* @PG_SHIFT_JIS_2004, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @report_invalid_encoding(i32 %28, i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %7, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  store i8 %34, i8* %35, align 1
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  br label %14

41:                                               ; preds = %17
  %42 = load i32, i32* @PG_SHIFT_JIS_2004, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pg_encoding_verifymb(i32 %42, i8* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %41
  %53 = load i32, i32* @PG_SHIFT_JIS_2004, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @report_invalid_encoding(i32 %53, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %58, 161
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp sle i32 %61, 223
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* @SS2, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  store i8 %68, i8* %69, align 1
  %71 = load i32, i32* %7, align 4
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %5, align 8
  store i8 %72, i8* %73, align 1
  br label %225

75:                                               ; preds = %63, %60, %57
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %224

78:                                               ; preds = %75
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  store i32 %82, i32* %13, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sge i32 %83, 129
  br i1 %84, label %85, label %105

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = icmp sle i32 %86, 159
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = shl i32 %89, 1
  %91 = sub nsw i32 %90, 256
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @get_ten(i32 %92, i32* %10)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load i32, i32* @PG_SHIFT_JIS_2004, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @report_invalid_encoding(i32 %97, i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %88
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %205

105:                                              ; preds = %85, %78
  %106 = load i32, i32* %7, align 4
  %107 = icmp sge i32 %106, 224
  br i1 %107, label %108, label %128

108:                                              ; preds = %105
  %109 = load i32, i32* %7, align 4
  %110 = icmp sle i32 %109, 239
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = shl i32 %112, 1
  %114 = sub nsw i32 %113, 384
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @get_ten(i32 %115, i32* %10)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load i32, i32* @PG_SHIFT_JIS_2004, align 4
  %121 = load i8*, i8** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @report_invalid_encoding(i32 %120, i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %111
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %8, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %204

128:                                              ; preds = %108, %105
  %129 = load i32, i32* %7, align 4
  %130 = icmp sge i32 %129, 240
  br i1 %130, label %131, label %167

131:                                              ; preds = %128
  %132 = load i32, i32* %7, align 4
  %133 = icmp sle i32 %132, 243
  br i1 %133, label %134, label %167

134:                                              ; preds = %131
  store i32 2, i32* %11, align 4
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @get_ten(i32 %135, i32* %10)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i32, i32* @PG_SHIFT_JIS_2004, align 4
  %141 = load i8*, i8** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @report_invalid_encoding(i32 %140, i8* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %134
  %145 = load i32, i32* %7, align 4
  switch i32 %145, label %161 [
    i32 240, label %146
    i32 241, label %151
    i32 242, label %156
  ]

146:                                              ; preds = %144
  %147 = load i32, i32* %10, align 4
  %148 = icmp eq i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 8, i32 1
  store i32 %150, i32* %8, align 4
  br label %166

151:                                              ; preds = %144
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 4, i32 3
  store i32 %155, i32* %8, align 4
  br label %166

156:                                              ; preds = %144
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 12, i32 5
  store i32 %160, i32* %8, align 4
  br label %166

161:                                              ; preds = %144
  %162 = load i32, i32* %10, align 4
  %163 = icmp eq i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 14, i32 13
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %161, %156, %151, %146
  br label %203

167:                                              ; preds = %131, %128
  %168 = load i32, i32* %7, align 4
  %169 = icmp sge i32 %168, 244
  br i1 %169, label %170, label %197

170:                                              ; preds = %167
  %171 = load i32, i32* %7, align 4
  %172 = icmp sle i32 %171, 252
  br i1 %172, label %173, label %197

173:                                              ; preds = %170
  store i32 2, i32* %11, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @get_ten(i32 %174, i32* %10)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i32, i32* @PG_SHIFT_JIS_2004, align 4
  %180 = load i8*, i8** %4, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @report_invalid_encoding(i32 %179, i8* %180, i32 %181)
  br label %183

183:                                              ; preds = %178, %173
  %184 = load i32, i32* %7, align 4
  %185 = icmp eq i32 %184, 244
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i32, i32* %10, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i32 15, i32* %8, align 4
  br label %196

190:                                              ; preds = %186, %183
  %191 = load i32, i32* %7, align 4
  %192 = shl i32 %191, 1
  %193 = sub nsw i32 %192, 410
  %194 = load i32, i32* %10, align 4
  %195 = sub nsw i32 %193, %194
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %190, %189
  br label %202

197:                                              ; preds = %170, %167
  %198 = load i32, i32* @PG_SHIFT_JIS_2004, align 4
  %199 = load i8*, i8** %4, align 8
  %200 = load i32, i32* %6, align 4
  %201 = call i32 @report_invalid_encoding(i32 %198, i8* %199, i32 %200)
  br label %202

202:                                              ; preds = %197, %196
  br label %203

203:                                              ; preds = %202, %166
  br label %204

204:                                              ; preds = %203, %124
  br label %205

205:                                              ; preds = %204, %101
  %206 = load i32, i32* %11, align 4
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load i32, i32* @SS3, align 4
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %5, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %5, align 8
  store i8 %210, i8* %211, align 1
  br label %213

213:                                              ; preds = %208, %205
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 160
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %5, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %5, align 8
  store i8 %216, i8* %217, align 1
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 160
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %5, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %5, align 8
  store i8 %221, i8* %222, align 1
  br label %224

224:                                              ; preds = %213, %75
  br label %225

225:                                              ; preds = %224, %66
  %226 = load i32, i32* %12, align 4
  %227 = load i8*, i8** %4, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8* %229, i8** %4, align 8
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %6, align 4
  %232 = sub nsw i32 %231, %230
  store i32 %232, i32* %6, align 4
  br label %14

233:                                              ; preds = %14
  %234 = load i8*, i8** %5, align 8
  store i8 0, i8* %234, align 1
  ret void
}

declare dso_local i32 @IS_HIGHBIT_SET(i32) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @pg_encoding_verifymb(i32, i8*, i32) #1

declare dso_local i32 @get_ten(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
