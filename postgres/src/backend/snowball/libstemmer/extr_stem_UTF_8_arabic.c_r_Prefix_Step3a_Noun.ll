; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Prefix_Step3a_Noun.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Prefix_Step3a_Noun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Prefix_Step3a_Noun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Prefix_Step3a_Noun(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %7 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %8 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %11 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 3
  %16 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %44, label %20

20:                                               ; preds = %1
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 132
  br i1 %31, label %32, label %45

32:                                               ; preds = %20
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 167
  br i1 %43, label %44, label %45

44:                                               ; preds = %32, %1
  store i32 0, i32* %2, align 4
  br label %90

45:                                               ; preds = %32, %20
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = load i32, i32* @a_6, align 4
  %48 = call i32 @find_among(%struct.SN_env* %46, i32 %47, i32 4)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %90

52:                                               ; preds = %45
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %4, align 4
  switch i32 %58, label %89 [
    i32 1, label %59
    i32 2, label %74
  ]

59:                                               ; preds = %52
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @len_utf8(i32* %62)
  %64 = icmp sgt i32 %63, 5
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %90

66:                                               ; preds = %59
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = call i32 @slice_del(%struct.SN_env* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %90

73:                                               ; preds = %66
  br label %89

74:                                               ; preds = %52
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @len_utf8(i32* %77)
  %79 = icmp sgt i32 %78, 4
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %90

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
  br label %90

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %52, %88, %73
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %86, %80, %71, %65, %51, %44
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @len_utf8(i32*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
