; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_steps5.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_steps5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32, i32*, i64*, i64* }

@a_14 = common dso_local global i32 0, align 4
@a_12 = common dso_local global i32 0, align 4
@s_43 = common dso_local global i32 0, align 4
@a_13 = common dso_local global i32 0, align 4
@s_44 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_steps5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_steps5(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = load i32, i32* @a_14, align 4
  %19 = call i32 @find_among_b(%struct.SN_env* %17, i32 %18, i32 11)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %244

22:                                               ; preds = %1
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = call i32 @slice_del(%struct.SN_env* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %244

34:                                               ; preds = %22
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 7
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 3
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %84, label %60

60:                                               ; preds = %34
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 181
  br i1 %71, label %72, label %85

72:                                               ; preds = %60
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 191
  br i1 %83, label %84, label %85

84:                                               ; preds = %72, %34
  br label %158

85:                                               ; preds = %72, %60
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = load i32, i32* @a_12, align 4
  %88 = call i32 @find_among_b(%struct.SN_env* %86, i32 %87, i32 7)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %158

91:                                               ; preds = %85
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %158

105:                                              ; preds = %91
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %107, i32 0, i32 6
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = call i8* @slice_to(%struct.SN_env* %106, i64 %111)
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %114, i32 0, i32 6
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  store i64 %113, i64* %117, align 8
  %118 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %119 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %118, i32 0, i32 6
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %105
  store i32 -1, i32* %2, align 4
  br label %244

125:                                              ; preds = %105
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = load i32, i32* @s_43, align 4
  %128 = call i32 @slice_from_s(%struct.SN_env* %126, i32 2, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %244

133:                                              ; preds = %125
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %8, align 4
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %142 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %144, i32 0, i32 6
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @insert_v(%struct.SN_env* %137, i32 %140, i32 %143, i64 %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %152 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %133
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %244

157:                                              ; preds = %133
  br label %243

158:                                              ; preds = %104, %90, %84
  %159 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %5, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %170 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = load i32, i32* @a_13, align 4
  %173 = call i32 @find_among_b(%struct.SN_env* %171, i32 %172, i32 33)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %244

176:                                              ; preds = %158
  %177 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %178 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %181 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %186 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = icmp sgt i32 %184, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %176
  store i32 0, i32* %2, align 4
  br label %244

190:                                              ; preds = %176
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %193 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %192, i32 0, i32 6
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  %196 = load i64, i64* %195, align 8
  %197 = call i8* @slice_to(%struct.SN_env* %191, i64 %196)
  %198 = ptrtoint i8* %197 to i64
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 6
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  store i64 %198, i64* %202, align 8
  %203 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %204 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %203, i32 0, i32 6
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %190
  store i32 -1, i32* %2, align 4
  br label %244

210:                                              ; preds = %190
  %211 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %212 = load i32, i32* @s_44, align 4
  %213 = call i32 @slice_from_s(%struct.SN_env* %211, i32 6, i32 %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %2, align 4
  br label %244

218:                                              ; preds = %210
  %219 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %220 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %11, align 4
  %222 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %229, i32 0, i32 6
  %231 = load i64*, i64** %230, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 0
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @insert_v(%struct.SN_env* %222, i32 %225, i32 %228, i64 %233)
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* %11, align 4
  %236 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %237 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %218
  %241 = load i32, i32* %10, align 4
  store i32 %241, i32* %2, align 4
  br label %244

242:                                              ; preds = %218
  br label %243

243:                                              ; preds = %242, %157
  store i32 1, i32* %2, align 4
  br label %244

244:                                              ; preds = %243, %240, %216, %209, %189, %175, %155, %131, %124, %32, %21
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i8* @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @insert_v(%struct.SN_env*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
