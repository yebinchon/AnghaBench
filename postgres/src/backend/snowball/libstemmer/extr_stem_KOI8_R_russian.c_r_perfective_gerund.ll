; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_KOI8_R_russian.c_r_perfective_gerund.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_KOI8_R_russian.c_r_perfective_gerund.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32, i32 }

@a_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_perfective_gerund to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_perfective_gerund(%struct.SN_env* %0) #0 {
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
  %16 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %48, label %20

20:                                               ; preds = %1
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 5
  %32 = icmp ne i32 %31, 6
  br i1 %32, label %48, label %33

33:                                               ; preds = %20
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
  %44 = and i32 %43, 31
  %45 = ashr i32 25166336, %44
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %33, %20, %1
  store i32 0, i32* %2, align 4
  br label %147

49:                                               ; preds = %33
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = load i32, i32* @a_0, align 4
  %52 = call i32 @find_among_b(%struct.SN_env* %50, i32 %51, i32 9)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %147

56:                                               ; preds = %49
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %4, align 4
  switch i32 %62, label %146 [
    i32 1, label %63
    i32 2, label %138
  ]

63:                                               ; preds = %56
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp sle i32 %74, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %63
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 193
  br i1 %90, label %91, label %92

91:                                               ; preds = %79, %63
  br label %97

92:                                               ; preds = %79
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 4
  br label %130

97:                                               ; preds = %91
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp sle i32 %107, %110
  br i1 %111, label %124, label %112

112:                                              ; preds = %97
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %115, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 209
  br i1 %123, label %124, label %125

124:                                              ; preds = %112, %97
  store i32 0, i32* %2, align 4
  br label %147

125:                                              ; preds = %112
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %125, %92
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = call i32 @slice_del(%struct.SN_env* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %147

137:                                              ; preds = %130
  br label %146

138:                                              ; preds = %56
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = call i32 @slice_del(%struct.SN_env* %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %2, align 4
  br label %147

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %56, %145, %137
  store i32 1, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %143, %135, %124, %55, %48
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
