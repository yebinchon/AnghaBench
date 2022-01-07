; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_r_exception1.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_r_exception1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_10 = common dso_local global i32 0, align 4
@s_27 = common dso_local global i32 0, align 4
@s_28 = common dso_local global i32 0, align 4
@s_29 = common dso_local global i32 0, align 4
@s_30 = common dso_local global i32 0, align 4
@s_31 = common dso_local global i32 0, align 4
@s_32 = common dso_local global i32 0, align 4
@s_33 = common dso_local global i32 0, align 4
@s_34 = common dso_local global i32 0, align 4
@s_35 = common dso_local global i32 0, align 4
@s_36 = common dso_local global i32 0, align 4
@s_37 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_exception1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_exception1(%struct.SN_env* %0) #0 {
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
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %20 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 2
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %57, label %29

29:                                               ; preds = %1
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 5
  %41 = icmp ne i32 %40, 3
  br i1 %41, label %57, label %42

42:                                               ; preds = %29
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 31
  %54 = ashr i32 42750482, %53
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %42, %29, %1
  store i32 0, i32* %2, align 4
  br label %181

58:                                               ; preds = %42
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = load i32, i32* @a_10, align 4
  %61 = call i32 @find_among(%struct.SN_env* %59, i32 %60, i32 18)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %181

65:                                               ; preds = %58
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %181

79:                                               ; preds = %65
  %80 = load i32, i32* %4, align 4
  switch i32 %80, label %180 [
    i32 1, label %81
    i32 2, label %90
    i32 3, label %99
    i32 4, label %108
    i32 5, label %117
    i32 6, label %126
    i32 7, label %135
    i32 8, label %144
    i32 9, label %153
    i32 10, label %162
    i32 11, label %171
  ]

81:                                               ; preds = %79
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = load i32, i32* @s_27, align 4
  %84 = call i32 @slice_from_s(%struct.SN_env* %82, i32 3, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %181

89:                                               ; preds = %81
  br label %180

90:                                               ; preds = %79
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = load i32, i32* @s_28, align 4
  %93 = call i32 @slice_from_s(%struct.SN_env* %91, i32 3, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %181

98:                                               ; preds = %90
  br label %180

99:                                               ; preds = %79
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = load i32, i32* @s_29, align 4
  %102 = call i32 @slice_from_s(%struct.SN_env* %100, i32 3, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %181

107:                                              ; preds = %99
  br label %180

108:                                              ; preds = %79
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = load i32, i32* @s_30, align 4
  %111 = call i32 @slice_from_s(%struct.SN_env* %109, i32 3, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %2, align 4
  br label %181

116:                                              ; preds = %108
  br label %180

117:                                              ; preds = %79
  %118 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %119 = load i32, i32* @s_31, align 4
  %120 = call i32 @slice_from_s(%struct.SN_env* %118, i32 3, i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %2, align 4
  br label %181

125:                                              ; preds = %117
  br label %180

126:                                              ; preds = %79
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = load i32, i32* @s_32, align 4
  %129 = call i32 @slice_from_s(%struct.SN_env* %127, i32 3, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %2, align 4
  br label %181

134:                                              ; preds = %126
  br label %180

135:                                              ; preds = %79
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = load i32, i32* @s_33, align 4
  %138 = call i32 @slice_from_s(%struct.SN_env* %136, i32 5, i32 %137)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %2, align 4
  br label %181

143:                                              ; preds = %135
  br label %180

144:                                              ; preds = %79
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = load i32, i32* @s_34, align 4
  %147 = call i32 @slice_from_s(%struct.SN_env* %145, i32 4, i32 %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %2, align 4
  br label %181

152:                                              ; preds = %144
  br label %180

153:                                              ; preds = %79
  %154 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %155 = load i32, i32* @s_35, align 4
  %156 = call i32 @slice_from_s(%struct.SN_env* %154, i32 5, i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* %13, align 4
  store i32 %160, i32* %2, align 4
  br label %181

161:                                              ; preds = %153
  br label %180

162:                                              ; preds = %79
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = load i32, i32* @s_36, align 4
  %165 = call i32 @slice_from_s(%struct.SN_env* %163, i32 4, i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %2, align 4
  br label %181

170:                                              ; preds = %162
  br label %180

171:                                              ; preds = %79
  %172 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %173 = load i32, i32* @s_37, align 4
  %174 = call i32 @slice_from_s(%struct.SN_env* %172, i32 5, i32 %173)
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %2, align 4
  br label %181

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %79, %179, %170, %161, %152, %143, %134, %125, %116, %107, %98, %89
  store i32 1, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %177, %168, %159, %150, %141, %132, %123, %114, %105, %96, %87, %78, %64, %57
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
