; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_italian.c_italian_UTF_8_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_italian.c_italian_UTF_8_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @italian_UTF_8_stem(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = call i32 @r_prelude(%struct.SN_env* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %31

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %189

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = call i32 @r_mark_regions(%struct.SN_env* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %46

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %189

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %39
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = call i32 @r_attached_pronoun(%struct.SN_env* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %46
  br label %76

70:                                               ; preds = %46
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %189

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %69
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %86, %89
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %94, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = call i32 @r_standard_suffix(%struct.SN_env* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %76
  br label %111

105:                                              ; preds = %76
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %2, align 4
  br label %189

110:                                              ; preds = %105
  br label %130

111:                                              ; preds = %104
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = call i32 @r_verb_suffix(%struct.SN_env* %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %131

124:                                              ; preds = %111
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %2, align 4
  br label %189

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %110
  br label %131

131:                                              ; preds = %130, %123
  %132 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %133 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %9, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %141, %144
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = call i32 @r_vowel_suffix(%struct.SN_env* %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %131
  br label %158

152:                                              ; preds = %131
  %153 = load i32, i32* %14, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %14, align 4
  store i32 %156, i32* %2, align 4
  br label %189

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %151
  %159 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %13, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %170 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %15, align 4
  %174 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %175 = call i32 @r_postlude(%struct.SN_env* %174)
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %158
  br label %185

179:                                              ; preds = %158
  %180 = load i32, i32* %16, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i32, i32* %16, align 4
  store i32 %183, i32* %2, align 4
  br label %189

184:                                              ; preds = %179
  br label %185

185:                                              ; preds = %184, %178
  %186 = load i32, i32* %15, align 4
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 4
  store i32 1, i32* %2, align 4
  br label %189

189:                                              ; preds = %185, %182, %155, %127, %108, %73, %43, %28
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @r_prelude(%struct.SN_env*) #1

declare dso_local i32 @r_mark_regions(%struct.SN_env*) #1

declare dso_local i32 @r_attached_pronoun(%struct.SN_env*) #1

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
