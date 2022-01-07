; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_irish.c_r_verb_sfx.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_irish.c_r_verb_sfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_verb_sfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_verb_sfx(%struct.SN_env* %0) #0 {
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
  %17 = sub nsw i32 %16, 2
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %17, %20
  br i1 %21, label %50, label %22

22:                                               ; preds = %1
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 5
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %50, label %35

35:                                               ; preds = %22
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 31
  %47 = ashr i32 282896, %46
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %35, %22, %1
  store i32 0, i32* %2, align 4
  br label %96

51:                                               ; preds = %35
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = load i32, i32* @a_3, align 4
  %54 = call i32 @find_among_b(%struct.SN_env* %52, i32 %53, i32 12)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %96

58:                                               ; preds = %51
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %4, align 4
  switch i32 %64, label %95 [
    i32 1, label %65
    i32 2, label %80
  ]

65:                                               ; preds = %58
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = call i32 @r_RV(%struct.SN_env* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %96

72:                                               ; preds = %65
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = call i32 @slice_del(%struct.SN_env* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %96

79:                                               ; preds = %72
  br label %95

80:                                               ; preds = %58
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = call i32 @r_R1(%struct.SN_env* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %96

87:                                               ; preds = %80
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = call i32 @slice_del(%struct.SN_env* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %96

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %58, %94, %79
  store i32 1, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %92, %85, %77, %70, %57, %50
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_RV(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
