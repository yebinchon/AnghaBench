; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Suffix_Verb_Step2a.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_r_Suffix_Verb_Step2a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32 }

@a_18 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_Suffix_Verb_Step2a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_Suffix_Verb_Step2a(%struct.SN_env* %0) #0 {
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
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %15 = load i32, i32* @a_18, align 4
  %16 = call i32 @find_among_b(%struct.SN_env* %14, i32 %15, i32 11)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

20:                                               ; preds = %1
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %87 [
    i32 1, label %27
    i32 2, label %42
    i32 3, label %57
    i32 4, label %72
  ]

27:                                               ; preds = %20
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @len_utf8(i32 %30)
  %32 = icmp sge i32 %31, 4
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %88

34:                                               ; preds = %27
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = call i32 @slice_del(%struct.SN_env* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %88

41:                                               ; preds = %34
  br label %87

42:                                               ; preds = %20
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @len_utf8(i32 %45)
  %47 = icmp sge i32 %46, 5
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %88

49:                                               ; preds = %42
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = call i32 @slice_del(%struct.SN_env* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %88

56:                                               ; preds = %49
  br label %87

57:                                               ; preds = %20
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @len_utf8(i32 %60)
  %62 = icmp sgt i32 %61, 5
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %88

64:                                               ; preds = %57
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = call i32 @slice_del(%struct.SN_env* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %88

71:                                               ; preds = %64
  br label %87

72:                                               ; preds = %20
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @len_utf8(i32 %75)
  %77 = icmp sge i32 %76, 6
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %88

79:                                               ; preds = %72
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = call i32 @slice_del(%struct.SN_env* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %88

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %20, %86, %71, %56, %41
  store i32 1, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %84, %78, %69, %63, %54, %48, %39, %33, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @len_utf8(i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
