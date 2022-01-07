; ModuleID = '/home/carl/AnghaBench/postgres/src/test/examples/extr_testlo64.c_overwrite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/examples/extr_testlo64.c_overwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INV_WRITE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot open large object %u\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"error in lo_lseek64: %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\0AWRITE FAILED!\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @overwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overwrite(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @INV_WRITE, align 4
  %17 = call i32 @lo_open(i32* %14, i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SEEK_SET, align 4
  %29 = call i64 @lo_lseek64(i32* %25, i32 %26, i32 %27, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @PQerrorMessage(i32* %33)
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i8* @malloc(i32 %38)
  store i8* %39, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %49, %36
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 88, i8* %48, align 1
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %40

52:                                               ; preds = %40
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 0, i8* %56, align 1
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %81, %52
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %58, %59
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 @lo_write(i32* %63, i32 %64, i8* %68, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %82

81:                                               ; preds = %62
  br label %57

82:                                               ; preds = %78, %57
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @lo_close(i32* %87, i32 %88)
  ret void
}

declare dso_local i32 @lo_open(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @lo_lseek64(i32*, i32, i32, i32) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @lo_write(i32*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @lo_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
