; ModuleID = '/home/carl/AnghaBench/postgres/src/test/examples/extr_testlibpq3.c_show_binary_results.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/examples/extr_testlibpq3.c_show_binary_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"tuple %d: got\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" i = (%d bytes) %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c" t = (%d bytes) '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" b = (%d bytes) \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @show_binary_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_binary_results(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @PQfnumber(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @PQfnumber(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @PQfnumber(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %78, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @PQntuples(i32* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %19
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @PQgetvalue(i32* %25, i32 %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i8* @PQgetvalue(i32* %29, i32 %30, i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @PQgetvalue(i32* %33, i32 %34, i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohl(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @PQgetlength(i32* %41, i32 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @PQgetlength(i32* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @PQgetlength(i32* %53, i32 %54, i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %56, i8* %57)
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %73, %24
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %61

76:                                               ; preds = %61
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %19

81:                                               ; preds = %19
  ret void
}

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @PQgetlength(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
