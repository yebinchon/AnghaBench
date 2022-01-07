; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Normalize_post.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Normalize_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32*, i32 }

@a_1 = common dso_local global i32 0, align 4
@s_50 = common dso_local global i32 0, align 4
@a_2 = common dso_local global i32 0, align 4
@s_51 = common dso_local global i32 0, align 4
@s_52 = common dso_local global i32 0, align 4
@s_53 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Normalize_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Normalize_post(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %14 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %15 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %35, %38
  br i1 %39, label %68, label %40

40:                                               ; preds = %1
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 5
  %52 = icmp ne i32 %51, 5
  br i1 %52, label %68, label %53

53:                                               ; preds = %40
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 31
  %65 = ashr i32 124, %64
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %53, %40, %1
  br label %94

69:                                               ; preds = %53
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = load i32, i32* @a_1, align 4
  %72 = call i32 @find_among_b(%struct.SN_env* %70, i32 %71, i32 5)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %94

75:                                               ; preds = %69
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = load i32, i32* @s_50, align 4
  %83 = call i32 @slice_from_s(%struct.SN_env* %81, i32 2, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %222

88:                                               ; preds = %75
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %88, %74, %68
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %94, %213
  %102 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %103 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %8, align 4
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %9, align 4
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %116, %119
  br i1 %120, label %149, label %121

121:                                              ; preds = %101
  %122 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %123 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %124, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 5
  %133 = icmp ne i32 %132, 5
  br i1 %133, label %149, label %134

134:                                              ; preds = %121
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 31
  %146 = ashr i32 124, %145
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %134, %121, %101
  br label %192

150:                                              ; preds = %134
  %151 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %152 = load i32, i32* @a_2, align 4
  %153 = call i32 @find_among(%struct.SN_env* %151, i32 %152, i32 5)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %150
  br label %192

157:                                              ; preds = %150
  %158 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %159 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %4, align 4
  switch i32 %163, label %191 [
    i32 1, label %164
    i32 2, label %173
    i32 3, label %182
  ]

164:                                              ; preds = %157
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = load i32, i32* @s_51, align 4
  %167 = call i32 @slice_from_s(%struct.SN_env* %165, i32 2, i32 %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %2, align 4
  br label %222

172:                                              ; preds = %164
  br label %191

173:                                              ; preds = %157
  %174 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %175 = load i32, i32* @s_52, align 4
  %176 = call i32 @slice_from_s(%struct.SN_env* %174, i32 2, i32 %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %2, align 4
  br label %222

181:                                              ; preds = %173
  br label %191

182:                                              ; preds = %157
  %183 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %184 = load i32, i32* @s_53, align 4
  %185 = call i32 @slice_from_s(%struct.SN_env* %183, i32 2, i32 %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %2, align 4
  br label %222

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %157, %190, %181, %172
  br label %213

192:                                              ; preds = %156, %149
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 4
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %203 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @skip_utf8(i32* %198, i32 %201, i32 0, i32 %204, i32 1)
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %192
  br label %214

209:                                              ; preds = %192
  %210 = load i32, i32* %13, align 4
  %211 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %212 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  br label %213

213:                                              ; preds = %209, %191
  br label %101

214:                                              ; preds = %208
  %215 = load i32, i32* %8, align 4
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %7, align 4
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  store i32 1, i32* %2, align 4
  br label %222

222:                                              ; preds = %218, %188, %179, %170, %86
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @skip_utf8(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
