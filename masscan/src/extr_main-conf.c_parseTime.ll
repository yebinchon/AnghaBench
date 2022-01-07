; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_parseTime.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_parseTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"--rotate-offset: unknown character\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"--rotate-offset: value is greater than 1 day\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parseTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseTime(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %11, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 45
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  store i32 1, i32* %5, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  br label %6

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %24, %14
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, 255
  %21 = trunc i32 %20 to i8
  %22 = call i64 @isdigit(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 10
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 48
  %32 = add nsw i32 %26, %31
  store i32 %32, i32* %4, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  br label %15

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @ispunct(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isspace(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi i1 [ true, %36 ], [ %47, %42 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %3, align 8
  br label %36

53:                                               ; preds = %48
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @isalpha(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %59, %53
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %110

71:                                               ; preds = %63
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @tolower(i8 signext %74)
  switch i32 %75, label %91 [
    i32 115, label %76
    i32 109, label %79
    i32 104, label %82
    i32 100, label %85
    i32 119, label %88
  ]

76:                                               ; preds = %71
  %77 = load i32, i32* %4, align 4
  %78 = mul nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %95

79:                                               ; preds = %71
  %80 = load i32, i32* %4, align 4
  %81 = mul nsw i32 %80, 60
  store i32 %81, i32* %4, align 4
  br label %95

82:                                               ; preds = %71
  %83 = load i32, i32* %4, align 4
  %84 = mul nsw i32 %83, 3600
  store i32 %84, i32* %4, align 4
  br label %95

85:                                               ; preds = %71
  %86 = load i32, i32* %4, align 4
  %87 = mul nsw i32 %86, 86400
  store i32 %87, i32* %4, align 4
  br label %95

88:                                               ; preds = %71
  %89 = load i32, i32* %4, align 4
  %90 = mul nsw i32 %89, 604800
  store i32 %90, i32* %4, align 4
  br label %95

91:                                               ; preds = %71
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 @fprintf(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %94 = call i32 @exit(i32 1) #3
  unreachable

95:                                               ; preds = %88, %85, %82, %79, %76
  %96 = load i32, i32* %4, align 4
  %97 = icmp sge i32 %96, 86400
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %101 = call i32 @exit(i32 1) #3
  unreachable

102:                                              ; preds = %95
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = sub nsw i32 86400, %106
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %69
  %111 = load i32, i32* %2, align 4
  ret i32 %111
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
