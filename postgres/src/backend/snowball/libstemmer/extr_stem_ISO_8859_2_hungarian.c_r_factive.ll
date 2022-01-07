; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_hungarian.c_r_factive.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_hungarian.c_r_factive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_factive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_factive(%struct.SN_env* %0) #0 {
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
  br i1 %19, label %44, label %20

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
  %31 = icmp ne i32 %30, 225
  br i1 %31, label %32, label %45

32:                                               ; preds = %20
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 233
  br i1 %43, label %44, label %45

44:                                               ; preds = %32, %1
  store i32 0, i32* %2, align 4
  br label %85

45:                                               ; preds = %32, %20
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = load i32, i32* @a_7, align 4
  %48 = call i32 @find_among_b(%struct.SN_env* %46, i32 %47, i32 2)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %85

51:                                               ; preds = %45
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = call i32 @r_R1(%struct.SN_env* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %85

63:                                               ; preds = %51
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = call i32 @r_double(%struct.SN_env* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %85

70:                                               ; preds = %63
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = call i32 @slice_del(%struct.SN_env* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %85

77:                                               ; preds = %70
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = call i32 @r_undouble(%struct.SN_env* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %77
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %82, %75, %68, %61, %50, %44
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @r_double(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_undouble(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
