; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_convert.c_mbfl_filt_conv_illegal_output.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_convert.c_mbfl_filt_conv_illegal_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, {}*, i32 }

@MBFL_WCSGROUP_UCS4MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"U+\00", align 1
@MBFL_WCSGROUP_WCHARMAX = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"JIS+\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"JIS2+\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"JIS3+\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"W932+\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"GB+\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"I8859_1+\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"?+\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"BAD+\00", align 1
@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@mbfl_hexchar_table = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"&#x\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c";\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_illegal_output(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 137
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 63
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32 63, i32* %28, align 4
  br label %32

29:                                               ; preds = %21, %2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 134, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %226 [
    i32 137, label %34
    i32 135, label %42
    i32 136, label %149
    i32 134, label %225
  ]

34:                                               ; preds = %32
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = bitcast {}** %36 to i32 (i32, %struct.TYPE_10__*)**
  %38 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = call i32 %38(i32 %39, %struct.TYPE_10__* %40)
  store i32 %41, i32* %7, align 4
  br label %227

42:                                               ; preds = %32
  %43 = load i32, i32* %3, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %148

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @MBFL_WCSGROUP_UCS4MAX, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = call i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %51, i32* %7, align 4
  br label %94

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @MBFL_WCSGROUP_WCHARMAX, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  switch i32 %61, label %80 [
    i32 131, label %62
    i32 130, label %65
    i32 129, label %68
    i32 128, label %71
    i32 132, label %74
    i32 133, label %77
  ]

62:                                               ; preds = %56
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = call i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %64, i32* %7, align 4
  br label %83

65:                                               ; preds = %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = call i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %67, i32* %7, align 4
  br label %83

68:                                               ; preds = %56
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = call i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %70, i32* %7, align 4
  br label %83

71:                                               ; preds = %56
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = call i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %73, i32* %7, align 4
  br label %83

74:                                               ; preds = %56
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = call i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %76, i32* %7, align 4
  br label %83

77:                                               ; preds = %56
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = call i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %79, i32* %7, align 4
  br label %83

80:                                               ; preds = %56
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = call i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %77, %74, %71, %68, %65, %62
  %84 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %85 = load i32, i32* %3, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %3, align 4
  br label %93

87:                                               ; preds = %52
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = call i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %91 = load i32, i32* %3, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %87, %83
  br label %94

94:                                               ; preds = %93, %49
  %95 = load i32, i32* %7, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %147

97:                                               ; preds = %94
  store i32 0, i32* %9, align 4
  store i32 28, i32* %10, align 4
  br label %98

98:                                               ; preds = %127, %97
  %99 = load i32, i32* %10, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %98
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %10, align 4
  %104 = ashr i32 %102, %103
  %105 = and i32 %104, 15
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %108, %101
  store i32 1, i32* %9, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = bitcast {}** %113 to i32 (i32, %struct.TYPE_10__*)**
  %115 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %114, align 8
  %116 = load i32*, i32** @mbfl_hexchar_table, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = call i32 %115(i32 %120, %struct.TYPE_10__* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  br label %130

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %126, %108
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 %128, 4
  store i32 %129, i32* %10, align 4
  br label %98

130:                                              ; preds = %125, %98
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %130
  %134 = load i32, i32* %7, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  %139 = bitcast {}** %138 to i32 (i32, %struct.TYPE_10__*)**
  %140 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %139, align 8
  %141 = load i32*, i32** @mbfl_hexchar_table, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = call i32 %140(i32 %143, %struct.TYPE_10__* %144)
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %136, %133, %130
  br label %147

147:                                              ; preds = %146, %94
  br label %148

148:                                              ; preds = %147, %42
  br label %227

149:                                              ; preds = %32
  %150 = load i32, i32* %3, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %224

152:                                              ; preds = %149
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @MBFL_WCSGROUP_UCS4MAX, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %215

156:                                              ; preds = %152
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = call i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %227

162:                                              ; preds = %156
  store i32 0, i32* %9, align 4
  store i32 28, i32* %10, align 4
  br label %163

163:                                              ; preds = %192, %162
  %164 = load i32, i32* %10, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %195

166:                                              ; preds = %163
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* %10, align 4
  %169 = ashr i32 %167, %168
  %170 = and i32 %169, 15
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %173, %166
  store i32 1, i32* %9, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = bitcast {}** %178 to i32 (i32, %struct.TYPE_10__*)**
  %180 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %179, align 8
  %181 = load i32*, i32** @mbfl_hexchar_table, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %187 = call i32 %180(i32 %185, %struct.TYPE_10__* %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %176
  br label %195

191:                                              ; preds = %176
  br label %192

192:                                              ; preds = %191, %173
  %193 = load i32, i32* %10, align 4
  %194 = sub nsw i32 %193, 4
  store i32 %194, i32* %10, align 4
  br label %163

195:                                              ; preds = %190, %163
  %196 = load i32, i32* %7, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  br label %227

199:                                              ; preds = %195
  %200 = load i32, i32* %9, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  %205 = bitcast {}** %204 to i32 (i32, %struct.TYPE_10__*)**
  %206 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %205, align 8
  %207 = load i32*, i32** @mbfl_hexchar_table, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %211 = call i32 %206(i32 %209, %struct.TYPE_10__* %210)
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %202, %199
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %214 = call i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__* %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 %214, i32* %7, align 4
  br label %223

215:                                              ; preds = %152
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 2
  %218 = bitcast {}** %217 to i32 (i32, %struct.TYPE_10__*)**
  %219 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %222 = call i32 %219(i32 %220, %struct.TYPE_10__* %221)
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %215, %212
  br label %224

224:                                              ; preds = %223, %149
  br label %227

225:                                              ; preds = %32
  br label %226

226:                                              ; preds = %32, %225
  br label %227

227:                                              ; preds = %226, %224, %198, %161, %148, %34
  %228 = load i32, i32* %5, align 4
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* %6, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 8
  %238 = load i32, i32* %7, align 4
  ret i32 %238
}

declare dso_local i32 @mbfl_convert_filter_strcat(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
