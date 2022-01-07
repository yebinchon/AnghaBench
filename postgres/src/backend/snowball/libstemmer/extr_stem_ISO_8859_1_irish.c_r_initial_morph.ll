; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_irish.c_r_initial_morph.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_irish.c_r_initial_morph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32 }

@a_0 = common dso_local global i32 0, align 4
@s_0 = common dso_local global i32 0, align 4
@s_1 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
@s_5 = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@s_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_initial_morph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_initial_morph(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = load i32, i32* @a_0, align 4
  %22 = call i32 @find_among(%struct.SN_env* %20, i32 %21, i32 24)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %123

26:                                               ; preds = %1
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %122 [
    i32 1, label %33
    i32 2, label %41
    i32 3, label %50
    i32 4, label %59
    i32 5, label %68
    i32 6, label %77
    i32 7, label %86
    i32 8, label %95
    i32 9, label %104
    i32 10, label %113
  ]

33:                                               ; preds = %26
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = call i32 @slice_del(%struct.SN_env* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %123

40:                                               ; preds = %33
  br label %122

41:                                               ; preds = %26
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = load i32, i32* @s_0, align 4
  %44 = call i32 @slice_from_s(%struct.SN_env* %42, i32 1, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %123

49:                                               ; preds = %41
  br label %122

50:                                               ; preds = %26
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = load i32, i32* @s_1, align 4
  %53 = call i32 @slice_from_s(%struct.SN_env* %51, i32 1, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %123

58:                                               ; preds = %50
  br label %122

59:                                               ; preds = %26
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = load i32, i32* @s_2, align 4
  %62 = call i32 @slice_from_s(%struct.SN_env* %60, i32 1, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %123

67:                                               ; preds = %59
  br label %122

68:                                               ; preds = %26
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = load i32, i32* @s_3, align 4
  %71 = call i32 @slice_from_s(%struct.SN_env* %69, i32 1, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %123

76:                                               ; preds = %68
  br label %122

77:                                               ; preds = %26
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = load i32, i32* @s_4, align 4
  %80 = call i32 @slice_from_s(%struct.SN_env* %78, i32 1, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %2, align 4
  br label %123

85:                                               ; preds = %77
  br label %122

86:                                               ; preds = %26
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = load i32, i32* @s_5, align 4
  %89 = call i32 @slice_from_s(%struct.SN_env* %87, i32 1, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %2, align 4
  br label %123

94:                                               ; preds = %86
  br label %122

95:                                               ; preds = %26
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = load i32, i32* @s_6, align 4
  %98 = call i32 @slice_from_s(%struct.SN_env* %96, i32 1, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %2, align 4
  br label %123

103:                                              ; preds = %95
  br label %122

104:                                              ; preds = %26
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = load i32, i32* @s_7, align 4
  %107 = call i32 @slice_from_s(%struct.SN_env* %105, i32 1, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %2, align 4
  br label %123

112:                                              ; preds = %104
  br label %122

113:                                              ; preds = %26
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = load i32, i32* @s_8, align 4
  %116 = call i32 @slice_from_s(%struct.SN_env* %114, i32 1, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %2, align 4
  br label %123

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %26, %121, %112, %103, %94, %85, %76, %67, %58, %49, %40
  store i32 1, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %119, %110, %101, %92, %83, %74, %65, %56, %47, %38, %25
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
