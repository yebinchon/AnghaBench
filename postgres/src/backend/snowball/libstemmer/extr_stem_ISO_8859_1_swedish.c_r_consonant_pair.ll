; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_swedish.c_r_consonant_pair.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_swedish.c_r_consonant_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32*, i32, i32, i32*, i64, i64 }

@a_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_consonant_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_consonant_pair(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %7 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %8 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %11 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %131

17:                                               ; preds = %1
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %39, %42
  br i1 %43, label %72, label %44

44:                                               ; preds = %17
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 5
  %56 = icmp ne i32 %55, 3
  br i1 %56, label %72, label %57

57:                                               ; preds = %44
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 31
  %69 = ashr i32 1064976, %68
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %57, %44, %17
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %2, align 4
  br label %131

76:                                               ; preds = %57
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = load i32, i32* @a_1, align 4
  %79 = call i32 @find_among_b(%struct.SN_env* %77, i32 %78, i32 7)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %2, align 4
  br label %131

85:                                               ; preds = %76
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %97, i32 0, i32 5
  store i64 %96, i64* %98, align 8
  %99 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %100 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %103 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp sle i32 %101, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %85
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  store i32 0, i32* %2, align 4
  br label %131

110:                                              ; preds = %85
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %119, i32 0, i32 6
  store i64 %118, i64* %120, align 8
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = call i32 @slice_del(%struct.SN_env* %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %110
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %131

127:                                              ; preds = %110
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %130 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  store i32 1, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %125, %106, %81, %72, %16
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
