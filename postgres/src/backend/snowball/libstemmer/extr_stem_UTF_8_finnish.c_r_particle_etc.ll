; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_finnish.c_r_particle_etc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_finnish.c_r_particle_etc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i64, i64*, i32, i64, i64 }

@a_0 = common dso_local global i32 0, align 4
@g_particle_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_particle_etc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_particle_etc(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %8 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %9 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %12 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

18:                                               ; preds = %1
  %19 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %20 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = load i32, i32* @a_0, align 4
  %37 = call i32 @find_among_b(%struct.SN_env* %35, i32 %36, i32 10)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %18
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %2, align 4
  br label %77

44:                                               ; preds = %18
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %69 [
    i32 1, label %54
    i32 2, label %61
  ]

54:                                               ; preds = %44
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = load i32, i32* @g_particle_end, align 4
  %57 = call i32 @in_grouping_b_U(%struct.SN_env* %55, i32 %56, i32 97, i32 246, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %77

60:                                               ; preds = %54
  br label %69

61:                                               ; preds = %44
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = call i32 @r_R2(%struct.SN_env* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %77

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %44, %68, %60
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = call i32 @slice_del(%struct.SN_env* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %69
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %74, %66, %59, %40, %17
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @in_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @r_R2(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
