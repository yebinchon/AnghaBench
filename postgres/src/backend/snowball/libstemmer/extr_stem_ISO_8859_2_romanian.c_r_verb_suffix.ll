; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_romanian.c_r_verb_suffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_romanian.c_r_verb_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i64, i64*, i32, i64, i64, i32, i8* }

@a_4 = common dso_local global i32 0, align 4
@g_v = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_verb_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_verb_suffix(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %9 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %10 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %127

19:                                               ; preds = %1
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %30 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = load i32, i32* @a_4, align 4
  %38 = call i32 @find_among_b(%struct.SN_env* %36, i32 %37, i32 94)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %2, align 4
  br label %127

45:                                               ; preds = %19
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %4, align 4
  switch i32 %51, label %123 [
    i32 1, label %52
    i32 2, label %115
  ]

52:                                               ; preds = %45
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = load i32, i32* @g_v, align 4
  %65 = call i32 @out_grouping_b(%struct.SN_env* %63, i32 %64, i32 97, i32 238, i32 0)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %69

68:                                               ; preds = %52
  br label %107

69:                                               ; preds = %67
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = icmp sle i64 %80, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %69
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 6
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 1
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %96, 117
  br i1 %97, label %98, label %102

98:                                               ; preds = %86, %69
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %2, align 4
  br label %127

102:                                              ; preds = %86
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %102, %68
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = call i32 @slice_del(%struct.SN_env* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %127

114:                                              ; preds = %107
  br label %123

115:                                              ; preds = %45
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = call i32 @slice_del(%struct.SN_env* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %2, align 4
  br label %127

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %45, %122, %114
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  store i32 1, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %120, %112, %98, %41, %18
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @out_grouping_b(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
