; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_spanish.c_r_postlude.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_spanish.c_r_postlude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_0 = common dso_local global i32 0, align 4
@s_0 = common dso_local global i32 0, align 4
@s_1 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  br label %11

11:                                               ; preds = %1, %130
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %55, label %27

27:                                               ; preds = %11
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 0
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 5
  %39 = icmp ne i32 %38, 7
  br i1 %39, label %55, label %40

40:                                               ; preds = %27
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 0
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 31
  %52 = ashr i32 67641858, %51
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %40, %27, %11
  store i32 6, i32* %4, align 4
  br label %60

56:                                               ; preds = %40
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = load i32, i32* @a_0, align 4
  %59 = call i32 @find_among(%struct.SN_env* %57, i32 %58, i32 6)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %55
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  br label %131

64:                                               ; preds = %60
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %4, align 4
  switch i32 %70, label %130 [
    i32 1, label %71
    i32 2, label %80
    i32 3, label %89
    i32 4, label %98
    i32 5, label %107
    i32 6, label %116
  ]

71:                                               ; preds = %64
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = load i32, i32* @s_0, align 4
  %74 = call i32 @slice_from_s(%struct.SN_env* %72, i32 1, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %136

79:                                               ; preds = %71
  br label %130

80:                                               ; preds = %64
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = load i32, i32* @s_1, align 4
  %83 = call i32 @slice_from_s(%struct.SN_env* %81, i32 1, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %136

88:                                               ; preds = %80
  br label %130

89:                                               ; preds = %64
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = load i32, i32* @s_2, align 4
  %92 = call i32 @slice_from_s(%struct.SN_env* %90, i32 1, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %2, align 4
  br label %136

97:                                               ; preds = %89
  br label %130

98:                                               ; preds = %64
  %99 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %100 = load i32, i32* @s_3, align 4
  %101 = call i32 @slice_from_s(%struct.SN_env* %99, i32 1, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %2, align 4
  br label %136

106:                                              ; preds = %98
  br label %130

107:                                              ; preds = %64
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = load i32, i32* @s_4, align 4
  %110 = call i32 @slice_from_s(%struct.SN_env* %108, i32 1, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %2, align 4
  br label %136

115:                                              ; preds = %107
  br label %130

116:                                              ; preds = %64
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp sge i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %131

125:                                              ; preds = %116
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %64, %125, %115, %106, %97, %88, %79
  br label %11

131:                                              ; preds = %124, %63
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %131
  store i32 1, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %113, %104, %95, %86, %77
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
