; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_irish.c_r_mark_regions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_irish.c_r_mark_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32 }

@g_v = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_mark_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_mark_regions(%struct.SN_env* %0) #0 {
  %2 = alloca %struct.SN_env*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %2, align 8
  %10 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %11 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %14 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %26, i32* %30, align 4
  %31 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  %34 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %35 = load i32, i32* @g_v, align 4
  %36 = call i32 @out_grouping_U(%struct.SN_env* %34, i32 %35, i32 97, i32 250, i32 1)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %53

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %40, %39
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %5, align 4
  %60 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %61 = load i32, i32* @g_v, align 4
  %62 = call i32 @out_grouping_U(%struct.SN_env* %60, i32 %61, i32 97, i32 250, i32 1)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %122

66:                                               ; preds = %53
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %73 = load i32, i32* @g_v, align 4
  %74 = call i32 @in_grouping_U(%struct.SN_env* %72, i32 %73, i32 97, i32 250, i32 1)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %122

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %86, i32* %90, align 4
  %91 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %92 = load i32, i32* @g_v, align 4
  %93 = call i32 @out_grouping_U(%struct.SN_env* %91, i32 %92, i32 97, i32 250, i32 1)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %78
  br label %122

97:                                               ; preds = %78
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %100 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %104 = load i32, i32* @g_v, align 4
  %105 = call i32 @in_grouping_U(%struct.SN_env* %103, i32 %104, i32 97, i32 250, i32 1)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %122

109:                                              ; preds = %97
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %119 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %109, %108, %96, %77, %65
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  ret i32 1
}

declare dso_local i32 @out_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @in_grouping_U(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
