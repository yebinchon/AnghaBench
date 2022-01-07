; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_spanish.c_spanish_ISO_8859_1_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_spanish.c_spanish_ISO_8859_1_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spanish_ISO_8859_1_stem(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %16 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %17 = call i32 @r_mark_regions(%struct.SN_env* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %27

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %189

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %20
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = call i32 @r_attached_pronoun(%struct.SN_env* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %27
  br label %57

51:                                               ; preds = %27
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %189

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %50
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = call i32 @r_standard_suffix(%struct.SN_env* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %57
  br label %92

86:                                               ; preds = %57
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %189

91:                                               ; preds = %86
  br label %130

92:                                               ; preds = %85
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = call i32 @r_y_verb_suffix(%struct.SN_env* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %111

105:                                              ; preds = %92
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %2, align 4
  br label %189

110:                                              ; preds = %105
  br label %130

111:                                              ; preds = %104
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = call i32 @r_verb_suffix(%struct.SN_env* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %131

124:                                              ; preds = %111
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %2, align 4
  br label %189

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %110, %91
  br label %131

131:                                              ; preds = %130, %123
  %132 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %133 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %141, %144
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = call i32 @r_residual_suffix(%struct.SN_env* %147)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %131
  br label %158

152:                                              ; preds = %131
  %153 = load i32, i32* %13, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %2, align 4
  br label %189

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %151
  %159 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %12, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %170 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %14, align 4
  %174 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %175 = call i32 @r_postlude(%struct.SN_env* %174)
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %158
  br label %185

179:                                              ; preds = %158
  %180 = load i32, i32* %15, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i32, i32* %15, align 4
  store i32 %183, i32* %2, align 4
  br label %189

184:                                              ; preds = %179
  br label %185

185:                                              ; preds = %184, %178
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  store i32 1, i32* %2, align 4
  br label %189

189:                                              ; preds = %185, %182, %155, %127, %108, %89, %54, %24
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @r_mark_regions(%struct.SN_env*) #1

declare dso_local i32 @r_attached_pronoun(%struct.SN_env*) #1

declare dso_local i32 @r_standard_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_y_verb_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_verb_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_residual_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_postlude(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
