; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step1.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i64*, i32, i32, i32 }

@a_1 = common dso_local global i32 0, align 4
@s_24 = common dso_local global i32 0, align 4
@s_25 = common dso_local global i32 0, align 4
@s_26 = common dso_local global i32 0, align 4
@s_27 = common dso_local global i32 0, align 4
@s_28 = common dso_local global i32 0, align 4
@s_29 = common dso_local global i32 0, align 4
@s_30 = common dso_local global i32 0, align 4
@s_31 = common dso_local global i32 0, align 4
@s_32 = common dso_local global i32 0, align 4
@s_33 = common dso_local global i32 0, align 4
@s_34 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_step1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_step1(%struct.SN_env* %0) #0 {
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
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %20 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = load i32, i32* @a_1, align 4
  %23 = call i32 @find_among_b(%struct.SN_env* %21, i32 %22, i32 40)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %138

27:                                               ; preds = %1
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %133 [
    i32 1, label %34
    i32 2, label %43
    i32 3, label %52
    i32 4, label %61
    i32 5, label %70
    i32 6, label %79
    i32 7, label %88
    i32 8, label %97
    i32 9, label %106
    i32 10, label %115
    i32 11, label %124
  ]

34:                                               ; preds = %27
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = load i32, i32* @s_24, align 4
  %37 = call i32 @slice_from_s(%struct.SN_env* %35, i32 4, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %138

42:                                               ; preds = %34
  br label %133

43:                                               ; preds = %27
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = load i32, i32* @s_25, align 4
  %46 = call i32 @slice_from_s(%struct.SN_env* %44, i32 6, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %138

51:                                               ; preds = %43
  br label %133

52:                                               ; preds = %27
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = load i32, i32* @s_26, align 4
  %55 = call i32 @slice_from_s(%struct.SN_env* %53, i32 6, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %138

60:                                               ; preds = %52
  br label %133

61:                                               ; preds = %27
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = load i32, i32* @s_27, align 4
  %64 = call i32 @slice_from_s(%struct.SN_env* %62, i32 4, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %138

69:                                               ; preds = %61
  br label %133

70:                                               ; preds = %27
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = load i32, i32* @s_28, align 4
  %73 = call i32 @slice_from_s(%struct.SN_env* %71, i32 8, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %138

78:                                               ; preds = %70
  br label %133

79:                                               ; preds = %27
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = load i32, i32* @s_29, align 4
  %82 = call i32 @slice_from_s(%struct.SN_env* %80, i32 6, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %2, align 4
  br label %138

87:                                               ; preds = %79
  br label %133

88:                                               ; preds = %27
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = load i32, i32* @s_30, align 4
  %91 = call i32 @slice_from_s(%struct.SN_env* %89, i32 6, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %2, align 4
  br label %138

96:                                               ; preds = %88
  br label %133

97:                                               ; preds = %27
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = load i32, i32* @s_31, align 4
  %100 = call i32 @slice_from_s(%struct.SN_env* %98, i32 6, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %2, align 4
  br label %138

105:                                              ; preds = %97
  br label %133

106:                                              ; preds = %27
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = load i32, i32* @s_32, align 4
  %109 = call i32 @slice_from_s(%struct.SN_env* %107, i32 4, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %2, align 4
  br label %138

114:                                              ; preds = %106
  br label %133

115:                                              ; preds = %27
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = load i32, i32* @s_33, align 4
  %118 = call i32 @slice_from_s(%struct.SN_env* %116, i32 12, i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %2, align 4
  br label %138

123:                                              ; preds = %115
  br label %133

124:                                              ; preds = %27
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = load i32, i32* @s_34, align 4
  %127 = call i32 @slice_from_s(%struct.SN_env* %125, i32 10, i32 %126)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* %15, align 4
  store i32 %131, i32* %2, align 4
  br label %138

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %27, %132, %123, %114, %105, %96, %87, %78, %69, %60, %51, %42
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  store i64 0, i64* %137, align 8
  store i32 1, i32* %2, align 4
  br label %138

138:                                              ; preds = %133, %130, %121, %112, %103, %94, %85, %76, %67, %58, %49, %40, %26
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
