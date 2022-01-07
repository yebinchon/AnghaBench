; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Prefix_Step3_Verb.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Prefix_Step3_Verb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32 }

@a_8 = common dso_local global i32 0, align 4
@s_63 = common dso_local global i32 0, align 4
@s_64 = common dso_local global i32 0, align 4
@s_65 = common dso_local global i32 0, align 4
@s_66 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Prefix_Step3_Verb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Prefix_Step3_Verb(%struct.SN_env* %0) #0 {
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
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %15 = load i32, i32* @a_8, align 4
  %16 = call i32 @find_among(%struct.SN_env* %14, i32 %15, i32 4)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

20:                                               ; preds = %1
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %91 [
    i32 1, label %27
    i32 2, label %43
    i32 3, label %59
    i32 4, label %75
  ]

27:                                               ; preds = %20
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @len_utf8(i32 %30)
  %32 = icmp sgt i32 %31, 4
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %92

34:                                               ; preds = %27
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = load i32, i32* @s_63, align 4
  %37 = call i32 @slice_from_s(%struct.SN_env* %35, i32 2, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %92

42:                                               ; preds = %34
  br label %91

43:                                               ; preds = %20
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @len_utf8(i32 %46)
  %48 = icmp sgt i32 %47, 4
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %92

50:                                               ; preds = %43
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = load i32, i32* @s_64, align 4
  %53 = call i32 @slice_from_s(%struct.SN_env* %51, i32 2, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %92

58:                                               ; preds = %50
  br label %91

59:                                               ; preds = %20
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @len_utf8(i32 %62)
  %64 = icmp sgt i32 %63, 4
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %92

66:                                               ; preds = %59
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = load i32, i32* @s_65, align 4
  %69 = call i32 @slice_from_s(%struct.SN_env* %67, i32 2, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %92

74:                                               ; preds = %66
  br label %91

75:                                               ; preds = %20
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @len_utf8(i32 %78)
  %80 = icmp sgt i32 %79, 4
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %92

82:                                               ; preds = %75
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = load i32, i32* @s_66, align 4
  %85 = call i32 @slice_from_s(%struct.SN_env* %83, i32 2, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %92

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %20, %90, %74, %58, %42
  store i32 1, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %88, %81, %72, %65, %56, %49, %40, %33, %19
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @len_utf8(i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
