; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_mark_suffix_with_optional_s_consonant.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_mark_suffix_with_optional_s_consonant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i8* }

@g_vowel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_mark_suffix_with_optional_s_consonant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_mark_suffix_with_optional_s_consonant(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %10 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %11 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %14 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %1
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %30 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 115
  br i1 %37, label %38, label %39

38:                                               ; preds = %25, %1
  br label %64

39:                                               ; preds = %25
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %5, align 4
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = load i32, i32* @g_vowel, align 4
  %53 = call i64 @in_grouping_b_U(%struct.SN_env* %51, i32 %52, i32 97, i32 305, i32 0)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  br label %64

56:                                               ; preds = %39
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %165

64:                                               ; preds = %55, %38
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  store i32 %86, i32* %7, align 4
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp sle i32 %89, %92
  br i1 %93, label %107, label %94

94:                                               ; preds = %64
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %97, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 115
  br i1 %106, label %107, label %108

107:                                              ; preds = %94, %64
  br label %120

108:                                              ; preds = %94
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %119 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  store i32 0, i32* %2, align 4
  br label %166

120:                                              ; preds = %107
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %130, %133
  store i32 %134, i32* %8, align 4
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %142 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @skip_utf8(i8* %137, i32 %140, i32 %143, i32 0, i32 -1)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %166

148:                                              ; preds = %120
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %153 = load i32, i32* @g_vowel, align 4
  %154 = call i64 @in_grouping_b_U(%struct.SN_env* %152, i32 %153, i32 97, i32 305, i32 0)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %166

157:                                              ; preds = %148
  %158 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %159 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sub nsw i32 %160, %161
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %157, %56
  store i32 1, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %156, %147, %108
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i64 @in_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @skip_utf8(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
