; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/eval/extr_eval.c_print_parsed_as_constant.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/eval/extr_eval.c_print_parsed_as_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@CALCULATED_NUMBER_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_parsed_as_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_parsed_as_constant(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [101 x i8], align 16
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @isnan(i32 %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @buffer_strcat(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %62

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @isinf(i32 %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @buffer_strcat(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %62

22:                                               ; preds = %14
  %23 = getelementptr inbounds [101 x i8], [101 x i8]* %5, i64 0, i64 0
  %24 = load i32, i32* @CALCULATED_NUMBER_FORMAT, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @snprintfz(i8* %23, i32 100, i32 %24, i32 %25)
  %27 = getelementptr inbounds [101 x i8], [101 x i8]* %5, i64 0, i64 0
  %28 = call i32 @strlen(i8* %27)
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [101 x i8], [101 x i8]* %5, i64 0, i64 %30
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %43, %22
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds [101 x i8], [101 x i8]* %5, i64 0, i64 0
  %35 = icmp ugt i8* %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 48
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %32 ], [ %40, %36 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load i8*, i8** %6, align 8
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %6, align 8
  br label %32

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds [101 x i8], [101 x i8]* %5, i64 0, i64 0
  %50 = icmp ugt i8* %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %56, %51, %47
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds [101 x i8], [101 x i8]* %5, i64 0, i64 0
  %61 = call i32 @buffer_strcat(i32* %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %19, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isnan(i32) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

declare dso_local i32 @isinf(i32) #1

declare dso_local i32 @snprintfz(i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
