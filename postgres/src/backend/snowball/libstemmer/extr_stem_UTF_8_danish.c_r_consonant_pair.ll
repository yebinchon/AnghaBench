; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_danish.c_r_consonant_pair.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_danish.c_r_consonant_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i64*, i32, i64, i32*, i64 }

@a_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_consonant_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_consonant_pair(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %8 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %9 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %12 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %20 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

26:                                               ; preds = %1
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %47, %50
  br i1 %51, label %76, label %52

52:                                               ; preds = %26
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 100
  br i1 %63, label %64, label %80

64:                                               ; preds = %52
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 116
  br i1 %75, label %76, label %80

76:                                               ; preds = %64, %26
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %2, align 4
  br label %137

80:                                               ; preds = %64, %52
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = load i32, i32* @a_1, align 4
  %83 = call i32 @find_among_b(%struct.SN_env* %81, i32 %82, i32 4)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %2, align 4
  br label %137

89:                                               ; preds = %80
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 6
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %100 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @skip_utf8(i32* %108, i64 %112, i32 %115, i32 0, i32 -1)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %137

120:                                              ; preds = %89
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %123 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 6
  store i64 %127, i64* %129, align 8
  %130 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %131 = call i32 @slice_del(%struct.SN_env* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %120
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %137

136:                                              ; preds = %120
  store i32 1, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %134, %119, %85, %76, %25
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @skip_utf8(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
