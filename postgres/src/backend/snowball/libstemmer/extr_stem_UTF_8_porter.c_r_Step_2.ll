; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_porter.c_r_Step_2.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_porter.c_r_Step_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_3 = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@s_8 = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@s_12 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@s_14 = common dso_local global i32 0, align 4
@s_15 = common dso_local global i32 0, align 4
@s_16 = common dso_local global i32 0, align 4
@s_17 = common dso_local global i32 0, align 4
@s_18 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Step_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Step_2(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %19 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %20 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 2
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %27, %30
  br i1 %31, label %60, label %32

32:                                               ; preds = %1
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 5
  %44 = icmp ne i32 %43, 3
  br i1 %44, label %60, label %45

45:                                               ; preds = %32
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 31
  %57 = ashr i32 815616, %56
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %45, %32, %1
  store i32 0, i32* %2, align 4
  br label %200

61:                                               ; preds = %45
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = load i32, i32* @a_3, align 4
  %64 = call i32 @find_among_b(%struct.SN_env* %62, i32 %63, i32 20)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %200

68:                                               ; preds = %61
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = call i32 @r_R1(%struct.SN_env* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %200

80:                                               ; preds = %68
  %81 = load i32, i32* %4, align 4
  switch i32 %81, label %199 [
    i32 1, label %82
    i32 2, label %91
    i32 3, label %100
    i32 4, label %109
    i32 5, label %118
    i32 6, label %127
    i32 7, label %136
    i32 8, label %145
    i32 9, label %154
    i32 10, label %163
    i32 11, label %172
    i32 12, label %181
    i32 13, label %190
  ]

82:                                               ; preds = %80
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = load i32, i32* @s_6, align 4
  %85 = call i32 @slice_from_s(%struct.SN_env* %83, i32 4, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %200

90:                                               ; preds = %82
  br label %199

91:                                               ; preds = %80
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = load i32, i32* @s_7, align 4
  %94 = call i32 @slice_from_s(%struct.SN_env* %92, i32 4, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %200

99:                                               ; preds = %91
  br label %199

100:                                              ; preds = %80
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = load i32, i32* @s_8, align 4
  %103 = call i32 @slice_from_s(%struct.SN_env* %101, i32 4, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %200

108:                                              ; preds = %100
  br label %199

109:                                              ; preds = %80
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = load i32, i32* @s_9, align 4
  %112 = call i32 @slice_from_s(%struct.SN_env* %110, i32 4, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %2, align 4
  br label %200

117:                                              ; preds = %109
  br label %199

118:                                              ; preds = %80
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = load i32, i32* @s_10, align 4
  %121 = call i32 @slice_from_s(%struct.SN_env* %119, i32 3, i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %2, align 4
  br label %200

126:                                              ; preds = %118
  br label %199

127:                                              ; preds = %80
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = load i32, i32* @s_11, align 4
  %130 = call i32 @slice_from_s(%struct.SN_env* %128, i32 1, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %2, align 4
  br label %200

135:                                              ; preds = %127
  br label %199

136:                                              ; preds = %80
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = load i32, i32* @s_12, align 4
  %139 = call i32 @slice_from_s(%struct.SN_env* %137, i32 3, i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %2, align 4
  br label %200

144:                                              ; preds = %136
  br label %199

145:                                              ; preds = %80
  %146 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %147 = load i32, i32* @s_13, align 4
  %148 = call i32 @slice_from_s(%struct.SN_env* %146, i32 3, i32 %147)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %2, align 4
  br label %200

153:                                              ; preds = %145
  br label %199

154:                                              ; preds = %80
  %155 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %156 = load i32, i32* @s_14, align 4
  %157 = call i32 @slice_from_s(%struct.SN_env* %155, i32 2, i32 %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %2, align 4
  br label %200

162:                                              ; preds = %154
  br label %199

163:                                              ; preds = %80
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = load i32, i32* @s_15, align 4
  %166 = call i32 @slice_from_s(%struct.SN_env* %164, i32 3, i32 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* %15, align 4
  store i32 %170, i32* %2, align 4
  br label %200

171:                                              ; preds = %163
  br label %199

172:                                              ; preds = %80
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = load i32, i32* @s_16, align 4
  %175 = call i32 @slice_from_s(%struct.SN_env* %173, i32 3, i32 %174)
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %2, align 4
  br label %200

180:                                              ; preds = %172
  br label %199

181:                                              ; preds = %80
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = load i32, i32* @s_17, align 4
  %184 = call i32 @slice_from_s(%struct.SN_env* %182, i32 3, i32 %183)
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* %17, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* %17, align 4
  store i32 %188, i32* %2, align 4
  br label %200

189:                                              ; preds = %181
  br label %199

190:                                              ; preds = %80
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = load i32, i32* @s_18, align 4
  %193 = call i32 @slice_from_s(%struct.SN_env* %191, i32 3, i32 %192)
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %18, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i32, i32* %18, align 4
  store i32 %197, i32* %2, align 4
  br label %200

198:                                              ; preds = %190
  br label %199

199:                                              ; preds = %80, %198, %189, %180, %171, %162, %153, %144, %135, %126, %117, %108, %99, %90
  store i32 1, i32* %2, align 4
  br label %200

200:                                              ; preds = %199, %196, %187, %178, %169, %160, %151, %142, %133, %124, %115, %106, %97, %88, %78, %67, %60
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
