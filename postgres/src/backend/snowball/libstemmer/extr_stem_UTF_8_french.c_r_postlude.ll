; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_french.c_r_postlude.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_french.c_r_postlude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_1 = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@s_12 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_postlude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_postlude(%struct.SN_env* %0) #0 {
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
  br label %13

13:                                               ; preds = %1, %144
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
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %57, label %29

29:                                               ; preds = %13
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 0
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 5
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %57, label %42

42:                                               ; preds = %29
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 0
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 31
  %54 = ashr i32 35652352, %53
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %42, %29, %13
  store i32 7, i32* %4, align 4
  br label %62

58:                                               ; preds = %42
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = load i32, i32* @a_1, align 4
  %61 = call i32 @find_among(%struct.SN_env* %59, i32 %60, i32 7)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %145

66:                                               ; preds = %62
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %4, align 4
  switch i32 %72, label %144 [
    i32 1, label %73
    i32 2, label %82
    i32 3, label %91
    i32 4, label %100
    i32 5, label %109
    i32 6, label %118
    i32 7, label %126
  ]

73:                                               ; preds = %66
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = load i32, i32* @s_9, align 4
  %76 = call i32 @slice_from_s(%struct.SN_env* %74, i32 1, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %150

81:                                               ; preds = %73
  br label %144

82:                                               ; preds = %66
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = load i32, i32* @s_10, align 4
  %85 = call i32 @slice_from_s(%struct.SN_env* %83, i32 1, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %150

90:                                               ; preds = %82
  br label %144

91:                                               ; preds = %66
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = load i32, i32* @s_11, align 4
  %94 = call i32 @slice_from_s(%struct.SN_env* %92, i32 1, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %150

99:                                               ; preds = %91
  br label %144

100:                                              ; preds = %66
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = load i32, i32* @s_12, align 4
  %103 = call i32 @slice_from_s(%struct.SN_env* %101, i32 2, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %2, align 4
  br label %150

108:                                              ; preds = %100
  br label %144

109:                                              ; preds = %66
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = load i32, i32* @s_13, align 4
  %112 = call i32 @slice_from_s(%struct.SN_env* %110, i32 2, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %2, align 4
  br label %150

117:                                              ; preds = %109
  br label %144

118:                                              ; preds = %66
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = call i32 @slice_del(%struct.SN_env* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %2, align 4
  br label %150

125:                                              ; preds = %118
  br label %144

126:                                              ; preds = %66
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %131 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @skip_utf8(i32* %129, i32 %132, i32 0, i32 %135, i32 1)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %126
  br label %145

140:                                              ; preds = %126
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %66, %140, %125, %117, %108, %99, %90, %81
  br label %13

145:                                              ; preds = %139, %65
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %145
  store i32 1, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %123, %115, %106, %97, %88, %79
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @skip_utf8(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
