; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_stringutils.c_quote_if_needed.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_stringutils.c_quote_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_if_needed(i8* %0, i8* %1, i8 signext %2, i8 signext %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i8, i8* %8, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = mul nsw i32 2, %28
  %30 = add nsw i32 %29, 3
  %31 = call i8* @pg_malloc(i32 %30)
  store i8* %31, i8** %12, align 8
  store i8* %31, i8** %13, align 8
  %32 = load i8, i8* %8, align 1
  %33 = load i8*, i8** %13, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %13, align 8
  store i8 %32, i8* %33, align 1
  br label %35

35:                                               ; preds = %83, %5
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %35
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %15, align 1
  %42 = load i8, i8* %15, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %8, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  store i32 1, i32* %14, align 4
  %48 = load i8, i8* %8, align 1
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %13, align 8
  store i8 %48, i8* %49, align 1
  br label %69

51:                                               ; preds = %39
  %52 = load i8, i8* %15, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* %9, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  store i32 1, i32* %14, align 4
  %58 = load i8, i8* %9, align 1
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %13, align 8
  store i8 %58, i8* %59, align 1
  br label %68

61:                                               ; preds = %51
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %15, align 1
  %64 = call i64 @strchr(i8* %62, i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 1, i32* %14, align 4
  br label %67

67:                                               ; preds = %66, %61
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %47
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @PQmblen(i8* %70, i32 %71)
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %77, %69
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %16, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %11, align 8
  %80 = load i8, i8* %78, align 1
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %13, align 8
  store i8 %80, i8* %81, align 1
  br label %73

83:                                               ; preds = %73
  br label %35

84:                                               ; preds = %35
  %85 = load i8, i8* %8, align 1
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %13, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i8*, i8** %13, align 8
  store i8 0, i8* %88, align 1
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @free(i8* %92)
  store i8* null, i8** %12, align 8
  br label %94

94:                                               ; preds = %91, %84
  %95 = load i8*, i8** %12, align 8
  ret i8* %95
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @pg_malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @PQmblen(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
