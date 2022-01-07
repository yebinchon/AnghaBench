; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step2a.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step2a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32, i32 }

@a_29 = common dso_local global i32 0, align 4
@a_30 = common dso_local global i32 0, align 4
@s_65 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_step2a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_step2a(%struct.SN_env* %0) #0 {
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
  %16 = sub nsw i32 %15, 7
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %45, label %21

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
  %32 = icmp ne i32 %31, 131
  br i1 %32, label %33, label %46

33:                                               ; preds = %21
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
  %44 = icmp ne i32 %43, 189
  br i1 %44, label %45, label %46

45:                                               ; preds = %33, %1
  store i32 0, i32* %2, align 4
  br label %117

46:                                               ; preds = %33, %21
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = load i32, i32* @a_29, align 4
  %49 = call i32 @find_among_b(%struct.SN_env* %47, i32 %48, i32 2)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %117

52:                                               ; preds = %46
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = call i32 @slice_del(%struct.SN_env* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %117

64:                                               ; preds = %52
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = load i32, i32* @a_30, align 4
  %80 = call i32 @find_among_b(%struct.SN_env* %78, i32 %79, i32 10)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %64
  br label %89

83:                                               ; preds = %64
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %2, align 4
  br label %117

89:                                               ; preds = %82
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %7, align 4
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @s_65, align 4
  %108 = call i32 @insert_s(%struct.SN_env* %100, i32 %103, i32 %106, i32 4, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %89
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %117

116:                                              ; preds = %89
  store i32 1, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %114, %83, %62, %51, %45
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @insert_s(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
