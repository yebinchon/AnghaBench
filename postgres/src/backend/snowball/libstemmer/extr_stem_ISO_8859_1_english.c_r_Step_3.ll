; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_r_Step_3.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_r_Step_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_6 = common dso_local global i32 0, align 4
@s_23 = common dso_local global i32 0, align 4
@s_24 = common dso_local global i32 0, align 4
@s_25 = common dso_local global i32 0, align 4
@s_26 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Step_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Step_3(%struct.SN_env* %0) #0 {
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
  %21 = sub nsw i32 %20, 2
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
  %51 = ashr i32 528928, %50
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %39, %26, %1
  store i32 0, i32* %2, align 4
  br label %136

55:                                               ; preds = %39
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = load i32, i32* @a_6, align 4
  %58 = call i32 @find_among_b(%struct.SN_env* %56, i32 %57, i32 9)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %136

62:                                               ; preds = %55
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = call i32 @r_R1(%struct.SN_env* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %136

74:                                               ; preds = %62
  %75 = load i32, i32* %4, align 4
  switch i32 %75, label %135 [
    i32 1, label %76
    i32 2, label %85
    i32 3, label %94
    i32 4, label %103
    i32 5, label %112
    i32 6, label %120
  ]

76:                                               ; preds = %74
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = load i32, i32* @s_23, align 4
  %79 = call i32 @slice_from_s(%struct.SN_env* %77, i32 4, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %136

84:                                               ; preds = %76
  br label %135

85:                                               ; preds = %74
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = load i32, i32* @s_24, align 4
  %88 = call i32 @slice_from_s(%struct.SN_env* %86, i32 3, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %136

93:                                               ; preds = %85
  br label %135

94:                                               ; preds = %74
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = load i32, i32* @s_25, align 4
  %97 = call i32 @slice_from_s(%struct.SN_env* %95, i32 2, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %136

102:                                              ; preds = %94
  br label %135

103:                                              ; preds = %74
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = load i32, i32* @s_26, align 4
  %106 = call i32 @slice_from_s(%struct.SN_env* %104, i32 2, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %136

111:                                              ; preds = %103
  br label %135

112:                                              ; preds = %74
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = call i32 @slice_del(%struct.SN_env* %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %2, align 4
  br label %136

119:                                              ; preds = %112
  br label %135

120:                                              ; preds = %74
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = call i32 @r_R2(%struct.SN_env* %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %2, align 4
  br label %136

127:                                              ; preds = %120
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = call i32 @slice_del(%struct.SN_env* %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %2, align 4
  br label %136

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %74, %134, %119, %111, %102, %93, %84
  store i32 1, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %132, %125, %117, %109, %100, %91, %82, %72, %61, %54
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_R2(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
