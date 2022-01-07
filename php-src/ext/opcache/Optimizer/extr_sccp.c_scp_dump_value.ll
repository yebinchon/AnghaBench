; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_scp_dump_value.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_scp_dump_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" top\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" bot\00", align 1
@IS_ARRAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c" %s[\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"partial \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scp_dump_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scp_dump_value(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i64 @IS_TOP(i32* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %56

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @IS_BOT(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %55

16:                                               ; preds = %9
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @Z_TYPE_P(i32* %17)
  %19 = load i64, i64* @IS_ARRAY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @IS_PARTIAL_ARRAY(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21, %16
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i64 @IS_PARTIAL_ARRAY(i32* %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @Z_ARRVAL_P(i32* %33)
  %35 = call i32 @zend_dump_ht(i32 %34)
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %54

38:                                               ; preds = %21
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @IS_PARTIAL_OBJECT(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @Z_ARRVAL_P(i32* %45)
  %47 = call i32 @zend_dump_ht(i32 %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %53

50:                                               ; preds = %38
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @zend_dump_const(i32* %51)
  br label %53

53:                                               ; preds = %50, %42
  br label %54

54:                                               ; preds = %53, %25
  br label %55

55:                                               ; preds = %54, %13
  br label %56

56:                                               ; preds = %55, %6
  ret void
}

declare dso_local i64 @IS_TOP(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @IS_BOT(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @IS_PARTIAL_ARRAY(i32*) #1

declare dso_local i32 @zend_dump_ht(i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i64 @IS_PARTIAL_OBJECT(i32*) #1

declare dso_local i32 @zend_dump_const(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
