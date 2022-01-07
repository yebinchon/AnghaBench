; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_spanish.c_r_mark_regions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_spanish.c_r_mark_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32, i32 }

@g_v = common dso_local global i32 0, align 4
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %2, align 8
  %16 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %20 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %32, i32* %36, align 4
  %37 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  %40 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  %43 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %44 = load i32, i32* @g_v, align 4
  %45 = call i32 @in_grouping_U(%struct.SN_env* %43, i32 %44, i32 97, i32 252, i32 0)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  br label %93

48:                                               ; preds = %1
  %49 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %53 = load i32, i32* @g_v, align 4
  %54 = call i32 @out_grouping_U(%struct.SN_env* %52, i32 %53, i32 97, i32 252, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %70

57:                                               ; preds = %48
  %58 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %59 = load i32, i32* @g_v, align 4
  %60 = call i32 @out_grouping_U(%struct.SN_env* %58, i32 %59, i32 97, i32 252, i32 1)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %70

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %92

70:                                               ; preds = %63, %56
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %75 = load i32, i32* @g_v, align 4
  %76 = call i32 @in_grouping_U(%struct.SN_env* %74, i32 %75, i32 97, i32 252, i32 0)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %93

79:                                               ; preds = %70
  %80 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %81 = load i32, i32* @g_v, align 4
  %82 = call i32 @in_grouping_U(%struct.SN_env* %80, i32 %81, i32 97, i32 252, i32 1)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %93

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %64
  br label %152

93:                                               ; preds = %85, %78, %47
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %98 = load i32, i32* @g_v, align 4
  %99 = call i32 @out_grouping_U(%struct.SN_env* %97, i32 %98, i32 97, i32 252, i32 0)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %160

102:                                              ; preds = %93
  %103 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %8, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %107 = load i32, i32* @g_v, align 4
  %108 = call i32 @out_grouping_U(%struct.SN_env* %106, i32 %107, i32 97, i32 252, i32 0)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %124

111:                                              ; preds = %102
  %112 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %113 = load i32, i32* @g_v, align 4
  %114 = call i32 @out_grouping_U(%struct.SN_env* %112, i32 %113, i32 97, i32 252, i32 1)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %124

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %151

124:                                              ; preds = %117, %110
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %129 = load i32, i32* @g_v, align 4
  %130 = call i32 @in_grouping_U(%struct.SN_env* %128, i32 %129, i32 97, i32 252, i32 0)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %160

133:                                              ; preds = %124
  %134 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @skip_utf8(i32 %136, i32 %139, i32 0, i32 %142, i32 1)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %133
  br label %160

147:                                              ; preds = %133
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %150 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %118
  br label %152

152:                                              ; preds = %151, %92
  %153 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %157 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 %155, i32* %159, align 4
  br label %160

160:                                              ; preds = %152, %146, %132, %101
  %161 = load i32, i32* %3, align 4
  %162 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %165 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %11, align 4
  %167 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %168 = load i32, i32* @g_v, align 4
  %169 = call i32 @out_grouping_U(%struct.SN_env* %167, i32 %168, i32 97, i32 252, i32 1)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  br label %229

173:                                              ; preds = %160
  %174 = load i32, i32* %12, align 4
  %175 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %176 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %180 = load i32, i32* @g_v, align 4
  %181 = call i32 @in_grouping_U(%struct.SN_env* %179, i32 %180, i32 97, i32 252, i32 1)
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %173
  br label %229

185:                                              ; preds = %173
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %192 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  store i32 %193, i32* %197, align 4
  %198 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %199 = load i32, i32* @g_v, align 4
  %200 = call i32 @out_grouping_U(%struct.SN_env* %198, i32 %199, i32 97, i32 252, i32 1)
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* %14, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %185
  br label %229

204:                                              ; preds = %185
  %205 = load i32, i32* %14, align 4
  %206 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %207 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %211 = load i32, i32* @g_v, align 4
  %212 = call i32 @in_grouping_U(%struct.SN_env* %210, i32 %211, i32 97, i32 252, i32 1)
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* %15, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  br label %229

216:                                              ; preds = %204
  %217 = load i32, i32* %15, align 4
  %218 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %219 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, %217
  store i32 %221, i32* %219, align 4
  %222 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %223 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %226 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  store i32 %224, i32* %228, align 4
  br label %229

229:                                              ; preds = %216, %215, %203, %184, %172
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %232 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 4
  ret i32 1
}

declare dso_local i32 @in_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @out_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @skip_utf8(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
