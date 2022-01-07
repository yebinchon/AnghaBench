; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_hungarian.c_r_mark_regions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_hungarian.c_r_mark_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32, i32* }

@g_v = common dso_local global i32 0, align 4
@a_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_mark_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_mark_regions(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %8 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %9 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %12 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = load i32, i32* @g_v, align 4
  %20 = call i64 @in_grouping_U(%struct.SN_env* %18, i32 %19, i32 97, i32 369, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %106

23:                                               ; preds = %1
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = load i32, i32* @g_v, align 4
  %26 = call i64 @in_grouping_U(%struct.SN_env* %24, i32 %25, i32 97, i32 369, i32 1)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %106

29:                                               ; preds = %23
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %69, label %41

41:                                               ; preds = %29
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 5
  %53 = icmp ne i32 %52, 3
  br i1 %53, label %69, label %54

54:                                               ; preds = %41
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 31
  %66 = ashr i32 101187584, %65
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %54, %41, %29
  br label %77

70:                                               ; preds = %54
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = load i32, i32* @a_0, align 4
  %73 = call i32 @find_among(%struct.SN_env* %71, i32 %72, i32 8)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %77

76:                                               ; preds = %70
  br label %98

77:                                               ; preds = %75, %69
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @skip_utf8(i32* %83, i32 %86, i32 0, i32 %89, i32 1)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %77
  br label %106

94:                                               ; preds = %77
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %76
  %99 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %100 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %103 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %101, i32* %105, align 4
  br label %135

106:                                              ; preds = %93, %28, %22
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = load i32, i32* @g_v, align 4
  %112 = call i32 @out_grouping_U(%struct.SN_env* %110, i32 %111, i32 97, i32 369, i32 0)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %136

115:                                              ; preds = %106
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = load i32, i32* @g_v, align 4
  %118 = call i32 @out_grouping_U(%struct.SN_env* %116, i32 %117, i32 97, i32 369, i32 1)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %136

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %130, i32* %134, align 4
  br label %135

135:                                              ; preds = %122, %98
  store i32 1, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %121, %114
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i64 @in_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @skip_utf8(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @out_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
