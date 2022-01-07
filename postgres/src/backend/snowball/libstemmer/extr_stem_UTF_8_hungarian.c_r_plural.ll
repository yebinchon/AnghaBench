; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_hungarian.c_r_plural.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_hungarian.c_r_plural.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_8 = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_plural to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_plural(%struct.SN_env* %0) #0 {
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
  br i1 %20, label %33, label %21

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
  %32 = icmp ne i32 %31, 107
  br i1 %32, label %33, label %34

33:                                               ; preds = %21, %1
  store i32 0, i32* %2, align 4
  br label %82

34:                                               ; preds = %21
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = load i32, i32* @a_8, align 4
  %37 = call i32 @find_among_b(%struct.SN_env* %35, i32 %36, i32 7)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %82

41:                                               ; preds = %34
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = call i32 @r_R1(%struct.SN_env* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %82

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  switch i32 %54, label %81 [
    i32 1, label %55
    i32 2, label %64
    i32 3, label %73
  ]

55:                                               ; preds = %53
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = load i32, i32* @s_6, align 4
  %58 = call i32 @slice_from_s(%struct.SN_env* %56, i32 1, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %82

63:                                               ; preds = %55
  br label %81

64:                                               ; preds = %53
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = load i32, i32* @s_7, align 4
  %67 = call i32 @slice_from_s(%struct.SN_env* %65, i32 1, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %82

72:                                               ; preds = %64
  br label %81

73:                                               ; preds = %53
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = call i32 @slice_del(%struct.SN_env* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %82

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %53, %80, %72, %63
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %78, %70, %61, %51, %40, %33
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
