; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_tamil.c_tamil_UTF_8_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_tamil.c_tamil_UTF_8_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tamil_UTF_8_stem(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %30 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = call i32 @r_fix_ending(%struct.SN_env* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %43

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %216

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = call i32 @r_has_min_length(%struct.SN_env* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %216

53:                                               ; preds = %43
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %7, align 4
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = call i32 @r_remove_question_prefixes(%struct.SN_env* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %68

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %216

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %9, align 4
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = call i32 @r_remove_pronoun_prefixes(%struct.SN_env* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %86

80:                                               ; preds = %68
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %2, align 4
  br label %216

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %11, align 4
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = call i32 @r_remove_question_suffixes(%struct.SN_env* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %104

98:                                               ; preds = %86
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %2, align 4
  br label %216

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %97
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %13, align 4
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = call i32 @r_remove_um(%struct.SN_env* %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %122

116:                                              ; preds = %104
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %2, align 4
  br label %216

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %115
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %15, align 4
  %129 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %130 = call i32 @r_remove_common_word_endings(%struct.SN_env* %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  br label %140

134:                                              ; preds = %122
  %135 = load i32, i32* %16, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %2, align 4
  br label %216

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %133
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %17, align 4
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = call i32 @r_remove_vetrumai_urupukal(%struct.SN_env* %147)
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %158

152:                                              ; preds = %140
  %153 = load i32, i32* %18, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %18, align 4
  store i32 %156, i32* %2, align 4
  br label %216

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %151
  %159 = load i32, i32* %17, align 4
  %160 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %161 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %19, align 4
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = call i32 @r_remove_plural_suffix(%struct.SN_env* %165)
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %158
  br label %176

170:                                              ; preds = %158
  %171 = load i32, i32* %20, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* %20, align 4
  store i32 %174, i32* %2, align 4
  br label %216

175:                                              ; preds = %170
  br label %176

176:                                              ; preds = %175, %169
  %177 = load i32, i32* %19, align 4
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %181 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %21, align 4
  %183 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %184 = call i32 @r_remove_command_suffixes(%struct.SN_env* %183)
  store i32 %184, i32* %22, align 4
  %185 = load i32, i32* %22, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %176
  br label %194

188:                                              ; preds = %176
  %189 = load i32, i32* %22, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i32, i32* %22, align 4
  store i32 %192, i32* %2, align 4
  br label %216

193:                                              ; preds = %188
  br label %194

194:                                              ; preds = %193, %187
  %195 = load i32, i32* %21, align 4
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %199 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %23, align 4
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = call i32 @r_remove_tense_suffixes(%struct.SN_env* %201)
  store i32 %202, i32* %24, align 4
  %203 = load i32, i32* %24, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %194
  br label %212

206:                                              ; preds = %194
  %207 = load i32, i32* %24, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* %24, align 4
  store i32 %210, i32* %2, align 4
  br label %216

211:                                              ; preds = %206
  br label %212

212:                                              ; preds = %211, %205
  %213 = load i32, i32* %23, align 4
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  store i32 1, i32* %2, align 4
  br label %216

216:                                              ; preds = %212, %209, %191, %173, %155, %137, %119, %101, %83, %65, %51, %40
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @r_fix_ending(%struct.SN_env*) #1

declare dso_local i32 @r_has_min_length(%struct.SN_env*) #1

declare dso_local i32 @r_remove_question_prefixes(%struct.SN_env*) #1

declare dso_local i32 @r_remove_pronoun_prefixes(%struct.SN_env*) #1

declare dso_local i32 @r_remove_question_suffixes(%struct.SN_env*) #1

declare dso_local i32 @r_remove_um(%struct.SN_env*) #1

declare dso_local i32 @r_remove_common_word_endings(%struct.SN_env*) #1

declare dso_local i32 @r_remove_vetrumai_urupukal(%struct.SN_env*) #1

declare dso_local i32 @r_remove_plural_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_remove_command_suffixes(%struct.SN_env*) #1

declare dso_local i32 @r_remove_tense_suffixes(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
