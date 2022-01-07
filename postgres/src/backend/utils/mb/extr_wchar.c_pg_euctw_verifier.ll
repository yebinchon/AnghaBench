; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_euctw_verifier.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_euctw_verifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pg_euctw_verifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_euctw_verifier(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %7, align 1
  %12 = load i8, i8* %7, align 1
  %13 = zext i8 %12 to i32
  switch i32 %13, label %49 [
    i32 129, label %14
    i32 128, label %48
  ]

14:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %71

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %8, align 1
  %23 = load i8, i8* %8, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %24, 161
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sgt i32 %28, 167
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %19
  store i32 -1, i32* %3, align 4
  br label %71

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  %34 = load i8, i8* %32, align 1
  store i8 %34, i8* %8, align 1
  %35 = load i8, i8* %8, align 1
  %36 = call i32 @IS_EUC_RANGE_VALID(i8 zeroext %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %71

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  %42 = load i8, i8* %40, align 1
  store i8 %42, i8* %8, align 1
  %43 = load i8, i8* %8, align 1
  %44 = call i32 @IS_EUC_RANGE_VALID(i8 zeroext %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %71

47:                                               ; preds = %39
  br label %69

48:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %71

49:                                               ; preds = %2
  %50 = load i8, i8* %7, align 1
  %51 = call i32 @IS_HIGHBIT_SET(i8 zeroext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  store i32 2, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %71

58:                                               ; preds = %53
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  %61 = load i8, i8* %59, align 1
  store i8 %61, i8* %8, align 1
  %62 = load i8, i8* %8, align 1
  %63 = call i32 @IS_EUC_RANGE_VALID(i8 zeroext %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %71

66:                                               ; preds = %58
  br label %68

67:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %47
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %65, %57, %48, %46, %38, %30, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @IS_EUC_RANGE_VALID(i8 zeroext) #1

declare dso_local i32 @IS_HIGHBIT_SET(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
