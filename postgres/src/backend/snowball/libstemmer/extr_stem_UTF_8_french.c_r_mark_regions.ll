; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_french.c_r_mark_regions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_french.c_r_mark_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32, i32* }

@g_v = common dso_local global i32 0, align 4
@a_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_mark_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_mark_regions(%struct.SN_env* %0) #0 {
  %2 = alloca %struct.SN_env*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %2, align 8
  %13 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %14 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %29, i32* %33, align 4
  %34 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  %37 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  %40 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %41 = load i32, i32* @g_v, align 4
  %42 = call i32 @in_grouping_U(%struct.SN_env* %40, i32 %41, i32 97, i32 251, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %69

45:                                               ; preds = %1
  %46 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %47 = load i32, i32* @g_v, align 4
  %48 = call i32 @in_grouping_U(%struct.SN_env* %46, i32 %47, i32 97, i32 251, i32 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %69

51:                                               ; preds = %45
  %52 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @skip_utf8(i32* %54, i32 %57, i32 0, i32 %60, i32 1)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %69

65:                                               ; preds = %51
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %150

69:                                               ; preds = %64, %50, %44
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 2
  %77 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %78 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %76, %79
  br i1 %80, label %109, label %81

81:                                               ; preds = %69
  %82 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %83 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %86 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 5
  %93 = icmp ne i32 %92, 3
  br i1 %93, label %109, label %94

94:                                               ; preds = %81
  %95 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 31
  %106 = ashr i32 331776, %105
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %94, %81, %69
  br label %117

110:                                              ; preds = %94
  %111 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %112 = load i32, i32* @a_0, align 4
  %113 = call i32 @find_among(%struct.SN_env* %111, i32 %112, i32 3)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  br label %117

116:                                              ; preds = %110
  br label %150

117:                                              ; preds = %115, %109
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %120 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %128 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @skip_utf8(i32* %123, i32 %126, i32 0, i32 %129, i32 1)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %117
  br label %158

134:                                              ; preds = %117
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %139 = load i32, i32* @g_v, align 4
  %140 = call i32 @out_grouping_U(%struct.SN_env* %138, i32 %139, i32 97, i32 251, i32 1)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  br label %158

144:                                              ; preds = %134
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %147 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %116, %65
  %151 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %152 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %155 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %150, %143, %133
  %159 = load i32, i32* %3, align 4
  %160 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %161 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %8, align 4
  %165 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %166 = load i32, i32* @g_v, align 4
  %167 = call i32 @out_grouping_U(%struct.SN_env* %165, i32 %166, i32 97, i32 251, i32 1)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  br label %227

171:                                              ; preds = %158
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %178 = load i32, i32* @g_v, align 4
  %179 = call i32 @in_grouping_U(%struct.SN_env* %177, i32 %178, i32 97, i32 251, i32 1)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  br label %227

183:                                              ; preds = %171
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %186 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %193 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 %191, i32* %195, align 4
  %196 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %197 = load i32, i32* @g_v, align 4
  %198 = call i32 @out_grouping_U(%struct.SN_env* %196, i32 %197, i32 97, i32 251, i32 1)
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %183
  br label %227

202:                                              ; preds = %183
  %203 = load i32, i32* %11, align 4
  %204 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, %203
  store i32 %207, i32* %205, align 4
  %208 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %209 = load i32, i32* @g_v, align 4
  %210 = call i32 @in_grouping_U(%struct.SN_env* %208, i32 %209, i32 97, i32 251, i32 1)
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %12, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %202
  br label %227

214:                                              ; preds = %202
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, %215
  store i32 %219, i32* %217, align 4
  %220 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %224 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  store i32 %222, i32* %226, align 4
  br label %227

227:                                              ; preds = %214, %213, %201, %182, %170
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %230 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 4
  ret i32 1
}

declare dso_local i32 @in_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @skip_utf8(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @out_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
