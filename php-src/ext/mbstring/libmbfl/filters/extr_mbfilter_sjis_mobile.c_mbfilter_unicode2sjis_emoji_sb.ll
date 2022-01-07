; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_unicode2sjis_emoji_sb.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_unicode2sjis_emoji_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@nflags_s = common dso_local global i32** null, align 8
@nflags_code_sb = common dso_local global i32* null, align 8
@ucs_a1_jis_table_min = common dso_local global i32 0, align 4
@ucs_a1_jis_table_max = common dso_local global i32 0, align 4
@ucs_a1_jis_table = common dso_local global i32* null, align 8
@mb_tbl_uni_sb2code2_min = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code2_max = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code2_key = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code2_len = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code2_value = common dso_local global i32* null, align 8
@mb_tbl_uni_sb2code3_min = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code3_max = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code3_key = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code3_len = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code3_value = common dso_local global i32* null, align 8
@mb_tbl_uni_sb2code5_min = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code5_max = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code5_key = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code5_len = common dso_local global i32 0, align 4
@mb_tbl_uni_sb2code5_val = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfilter_unicode2sjis_emoji_sb(i32 %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %131

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 8419
  br i1 %24, label %25, label %49

25:                                               ; preds = %15
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  store i32 10263, i32* %29, align 4
  store i32 1, i32* %9, align 4
  br label %48

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 48
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  store i32 10284, i32* %34, align 4
  store i32 1, i32* %9, align 4
  br label %47

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp sge i32 %36, 49
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp sle i32 %39, 57
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 49
  %44 = add nsw i32 10275, %43
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %41, %38, %35
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %47, %28
  br label %130

49:                                               ; preds = %15
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @NFLAGS(i32 65)
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %103

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @NFLAGS(i32 90)
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %103

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @NFLAGS(i32 65)
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %103

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @NFLAGS(i32 90)
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %99, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 10
  br i1 %68, label %69, label %102

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = load i32**, i32*** @nflags_s, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @NFLAGS(i32 %77)
  %79 = icmp eq i32 %70, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %69
  %81 = load i32, i32* %5, align 4
  %82 = load i32**, i32*** @nflags_s, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @NFLAGS(i32 %88)
  %90 = icmp eq i32 %81, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load i32*, i32** @nflags_code_sb, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  store i32 1, i32* %9, align 4
  br label %102

98:                                               ; preds = %80, %69
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %66

102:                                              ; preds = %91, %66
  br label %129

103:                                              ; preds = %61, %57, %53, %49
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = load i32*, i32** @ucs_a1_jis_table, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %10, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i32 (i32, i32)*, i32 (i32, i32)** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 %121(i32 %122, i32 %125)
  %127 = call i32 @CK(i32 %126)
  br label %128

128:                                              ; preds = %111, %107, %103
  br label %129

129:                                              ; preds = %128, %102
  br label %130

130:                                              ; preds = %129, %48
  br label %242

131:                                              ; preds = %3
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, 35
  br i1 %133, label %148, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %5, align 4
  %136 = icmp sge i32 %135, 48
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = icmp sle i32 %138, 57
  br i1 %139, label %148, label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @NFLAGS(i32 65)
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %156

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @NFLAGS(i32 90)
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %144, %137, %131
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32*, i32** %6, align 8
  store i32 -1, i32* %154, align 4
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %4, align 4
  br label %244

156:                                              ; preds = %144, %140
  %157 = load i32, i32* %5, align 4
  %158 = icmp eq i32 %157, 169
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32*, i32** %6, align 8
  store i32 10325, i32* %160, align 4
  store i32 1, i32* %9, align 4
  br label %241

161:                                              ; preds = %156
  %162 = load i32, i32* %5, align 4
  %163 = icmp eq i32 %162, 174
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32*, i32** %6, align 8
  store i32 10326, i32* %165, align 4
  store i32 1, i32* %9, align 4
  br label %240

166:                                              ; preds = %161
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @mb_tbl_uni_sb2code2_min, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %166
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @mb_tbl_uni_sb2code2_max, align 4
  %173 = icmp sle i32 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @mb_tbl_uni_sb2code2_key, align 4
  %177 = load i32, i32* @mb_tbl_uni_sb2code2_len, align 4
  %178 = call i32 @mbfl_bisec_srch2(i32 %175, i32 %176, i32 %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %174
  %182 = load i32*, i32** @mb_tbl_uni_sb2code2_value, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %6, align 8
  store i32 %186, i32* %187, align 4
  store i32 1, i32* %9, align 4
  br label %188

188:                                              ; preds = %181, %174
  br label %239

189:                                              ; preds = %170, %166
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @mb_tbl_uni_sb2code3_min, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %189
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @mb_tbl_uni_sb2code3_max, align 4
  %196 = icmp sle i32 %194, %195
  br i1 %196, label %197, label %213

197:                                              ; preds = %193
  %198 = load i32, i32* %5, align 4
  %199 = sub nsw i32 %198, 65536
  %200 = load i32, i32* @mb_tbl_uni_sb2code3_key, align 4
  %201 = load i32, i32* @mb_tbl_uni_sb2code3_len, align 4
  %202 = call i32 @mbfl_bisec_srch2(i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %197
  %206 = load i32*, i32** @mb_tbl_uni_sb2code3_value, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %6, align 8
  store i32 %210, i32* %211, align 4
  store i32 1, i32* %9, align 4
  br label %212

212:                                              ; preds = %205, %197
  br label %238

213:                                              ; preds = %193, %189
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @mb_tbl_uni_sb2code5_min, align 4
  %216 = icmp sge i32 %214, %215
  br i1 %216, label %217, label %237

217:                                              ; preds = %213
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* @mb_tbl_uni_sb2code5_max, align 4
  %220 = icmp sle i32 %218, %219
  br i1 %220, label %221, label %237

221:                                              ; preds = %217
  %222 = load i32, i32* %5, align 4
  %223 = sub nsw i32 %222, 983040
  %224 = load i32, i32* @mb_tbl_uni_sb2code5_key, align 4
  %225 = load i32, i32* @mb_tbl_uni_sb2code5_len, align 4
  %226 = call i32 @mbfl_bisec_srch2(i32 %223, i32 %224, i32 %225)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp sge i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %221
  %230 = load i32*, i32** @mb_tbl_uni_sb2code5_val, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %6, align 8
  store i32 %234, i32* %235, align 4
  store i32 1, i32* %9, align 4
  br label %236

236:                                              ; preds = %229, %221
  br label %237

237:                                              ; preds = %236, %217, %213
  br label %238

238:                                              ; preds = %237, %212
  br label %239

239:                                              ; preds = %238, %188
  br label %240

240:                                              ; preds = %239, %164
  br label %241

241:                                              ; preds = %240, %159
  br label %242

242:                                              ; preds = %241, %130
  %243 = load i32, i32* %9, align 4
  store i32 %243, i32* %4, align 4
  br label %244

244:                                              ; preds = %242, %148
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i32 @NFLAGS(i32) #1

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_bisec_srch2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
