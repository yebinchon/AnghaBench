; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Prefix_Step1.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Prefix_Step1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_4 = common dso_local global i32 0, align 4
@s_54 = common dso_local global i32 0, align 4
@s_55 = common dso_local global i32 0, align 4
@s_56 = common dso_local global i32 0, align 4
@s_57 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Prefix_Step1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Prefix_Step1(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %9 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %10 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %15 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 3
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %50, label %22

22:                                               ; preds = %1
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 5
  %34 = icmp ne i32 %33, 5
  br i1 %34, label %50, label %35

35:                                               ; preds = %22
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 31
  %47 = ashr i32 188, %46
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %35, %22, %1
  store i32 0, i32* %2, align 4
  br label %130

51:                                               ; preds = %35
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = load i32, i32* @a_4, align 4
  %54 = call i32 @find_among(%struct.SN_env* %52, i32 %53, i32 5)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %130

58:                                               ; preds = %51
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %4, align 4
  switch i32 %64, label %129 [
    i32 1, label %65
    i32 2, label %81
    i32 3, label %97
    i32 4, label %113
  ]

65:                                               ; preds = %58
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @len_utf8(i32* %68)
  %70 = icmp sgt i32 %69, 3
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %130

72:                                               ; preds = %65
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = load i32, i32* @s_54, align 4
  %75 = call i32 @slice_from_s(%struct.SN_env* %73, i32 2, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %130

80:                                               ; preds = %72
  br label %129

81:                                               ; preds = %58
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @len_utf8(i32* %84)
  %86 = icmp sgt i32 %85, 3
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %130

88:                                               ; preds = %81
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = load i32, i32* @s_55, align 4
  %91 = call i32 @slice_from_s(%struct.SN_env* %89, i32 2, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %130

96:                                               ; preds = %88
  br label %129

97:                                               ; preds = %58
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @len_utf8(i32* %100)
  %102 = icmp sgt i32 %101, 3
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %130

104:                                              ; preds = %97
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = load i32, i32* @s_56, align 4
  %107 = call i32 @slice_from_s(%struct.SN_env* %105, i32 2, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %130

112:                                              ; preds = %104
  br label %129

113:                                              ; preds = %58
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @len_utf8(i32* %116)
  %118 = icmp sgt i32 %117, 3
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %130

120:                                              ; preds = %113
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = load i32, i32* @s_57, align 4
  %123 = call i32 @slice_from_s(%struct.SN_env* %121, i32 2, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %130

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %58, %128, %112, %96, %80
  store i32 1, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %126, %119, %110, %103, %94, %87, %78, %71, %57, %50
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @len_utf8(i32*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
