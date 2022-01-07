; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_eucjp_verifier.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_eucjp_verifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pg_eucjp_verifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_eucjp_verifier(i8* %0, i32 %1) #0 {
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
  switch i32 %13, label %54 [
    i32 129, label %14
    i32 128, label %32
  ]

14:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %81

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
  %29 = icmp sgt i32 %28, 223
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %19
  store i32 -1, i32* %3, align 4
  br label %81

31:                                               ; preds = %26
  br label %79

32:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %81

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  %40 = load i8, i8* %38, align 1
  store i8 %40, i8* %8, align 1
  %41 = load i8, i8* %8, align 1
  %42 = call i32 @IS_EUC_RANGE_VALID(i8 zeroext %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %81

45:                                               ; preds = %37
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  %48 = load i8, i8* %46, align 1
  store i8 %48, i8* %8, align 1
  %49 = load i8, i8* %8, align 1
  %50 = call i32 @IS_EUC_RANGE_VALID(i8 zeroext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %81

53:                                               ; preds = %45
  br label %79

54:                                               ; preds = %2
  %55 = load i8, i8* %7, align 1
  %56 = call i32 @IS_HIGHBIT_SET(i8 zeroext %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  store i32 2, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %81

63:                                               ; preds = %58
  %64 = load i8, i8* %7, align 1
  %65 = call i32 @IS_EUC_RANGE_VALID(i8 zeroext %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %81

68:                                               ; preds = %63
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %4, align 8
  %71 = load i8, i8* %69, align 1
  store i8 %71, i8* %8, align 1
  %72 = load i8, i8* %8, align 1
  %73 = call i32 @IS_EUC_RANGE_VALID(i8 zeroext %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %81

76:                                               ; preds = %68
  br label %78

77:                                               ; preds = %54
  store i32 1, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %76
  br label %79

79:                                               ; preds = %78, %53, %31
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %75, %67, %62, %52, %44, %36, %30, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @IS_EUC_RANGE_VALID(i8 zeroext) #1

declare dso_local i32 @IS_HIGHBIT_SET(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
