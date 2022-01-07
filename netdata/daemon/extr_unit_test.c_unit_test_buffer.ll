; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_unit_test_buffer.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_unit_test_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"string1: %s\0Astring2: %s\0Astring3: %s\0Astring4: %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\0Abuffer_sprintf() is faulty.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\0Astring  : %s (length %zu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\0Abuffer  : %s (length %zu)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\0Aexpected: %s (length %zu)\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"buffer_sprintf() works as expected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_test_buffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [2049 x i8], align 16
  %4 = alloca [9001 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = call i32* @buffer_create(i32 1)
  store i32* %8, i32** %2, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %20, %0
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 2048
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = srem i32 %13, 24
  %15 = add nsw i32 %14, 97
  %16 = trunc i32 %15 to i8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 %18
  store i8 %16, i8* %19, align 1
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %9

23:                                               ; preds = %9
  %24 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 2048
  store i8 0, i8* %24, align 16
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 0
  %28 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 0
  %29 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 0
  %30 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 0
  %31 = call i32 @buffer_sprintf(i32* %25, i8* %26, i8* %27, i8* %28, i8* %29, i8* %30)
  %32 = getelementptr inbounds [9001 x i8], [9001 x i8]* %4, i64 0, i64 0
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 0
  %35 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 0
  %36 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 0
  %37 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 0
  %38 = call i32 @snprintfz(i8* %32, i32 9000, i8* %33, i8* %34, i8* %35, i8* %36, i8* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i8* @buffer_tostring(i32* %39)
  store i8* %40, i8** %7, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = call i64 @buffer_strlen(i32* %41)
  %43 = getelementptr inbounds [9001 x i8], [9001 x i8]* %4, i64 0, i64 0
  %44 = call i64 @strlen(i8* %43)
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %23
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds [9001 x i8], [9001 x i8]* %4, i64 0, i64 0
  %49 = call i64 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46, %23
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @stderr, align 4
  %55 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 0
  %56 = getelementptr inbounds [2049 x i8], [2049 x i8]* %3, i64 0, i64 0
  %57 = call i64 @strlen(i8* %56)
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %55, i64 %57)
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32*, i32** %2, align 8
  %62 = call i64 @buffer_strlen(i32* %61)
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %60, i64 %62)
  %64 = load i32, i32* @stderr, align 4
  %65 = getelementptr inbounds [9001 x i8], [9001 x i8]* %4, i64 0, i64 0
  %66 = getelementptr inbounds [9001 x i8], [9001 x i8]* %4, i64 0, i64 0
  %67 = call i64 @strlen(i8* %66)
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %65, i64 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @buffer_free(i32* %69)
  store i32 -1, i32* %1, align 4
  br label %76

71:                                               ; preds = %46
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @buffer_free(i32* %74)
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %71, %51
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i32* @buffer_create(i32) #1

declare dso_local i32 @buffer_sprintf(i32*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @buffer_tostring(i32*) #1

declare dso_local i64 @buffer_strlen(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
