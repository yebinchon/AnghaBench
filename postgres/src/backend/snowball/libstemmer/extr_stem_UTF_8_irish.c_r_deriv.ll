; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_irish.c_r_deriv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_irish.c_r_deriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32 }

@a_2 = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@s_12 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_deriv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_deriv(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = load i32, i32* @a_2, align 4
  %19 = call i32 @find_among_b(%struct.SN_env* %17, i32 %18, i32 25)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

23:                                               ; preds = %1
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %90 [
    i32 1, label %30
    i32 2, label %45
    i32 3, label %54
    i32 4, label %63
    i32 5, label %72
    i32 6, label %81
  ]

30:                                               ; preds = %23
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = call i32 @r_R2(%struct.SN_env* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %91

37:                                               ; preds = %30
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = call i32 @slice_del(%struct.SN_env* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %91

44:                                               ; preds = %37
  br label %90

45:                                               ; preds = %23
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = load i32, i32* @s_9, align 4
  %48 = call i32 @slice_from_s(%struct.SN_env* %46, i32 3, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %91

53:                                               ; preds = %45
  br label %90

54:                                               ; preds = %23
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = load i32, i32* @s_10, align 4
  %57 = call i32 @slice_from_s(%struct.SN_env* %55, i32 3, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %91

62:                                               ; preds = %54
  br label %90

63:                                               ; preds = %23
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = load i32, i32* @s_11, align 4
  %66 = call i32 @slice_from_s(%struct.SN_env* %64, i32 4, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %2, align 4
  br label %91

71:                                               ; preds = %63
  br label %90

72:                                               ; preds = %23
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = load i32, i32* @s_12, align 4
  %75 = call i32 @slice_from_s(%struct.SN_env* %73, i32 5, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %2, align 4
  br label %91

80:                                               ; preds = %72
  br label %90

81:                                               ; preds = %23
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = load i32, i32* @s_13, align 4
  %84 = call i32 @slice_from_s(%struct.SN_env* %82, i32 4, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %2, align 4
  br label %91

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %23, %89, %80, %71, %62, %53, %44
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %87, %78, %69, %60, %51, %42, %35, %22
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R2(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
