; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Prefix_Step3b_Noun.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Prefix_Step3b_Noun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@s_60 = common dso_local global i32 0, align 4
@a_7 = common dso_local global i32 0, align 4
@s_61 = common dso_local global i32 0, align 4
@s_62 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Prefix_Step3b_Noun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Prefix_Step3b_Noun(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %9 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %10 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = load i32, i32* @s_60, align 4
  %14 = call i32 @eq_s(%struct.SN_env* %12, i32 4, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %122

18:                                               ; preds = %16
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %59, label %35

35:                                               ; preds = %18
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 168
  br i1 %46, label %47, label %60

47:                                               ; preds = %35
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 131
  br i1 %58, label %59, label %60

59:                                               ; preds = %47, %18
  store i32 0, i32* %2, align 4
  br label %122

60:                                               ; preds = %47, %35
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = load i32, i32* @a_7, align 4
  %63 = call i32 @find_among(%struct.SN_env* %61, i32 %62, i32 3)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %122

67:                                               ; preds = %60
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %4, align 4
  switch i32 %73, label %121 [
    i32 1, label %74
    i32 2, label %89
    i32 3, label %105
  ]

74:                                               ; preds = %67
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @len_utf8(i32* %77)
  %79 = icmp sgt i32 %78, 3
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %122

81:                                               ; preds = %74
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = call i32 @slice_del(%struct.SN_env* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %122

88:                                               ; preds = %81
  br label %121

89:                                               ; preds = %67
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @len_utf8(i32* %92)
  %94 = icmp sgt i32 %93, 3
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %122

96:                                               ; preds = %89
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = load i32, i32* @s_61, align 4
  %99 = call i32 @slice_from_s(%struct.SN_env* %97, i32 2, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %122

104:                                              ; preds = %96
  br label %121

105:                                              ; preds = %67
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @len_utf8(i32* %108)
  %110 = icmp sgt i32 %109, 3
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %122

112:                                              ; preds = %105
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = load i32, i32* @s_62, align 4
  %115 = call i32 @slice_from_s(%struct.SN_env* %113, i32 2, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %122

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %67, %120, %104, %88
  store i32 1, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %118, %111, %102, %95, %86, %80, %66, %59, %17
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @eq_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @len_utf8(i32*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
