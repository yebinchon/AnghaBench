; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_romanian.c_romanian_UTF_8_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_romanian.c_romanian_UTF_8_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @romanian_UTF_8_stem(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = call i32 @r_prelude(%struct.SN_env* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %32

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %214

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = call i32 @r_mark_regions(%struct.SN_env* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %47

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %214

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = call i32 @r_step_0(%struct.SN_env* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %47
  br label %77

71:                                               ; preds = %47
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %214

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %70
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %86 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %87, %90
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = call i32 @r_standard_suffix(%struct.SN_env* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %77
  br label %104

98:                                               ; preds = %77
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %2, align 4
  br label %214

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %97
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %114, %117
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %124 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %122, %125
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %104
  br label %136

135:                                              ; preds = %104
  br label %155

136:                                              ; preds = %134
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = call i32 @r_verb_suffix(%struct.SN_env* %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  br label %156

149:                                              ; preds = %136
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %2, align 4
  br label %214

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154, %135
  br label %156

156:                                              ; preds = %155, %148
  %157 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %158 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %166, %169
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %173 = call i32 @r_vowel_suffix(%struct.SN_env* %172)
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %156
  br label %183

177:                                              ; preds = %156
  %178 = load i32, i32* %15, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load i32, i32* %15, align 4
  store i32 %181, i32* %2, align 4
  br label %214

182:                                              ; preds = %177
  br label %183

183:                                              ; preds = %182, %176
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  store i32 %198, i32* %16, align 4
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = call i32 @r_postlude(%struct.SN_env* %199)
  store i32 %200, i32* %17, align 4
  %201 = load i32, i32* %17, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %183
  br label %210

204:                                              ; preds = %183
  %205 = load i32, i32* %17, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i32, i32* %17, align 4
  store i32 %208, i32* %2, align 4
  br label %214

209:                                              ; preds = %204
  br label %210

210:                                              ; preds = %209, %203
  %211 = load i32, i32* %16, align 4
  %212 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %213 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  store i32 1, i32* %2, align 4
  br label %214

214:                                              ; preds = %210, %207, %180, %152, %101, %74, %44, %29
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @r_prelude(%struct.SN_env*) #1

declare dso_local i32 @r_mark_regions(%struct.SN_env*) #1

declare dso_local i32 @r_step_0(%struct.SN_env*) #1

declare dso_local i32 @r_standard_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_verb_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_vowel_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_postlude(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
