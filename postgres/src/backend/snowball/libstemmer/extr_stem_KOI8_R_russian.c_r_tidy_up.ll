; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_KOI8_R_russian.c_r_tidy_up.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_KOI8_R_russian.c_r_tidy_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_tidy_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_tidy_up(%struct.SN_env* %0) #0 {
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
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %15 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %49, label %21

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
  %32 = ashr i32 %31, 5
  %33 = icmp ne i32 %32, 6
  br i1 %33, label %49, label %34

34:                                               ; preds = %21
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 31
  %46 = ashr i32 151011360, %45
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34, %21, %1
  store i32 0, i32* %2, align 4
  br label %181

50:                                               ; preds = %34
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = load i32, i32* @a_7, align 4
  %53 = call i32 @find_among_b(%struct.SN_env* %51, i32 %52, i32 4)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %181

57:                                               ; preds = %50
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %4, align 4
  switch i32 %63, label %180 [
    i32 1, label %64
    i32 2, label %139
    i32 3, label %172
  ]

64:                                               ; preds = %57
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = call i32 @slice_del(%struct.SN_env* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %181

71:                                               ; preds = %64
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp sle i32 %79, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %71
  %85 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %86 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 206
  br i1 %95, label %96, label %97

96:                                               ; preds = %84, %71
  store i32 0, i32* %2, align 4
  br label %181

97:                                               ; preds = %84
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %103 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp sle i32 %109, %112
  br i1 %113, label %126, label %114

114:                                              ; preds = %97
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %119 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 206
  br i1 %125, label %126, label %127

126:                                              ; preds = %114, %97
  store i32 0, i32* %2, align 4
  br label %181

127:                                              ; preds = %114
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %133 = call i32 @slice_del(%struct.SN_env* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %181

138:                                              ; preds = %127
  br label %180

139:                                              ; preds = %57
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp sle i32 %142, %145
  br i1 %146, label %159, label %147

147:                                              ; preds = %139
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %152 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 206
  br i1 %158, label %159, label %160

159:                                              ; preds = %147, %139
  store i32 0, i32* %2, align 4
  br label %181

160:                                              ; preds = %147
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %162, align 4
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = call i32 @slice_del(%struct.SN_env* %165)
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %160
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %2, align 4
  br label %181

171:                                              ; preds = %160
  br label %180

172:                                              ; preds = %57
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = call i32 @slice_del(%struct.SN_env* %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %2, align 4
  br label %181

179:                                              ; preds = %172
  br label %180

180:                                              ; preds = %57, %179, %171, %138
  store i32 1, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %177, %169, %159, %136, %126, %96, %69, %56, %49
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
