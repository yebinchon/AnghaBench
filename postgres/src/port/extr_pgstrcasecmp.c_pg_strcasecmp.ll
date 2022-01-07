; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_pgstrcasecmp.c_pg_strcasecmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_pgstrcasecmp.c_pg_strcasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_strcasecmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %88, %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %6, align 1
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %7, align 1
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %8
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %22, 65
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sle i32 %26, 90
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, 32
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %6, align 1
  br label %45

33:                                               ; preds = %24, %20
  %34 = load i8, i8* %6, align 1
  %35 = call i64 @IS_HIGHBIT_SET(i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i8, i8* %6, align 1
  %39 = call i64 @isupper(i8 zeroext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8, i8* %6, align 1
  %43 = call zeroext i8 @tolower(i8 zeroext %42)
  store i8 %43, i8* %6, align 1
  br label %44

44:                                               ; preds = %41, %37, %33
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp sge i32 %47, 65
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sle i32 %51, 90
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, 32
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %7, align 1
  br label %70

58:                                               ; preds = %49, %45
  %59 = load i8, i8* %7, align 1
  %60 = call i64 @IS_HIGHBIT_SET(i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i8, i8* %7, align 1
  %64 = call i64 @isupper(i8 zeroext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8, i8* %7, align 1
  %68 = call zeroext i8 @tolower(i8 zeroext %67)
  store i8 %68, i8* %7, align 1
  br label %69

69:                                               ; preds = %66, %62, %58
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i8, i8* %6, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %7, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i8, i8* %6, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %7, align 1
  %80 = zext i8 %79 to i32
  %81 = sub nsw i32 %78, %80
  store i32 %81, i32* %3, align 4
  br label %90

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %8
  %84 = load i8, i8* %6, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %89

88:                                               ; preds = %83
  br label %8

89:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32, i32* %3, align 4
  ret i32 %91
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
