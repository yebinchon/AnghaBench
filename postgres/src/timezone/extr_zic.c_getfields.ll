; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_getfields.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_getfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Odd number of quotation marks\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*)* @getfields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @getfields(i8* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8** null, i8*** %2, align 8
  br label %111

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = add nsw i64 %12, 1
  %14 = call i32 @size_product(i64 %13, i32 8)
  %15 = call i8** @emalloc(i32 %14)
  store i8** %15, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %103, %10
  br label %17

17:                                               ; preds = %22, %16
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @is_space(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 35
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  br label %105

36:                                               ; preds = %30
  %37 = load i8*, i8** %3, align 8
  store i8* %37, i8** %4, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  store i8* %37, i8** %42, align 8
  br label %43

43:                                               ; preds = %93, %36
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %3, align 8
  %46 = load i8, i8* %44, align 1
  %47 = load i8*, i8** %4, align 8
  store i8 %46, i8* %47, align 1
  %48 = sext i8 %46 to i32
  %49 = icmp ne i32 %48, 34
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  br label %76

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %74, %53
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %3, align 8
  %57 = load i8, i8* %55, align 1
  %58 = load i8*, i8** %4, align 8
  store i8 %57, i8* %58, align 1
  %59 = sext i8 %57 to i32
  %60 = icmp ne i32 %59, 34
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  br label %74

69:                                               ; preds = %61
  %70 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @error(i32 %70)
  %72 = load i32, i32* @EXIT_FAILURE, align 4
  %73 = call i32 @exit(i32 %72) #3
  unreachable

74:                                               ; preds = %66
  br label %54

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %50
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %3, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load i8*, i8** %3, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 35
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i8*, i8** %3, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @is_space(i8 signext %89)
  %91 = icmp ne i64 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %87, %82, %77
  %94 = phi i1 [ false, %82 ], [ false, %77 ], [ %92, %87 ]
  br i1 %94, label %43, label %95

95:                                               ; preds = %93
  %96 = load i8*, i8** %3, align 8
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @is_space(i8 signext %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %3, align 8
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i8*, i8** %4, align 8
  store i8 0, i8* %104, align 1
  br label %16

105:                                              ; preds = %35
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  store i8* null, i8** %109, align 8
  %110 = load i8**, i8*** %5, align 8
  store i8** %110, i8*** %2, align 8
  br label %111

111:                                              ; preds = %105, %9
  %112 = load i8**, i8*** %2, align 8
  ret i8** %112
}

declare dso_local i8** @emalloc(i32) #1

declare dso_local i32 @size_product(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @is_space(i8 signext) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

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
