; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_pgstrcasecmp.c_pg_strncasecmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_pgstrcasecmp.c_pg_strncasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_strncasecmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %94, %3
  %11 = load i64, i64* %7, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %7, align 8
  %13 = icmp ugt i64 %11, 0
  br i1 %13, label %14, label %95

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* %15, align 1
  store i8 %17, i8* %8, align 1
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  %20 = load i8, i8* %18, align 1
  store i8 %20, i8* %9, align 1
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %9, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %89

26:                                               ; preds = %14
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sge i32 %28, 65
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i8, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sle i32 %32, 90
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %36, 32
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %8, align 1
  br label %51

39:                                               ; preds = %30, %26
  %40 = load i8, i8* %8, align 1
  %41 = call i64 @IS_HIGHBIT_SET(i8 zeroext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i8, i8* %8, align 1
  %45 = call i64 @isupper(i8 zeroext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8, i8* %8, align 1
  %49 = call zeroext i8 @tolower(i8 zeroext %48)
  store i8 %49, i8* %8, align 1
  br label %50

50:                                               ; preds = %47, %43, %39
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i8, i8* %9, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp sge i32 %53, 65
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i8, i8* %9, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sle i32 %57, 90
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8, i8* %9, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %61, 32
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %9, align 1
  br label %76

64:                                               ; preds = %55, %51
  %65 = load i8, i8* %9, align 1
  %66 = call i64 @IS_HIGHBIT_SET(i8 zeroext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i8, i8* %9, align 1
  %70 = call i64 @isupper(i8 zeroext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i8, i8* %9, align 1
  %74 = call zeroext i8 @tolower(i8 zeroext %73)
  store i8 %74, i8* %9, align 1
  br label %75

75:                                               ; preds = %72, %68, %64
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i8, i8* %8, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %9, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %9, align 1
  %86 = zext i8 %85 to i32
  %87 = sub nsw i32 %84, %86
  store i32 %87, i32* %4, align 4
  br label %96

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %14
  %90 = load i8, i8* %8, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %95

94:                                               ; preds = %89
  br label %10

95:                                               ; preds = %93, %10
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %82
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @IS_HIGHBIT_SET(i8 zeroext) #1

declare dso_local i64 @isupper(i8 zeroext) #1

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
