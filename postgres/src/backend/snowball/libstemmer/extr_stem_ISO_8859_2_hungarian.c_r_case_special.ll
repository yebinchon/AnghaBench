; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_hungarian.c_r_case_special.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_hungarian.c_r_case_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_5 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_case_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_case_special(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %8 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %9 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %12 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %14 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %1
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 110
  br i1 %32, label %33, label %46

33:                                               ; preds = %21
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 116
  br i1 %44, label %45, label %46

45:                                               ; preds = %33, %1
  store i32 0, i32* %2, align 4
  br label %86

46:                                               ; preds = %33, %21
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = load i32, i32* @a_5, align 4
  %49 = call i32 @find_among_b(%struct.SN_env* %47, i32 %48, i32 3)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %86

53:                                               ; preds = %46
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = call i32 @r_R1(%struct.SN_env* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %86

65:                                               ; preds = %53
  %66 = load i32, i32* %4, align 4
  switch i32 %66, label %85 [
    i32 1, label %67
    i32 2, label %76
  ]

67:                                               ; preds = %65
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = load i32, i32* @s_2, align 4
  %70 = call i32 @slice_from_s(%struct.SN_env* %68, i32 1, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %86

75:                                               ; preds = %67
  br label %85

76:                                               ; preds = %65
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = load i32, i32* @s_3, align 4
  %79 = call i32 @slice_from_s(%struct.SN_env* %77, i32 1, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %86

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %65, %84, %75
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %82, %73, %63, %52, %45
  %87 = load i32, i32* %2, align 4
  ret i32 %87
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
