; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_romanian.c_r_combo_suffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_romanian.c_r_combo_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32* }

@a_2 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@s_12 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@s_14 = common dso_local global i32 0, align 4
@s_15 = common dso_local global i32 0, align 4
@s_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_combo_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_combo_suffix(%struct.SN_env* %0) #0 {
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
  %14 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = load i32, i32* @a_2, align 4
  %27 = call i32 @find_among_b(%struct.SN_env* %25, i32 %26, i32 46)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

31:                                               ; preds = %1
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = call i32 @r_R1(%struct.SN_env* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %111

43:                                               ; preds = %31
  %44 = load i32, i32* %4, align 4
  switch i32 %44, label %99 [
    i32 1, label %45
    i32 2, label %54
    i32 3, label %63
    i32 4, label %72
    i32 5, label %81
    i32 6, label %90
  ]

45:                                               ; preds = %43
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = load i32, i32* @s_11, align 4
  %48 = call i32 @slice_from_s(%struct.SN_env* %46, i32 4, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %111

53:                                               ; preds = %45
  br label %99

54:                                               ; preds = %43
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = load i32, i32* @s_12, align 4
  %57 = call i32 @slice_from_s(%struct.SN_env* %55, i32 4, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %111

62:                                               ; preds = %54
  br label %99

63:                                               ; preds = %43
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = load i32, i32* @s_13, align 4
  %66 = call i32 @slice_from_s(%struct.SN_env* %64, i32 2, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %2, align 4
  br label %111

71:                                               ; preds = %63
  br label %99

72:                                               ; preds = %43
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = load i32, i32* @s_14, align 4
  %75 = call i32 @slice_from_s(%struct.SN_env* %73, i32 2, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %2, align 4
  br label %111

80:                                               ; preds = %72
  br label %99

81:                                               ; preds = %43
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = load i32, i32* @s_15, align 4
  %84 = call i32 @slice_from_s(%struct.SN_env* %82, i32 2, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %2, align 4
  br label %111

89:                                               ; preds = %81
  br label %99

90:                                               ; preds = %43
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = load i32, i32* @s_16, align 4
  %93 = call i32 @slice_from_s(%struct.SN_env* %91, i32 2, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %2, align 4
  br label %111

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %43, %98, %89, %80, %71, %62, %53
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 1, i32* %103, align 4
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  store i32 1, i32* %2, align 4
  br label %111

111:                                              ; preds = %99, %96, %87, %78, %69, %60, %51, %41, %30
  %112 = load i32, i32* %2, align 4
  ret i32 %112
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
