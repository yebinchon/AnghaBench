; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_lithuanian.c_r_fix_conflicts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_lithuanian.c_r_fix_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_2 = common dso_local global i32 0, align 4
@s_0 = common dso_local global i32 0, align 4
@s_1 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
@s_5 = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_fix_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_fix_conflicts(%struct.SN_env* %0) #0 {
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
  %21 = sub nsw i32 %20, 3
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
  %51 = ashr i32 2621472, %50
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %39, %26, %1
  store i32 0, i32* %2, align 4
  br label %142

55:                                               ; preds = %39
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = load i32, i32* @a_2, align 4
  %58 = call i32 @find_among_b(%struct.SN_env* %56, i32 %57, i32 11)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %142

62:                                               ; preds = %55
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %4, align 4
  switch i32 %68, label %141 [
    i32 1, label %69
    i32 2, label %78
    i32 3, label %87
    i32 4, label %96
    i32 5, label %105
    i32 6, label %114
    i32 7, label %123
    i32 8, label %132
  ]

69:                                               ; preds = %62
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = load i32, i32* @s_0, align 4
  %72 = call i32 @slice_from_s(%struct.SN_env* %70, i32 5, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %142

77:                                               ; preds = %69
  br label %141

78:                                               ; preds = %62
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = load i32, i32* @s_1, align 4
  %81 = call i32 @slice_from_s(%struct.SN_env* %79, i32 5, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %142

86:                                               ; preds = %78
  br label %141

87:                                               ; preds = %62
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = load i32, i32* @s_2, align 4
  %90 = call i32 @slice_from_s(%struct.SN_env* %88, i32 7, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %142

95:                                               ; preds = %87
  br label %141

96:                                               ; preds = %62
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = load i32, i32* @s_3, align 4
  %99 = call i32 @slice_from_s(%struct.SN_env* %97, i32 4, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %142

104:                                              ; preds = %96
  br label %141

105:                                              ; preds = %62
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = load i32, i32* @s_4, align 4
  %108 = call i32 @slice_from_s(%struct.SN_env* %106, i32 4, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %2, align 4
  br label %142

113:                                              ; preds = %105
  br label %141

114:                                              ; preds = %62
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = load i32, i32* @s_5, align 4
  %117 = call i32 @slice_from_s(%struct.SN_env* %115, i32 6, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %2, align 4
  br label %142

122:                                              ; preds = %114
  br label %141

123:                                              ; preds = %62
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = load i32, i32* @s_6, align 4
  %126 = call i32 @slice_from_s(%struct.SN_env* %124, i32 6, i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %2, align 4
  br label %142

131:                                              ; preds = %123
  br label %141

132:                                              ; preds = %62
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = load i32, i32* @s_7, align 4
  %135 = call i32 @slice_from_s(%struct.SN_env* %133, i32 6, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %2, align 4
  br label %142

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %62, %140, %131, %122, %113, %104, %95, %86, %77
  store i32 1, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %138, %129, %120, %111, %102, %93, %84, %75, %61, %54
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
