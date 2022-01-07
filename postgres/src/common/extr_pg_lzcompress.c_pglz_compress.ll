; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_pg_lzcompress.c_pglz_compress.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_pg_lzcompress.c_pglz_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32 }

@PGLZ_strategy_default = common dso_local global %struct.TYPE_4__* null, align 8
@PGLZ_MAX_MATCH = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@hist_start = common dso_local global i32 0, align 4
@hist_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pglz_compress(i8* %0, i32 %1, i8* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  store i8* %31, i8** %11, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** %15, align 8
  store i8 0, i8* %16, align 1
  store i8* %16, i8** %17, align 8
  store i8 0, i8* %18, align 1
  store i8 0, i8* %19, align 1
  store i32 0, i32* %20, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = icmp eq %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PGLZ_strategy_default, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %9, align 8
  br label %41

41:                                               ; preds = %39, %4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %46, %41
  store i32 -1, i32* %5, align 4
  br label %240

59:                                               ; preds = %52
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %23, align 4
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* @PGLZ_MAX_MATCH, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @PGLZ_MAX_MATCH, align 4
  store i32 %68, i32* %23, align 4
  br label %74

69:                                               ; preds = %59
  %70 = load i32, i32* %23, align 4
  %71 = icmp slt i32 %70, 17
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 17, i32* %23, align 4
  br label %73

73:                                               ; preds = %72, %69
  br label %74

74:                                               ; preds = %73, %67
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %24, align 4
  %78 = load i32, i32* %24, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %24, align 4
  br label %86

81:                                               ; preds = %74
  %82 = load i32, i32* %24, align 4
  %83 = icmp sgt i32 %82, 100
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 100, i32* %24, align 4
  br label %85

85:                                               ; preds = %84, %81
  br label %86

86:                                               ; preds = %85, %80
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %27, align 4
  %90 = load i32, i32* %27, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %27, align 4
  br label %98

93:                                               ; preds = %86
  %94 = load i32, i32* %27, align 4
  %95 = icmp sgt i32 %94, 99
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 99, i32* %27, align 4
  br label %97

97:                                               ; preds = %96, %93
  br label %98

98:                                               ; preds = %97, %92
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @INT_MAX, align 4
  %101 = sdiv i32 %100, 100
  %102 = icmp sgt i32 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  %105 = sdiv i32 %104, 100
  %106 = load i32, i32* %27, align 4
  %107 = sub nsw i32 100, %106
  %108 = mul nsw i32 %105, %107
  store i32 %108, i32* %26, align 4
  br label %115

109:                                              ; preds = %98
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %27, align 4
  %112 = sub nsw i32 100, %111
  %113 = mul nsw i32 %110, %112
  %114 = sdiv i32 %113, 100
  store i32 %114, i32* %26, align 4
  br label %115

115:                                              ; preds = %109, %103
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 128
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 512, i32* %28, align 4
  br label %135

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 256
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 1024, i32* %28, align 4
  br label %134

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %124, 512
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 2048, i32* %28, align 4
  br label %133

127:                                              ; preds = %123
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 1024
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 4096, i32* %28, align 4
  br label %132

131:                                              ; preds = %127
  store i32 8192, i32* %28, align 4
  br label %132

132:                                              ; preds = %131, %130
  br label %133

133:                                              ; preds = %132, %126
  br label %134

134:                                              ; preds = %133, %122
  br label %135

135:                                              ; preds = %134, %118
  %136 = load i32, i32* %28, align 4
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %29, align 4
  %138 = load i32, i32* @hist_start, align 4
  %139 = load i32, i32* %28, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = trunc i64 %141 to i32
  %143 = call i32 @memset(i32 %138, i32 0, i32 %142)
  br label %144

144:                                              ; preds = %224, %135
  %145 = load i8*, i8** %14, align 8
  %146 = load i8*, i8** %15, align 8
  %147 = icmp ult i8* %145, %146
  br i1 %147, label %148, label %225

148:                                              ; preds = %144
  %149 = load i8*, i8** %10, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = load i32, i32* %26, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp sge i64 %153, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  store i32 -1, i32* %5, align 4
  br label %240

158:                                              ; preds = %148
  %159 = load i32, i32* %20, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %173, label %161

161:                                              ; preds = %158
  %162 = load i8*, i8** %10, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = ptrtoint i8* %162 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = icmp sge i64 %166, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  store i32 -1, i32* %5, align 4
  br label %240

173:                                              ; preds = %161, %158
  %174 = load i32, i32* @hist_start, align 4
  %175 = load i8*, i8** %14, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = load i32, i32* %23, align 4
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %29, align 4
  %180 = call i64 @pglz_find_match(i32 %174, i8* %175, i8* %176, i32* %21, i32* %22, i32 %177, i32 %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %206

182:                                              ; preds = %173
  %183 = load i8*, i8** %17, align 8
  %184 = load i8, i8* %18, align 1
  %185 = load i8, i8* %19, align 1
  %186 = load i8*, i8** %10, align 8
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* %22, align 4
  %189 = call i32 @pglz_out_tag(i8* %183, i8 zeroext %184, i8 zeroext %185, i8* %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %194, %182
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %21, align 4
  %193 = icmp ne i32 %191, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %190
  %195 = load i32, i32* @hist_start, align 4
  %196 = load i32, i32* @hist_entries, align 4
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load i8*, i8** %14, align 8
  %200 = load i8*, i8** %15, align 8
  %201 = load i32, i32* %29, align 4
  %202 = call i32 @pglz_hist_add(i32 %195, i32 %196, i32 %197, i32 %198, i8* %199, i8* %200, i32 %201)
  %203 = load i8*, i8** %14, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %14, align 8
  br label %190

205:                                              ; preds = %190
  store i32 1, i32* %20, align 4
  br label %224

206:                                              ; preds = %173
  %207 = load i8*, i8** %17, align 8
  %208 = load i8, i8* %18, align 1
  %209 = load i8, i8* %19, align 1
  %210 = load i8*, i8** %10, align 8
  %211 = load i8*, i8** %14, align 8
  %212 = load i8, i8* %211, align 1
  %213 = call i32 @pglz_out_literal(i8* %207, i8 zeroext %208, i8 zeroext %209, i8* %210, i8 signext %212)
  %214 = load i32, i32* @hist_start, align 4
  %215 = load i32, i32* @hist_entries, align 4
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %13, align 4
  %218 = load i8*, i8** %14, align 8
  %219 = load i8*, i8** %15, align 8
  %220 = load i32, i32* %29, align 4
  %221 = call i32 @pglz_hist_add(i32 %214, i32 %215, i32 %216, i32 %217, i8* %218, i8* %219, i32 %220)
  %222 = load i8*, i8** %14, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %14, align 8
  br label %224

224:                                              ; preds = %206, %205
  br label %144

225:                                              ; preds = %144
  %226 = load i8, i8* %18, align 1
  %227 = load i8*, i8** %17, align 8
  store i8 %226, i8* %227, align 1
  %228 = load i8*, i8** %10, align 8
  %229 = load i8*, i8** %11, align 8
  %230 = ptrtoint i8* %228 to i64
  %231 = ptrtoint i8* %229 to i64
  %232 = sub i64 %230, %231
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %25, align 4
  %234 = load i32, i32* %25, align 4
  %235 = load i32, i32* %26, align 4
  %236 = icmp sge i32 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %225
  store i32 -1, i32* %5, align 4
  br label %240

238:                                              ; preds = %225
  %239 = load i32, i32* %25, align 4
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %238, %237, %172, %157, %58
  %241 = load i32, i32* %5, align 4
  ret i32 %241
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @pglz_find_match(i32, i8*, i8*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @pglz_out_tag(i8*, i8 zeroext, i8 zeroext, i8*, i32, i32) #1

declare dso_local i32 @pglz_hist_add(i32, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @pglz_out_literal(i8*, i8 zeroext, i8 zeroext, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
