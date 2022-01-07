; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_portuguese.c_r_postlude.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_portuguese.c_r_postlude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_1 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  br label %9

9:                                                ; preds = %1, %90
  %10 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %11 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %14 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %9
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 126
  br i1 %37, label %38, label %39

38:                                               ; preds = %26, %9
  store i32 3, i32* %4, align 4
  br label %43

39:                                               ; preds = %26
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = load i32, i32* @a_1, align 4
  %42 = call i32 @find_among(%struct.SN_env* %40, i32 %41, i32 3)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %91

47:                                               ; preds = %43
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %90 [
    i32 1, label %54
    i32 2, label %63
    i32 3, label %72
  ]

54:                                               ; preds = %47
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = load i32, i32* @s_2, align 4
  %57 = call i32 @slice_from_s(%struct.SN_env* %55, i32 2, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %96

62:                                               ; preds = %54
  br label %90

63:                                               ; preds = %47
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = load i32, i32* @s_3, align 4
  %66 = call i32 @slice_from_s(%struct.SN_env* %64, i32 2, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %96

71:                                               ; preds = %63
  br label %90

72:                                               ; preds = %47
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @skip_utf8(i32* %75, i32 %78, i32 0, i32 %81, i32 1)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %91

86:                                               ; preds = %72
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %47, %86, %71, %62
  br label %9

91:                                               ; preds = %85, %46
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91
  store i32 1, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %69, %60
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @skip_utf8(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
