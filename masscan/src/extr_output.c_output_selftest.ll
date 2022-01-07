; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_output.c_output_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_output.c_output_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"foo.bar\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"foo.01.bar\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"output: failed selftest\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"foo.b/ar\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"foo.b/ar.02\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".foobar\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c".03.foobar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @output_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i8* @indexed_filename(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  store i8* %3, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %33

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @free(i8* %11)
  %13 = call i8* @indexed_filename(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 2)
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %33

20:                                               ; preds = %10
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @free(i8* %21)
  %23 = call i8* @indexed_filename(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 3)
  store i8* %23, i8** %2, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %33

30:                                               ; preds = %20
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @free(i8* %31)
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %30, %27, %17, %7
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i8* @indexed_filename(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
