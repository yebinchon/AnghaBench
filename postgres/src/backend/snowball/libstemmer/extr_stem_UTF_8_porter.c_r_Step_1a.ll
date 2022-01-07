; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_porter.c_r_Step_1a.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_porter.c_r_Step_1a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_0 = common dso_local global i32 0, align 4
@s_0 = common dso_local global i32 0, align 4
@s_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Step_1a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Step_1a(%struct.SN_env* %0) #0 {
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
  br i1 %19, label %32, label %20

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
  %31 = icmp ne i32 %30, 115
  br i1 %31, label %32, label %33

32:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %74

33:                                               ; preds = %20
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = load i32, i32* @a_0, align 4
  %36 = call i32 @find_among_b(%struct.SN_env* %34, i32 %35, i32 4)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %74

40:                                               ; preds = %33
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %4, align 4
  switch i32 %46, label %73 [
    i32 1, label %47
    i32 2, label %56
    i32 3, label %65
  ]

47:                                               ; preds = %40
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = load i32, i32* @s_0, align 4
  %50 = call i32 @slice_from_s(%struct.SN_env* %48, i32 2, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %74

55:                                               ; preds = %47
  br label %73

56:                                               ; preds = %40
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = load i32, i32* @s_1, align 4
  %59 = call i32 @slice_from_s(%struct.SN_env* %57, i32 1, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %74

64:                                               ; preds = %56
  br label %73

65:                                               ; preds = %40
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = call i32 @slice_del(%struct.SN_env* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %74

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %40, %72, %64, %55
  store i32 1, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %70, %62, %53, %39, %32
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
