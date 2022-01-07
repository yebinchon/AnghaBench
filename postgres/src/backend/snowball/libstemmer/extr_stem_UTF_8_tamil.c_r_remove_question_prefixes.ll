; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_tamil.c_r_remove_question_prefixes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_tamil.c_r_remove_question_prefixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32 }

@s_12 = common dso_local global i32 0, align 4
@a_0 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_remove_question_prefixes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_remove_question_prefixes(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %7 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %8 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %11 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = load i32, i32* @s_12, align 4
  %14 = call i32 @eq_s(%struct.SN_env* %12, i32 3, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = load i32, i32* @a_0, align 4
  %20 = call i32 @find_among(%struct.SN_env* %18, i32 %19, i32 10)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %60

23:                                               ; preds = %17
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = load i32, i32* @s_13, align 4
  %26 = call i32 @eq_s(%struct.SN_env* %24, i32 3, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %60

29:                                               ; preds = %23
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = call i32 @slice_del(%struct.SN_env* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %60

41:                                               ; preds = %29
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = call i32 @r_fix_va_start(%struct.SN_env* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %56

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %60

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %53, %39, %28, %22, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @eq_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_fix_va_start(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
