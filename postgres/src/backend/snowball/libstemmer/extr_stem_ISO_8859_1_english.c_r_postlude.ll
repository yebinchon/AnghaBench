; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_r_postlude.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_r_postlude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i8*, i64, i32* }

@s_38 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_postlude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_postlude(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %7 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %8 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %87
  %16 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %74
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %19
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 89
  br i1 %46, label %47, label %48

47:                                               ; preds = %35, %19
  br label %62

48:                                               ; preds = %35
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 4
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %79

62:                                               ; preds = %47
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %88

74:                                               ; preds = %62
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %19

79:                                               ; preds = %48
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = load i32, i32* @s_38, align 4
  %82 = call i32 @slice_from_s(%struct.SN_env* %80, i32 1, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %93

87:                                               ; preds = %79
  br label %15

88:                                               ; preds = %73
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88
  store i32 1, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %85, %13
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
