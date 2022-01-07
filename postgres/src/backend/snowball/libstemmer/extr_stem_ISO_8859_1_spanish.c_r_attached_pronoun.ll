; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_spanish.c_r_attached_pronoun.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_spanish.c_r_attached_pronoun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_1 = common dso_local global i32 0, align 4
@a_2 = common dso_local global i32 0, align 4
@s_5 = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@s_8 = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_attached_pronoun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_attached_pronoun(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %13 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %14 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %21, %24
  br i1 %25, label %54, label %26

26:                                               ; preds = %1
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 5
  %38 = icmp ne i32 %37, 3
  br i1 %38, label %54, label %39

39:                                               ; preds = %26
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 31
  %51 = ashr i32 557090, %50
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %39, %26, %1
  store i32 0, i32* %2, align 4
  br label %228

55:                                               ; preds = %39
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = load i32, i32* @a_1, align 4
  %58 = call i32 @find_among_b(%struct.SN_env* %56, i32 %57, i32 13)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %228

61:                                               ; preds = %55
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp sle i32 %70, %73
  br i1 %74, label %99, label %75

75:                                               ; preds = %61
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 111
  br i1 %86, label %87, label %100

87:                                               ; preds = %75
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 114
  br i1 %98, label %99, label %100

99:                                               ; preds = %87, %61
  store i32 0, i32* %2, align 4
  br label %228

100:                                              ; preds = %87, %75
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = load i32, i32* @a_2, align 4
  %103 = call i32 @find_among_b(%struct.SN_env* %101, i32 %102, i32 11)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %228

107:                                              ; preds = %100
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = call i32 @r_RV(%struct.SN_env* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %228

114:                                              ; preds = %107
  %115 = load i32, i32* %4, align 4
  switch i32 %115, label %227 [
    i32 1, label %116
    i32 2, label %130
    i32 3, label %144
    i32 4, label %158
    i32 5, label %172
    i32 6, label %186
    i32 7, label %194
  ]

116:                                              ; preds = %114
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %123 = load i32, i32* @s_5, align 4
  %124 = call i32 @slice_from_s(%struct.SN_env* %122, i32 5, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %116
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %228

129:                                              ; preds = %116
  br label %227

130:                                              ; preds = %114
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = load i32, i32* @s_6, align 4
  %138 = call i32 @slice_from_s(%struct.SN_env* %136, i32 4, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %130
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %2, align 4
  br label %228

143:                                              ; preds = %130
  br label %227

144:                                              ; preds = %114
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = load i32, i32* @s_7, align 4
  %152 = call i32 @slice_from_s(%struct.SN_env* %150, i32 2, i32 %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %144
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %2, align 4
  br label %228

157:                                              ; preds = %144
  br label %227

158:                                              ; preds = %114
  %159 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = load i32, i32* @s_8, align 4
  %166 = call i32 @slice_from_s(%struct.SN_env* %164, i32 2, i32 %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %158
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %2, align 4
  br label %228

171:                                              ; preds = %158
  br label %227

172:                                              ; preds = %114
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = load i32, i32* @s_9, align 4
  %180 = call i32 @slice_from_s(%struct.SN_env* %178, i32 2, i32 %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %172
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %2, align 4
  br label %228

185:                                              ; preds = %172
  br label %227

186:                                              ; preds = %114
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = call i32 @slice_del(%struct.SN_env* %187)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* %11, align 4
  store i32 %192, i32* %2, align 4
  br label %228

193:                                              ; preds = %186
  br label %227

194:                                              ; preds = %114
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %199 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp sle i32 %197, %200
  br i1 %201, label %214, label %202

202:                                              ; preds = %194
  %203 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %204 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %207 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %205, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 117
  br i1 %213, label %214, label %215

214:                                              ; preds = %202, %194
  store i32 0, i32* %2, align 4
  br label %228

215:                                              ; preds = %202
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %217, align 4
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = call i32 @slice_del(%struct.SN_env* %220)
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %215
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %2, align 4
  br label %228

226:                                              ; preds = %215
  br label %227

227:                                              ; preds = %114, %226, %193, %185, %171, %157, %143, %129
  store i32 1, i32* %2, align 4
  br label %228

228:                                              ; preds = %227, %224, %214, %191, %183, %169, %155, %141, %127, %112, %106, %99, %60, %54
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_RV(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
