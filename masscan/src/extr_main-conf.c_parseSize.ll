; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_parseSize.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_parseSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"--rotate-size: unknown character\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parseSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseSize(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %14, %1
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = and i32 %9, 255
  %11 = trunc i32 %10 to i8
  %12 = call i64 @isdigit(i8 signext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %5
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 %15, 10
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = sub nsw i32 %20, 48
  %22 = add nsw i32 %16, %21
  store i32 %22, i32* %4, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  br label %5

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @ispunct(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isspace(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i1 [ true, %26 ], [ %37, %32 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  br label %26

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isalpha(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49, %43
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %102

61:                                               ; preds = %53
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @tolower(i8 signext %64)
  switch i32 %65, label %96 [
    i32 107, label %66
    i32 109, label %71
    i32 103, label %76
    i32 116, label %81
    i32 112, label %86
    i32 101, label %91
  ]

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 1024
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %100

71:                                               ; preds = %61
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 1048576
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %100

76:                                               ; preds = %61
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 1073741824
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %100

81:                                               ; preds = %61
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 1099511627776
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %4, align 4
  br label %100

86:                                               ; preds = %61
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 1125899906842624
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %100

91:                                               ; preds = %61
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 1152921504606846976
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %4, align 4
  br label %100

96:                                               ; preds = %61
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %99 = call i32 @exit(i32 1) #3
  unreachable

100:                                              ; preds = %91, %86, %81, %76, %71, %66
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %59
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @ispunct(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @tolower(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
