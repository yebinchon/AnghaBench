; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_mark_nUz.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_mark_nUz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32* }

@a_17 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_mark_nUz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_mark_nUz(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %5 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %6 = call i32 @r_check_vowel_harmony(%struct.SN_env* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 2
  %16 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %17 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %11
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 122
  br i1 %31, label %32, label %33

32:                                               ; preds = %20, %11
  store i32 0, i32* %2, align 4
  br label %40

33:                                               ; preds = %20
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = load i32, i32* @a_17, align 4
  %36 = call i32 @find_among_b(%struct.SN_env* %34, i32 %35, i32 4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %32, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @r_check_vowel_harmony(%struct.SN_env*) #1

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
