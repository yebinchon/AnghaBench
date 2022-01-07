; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_yesno_prompt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_yesno_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%s (%s/%s) \00", align 1
@PG_YESLETTER = common dso_local global i8* null, align 8
@PG_NOLETTER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Please answer \22%s\22 or \22%s\22.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yesno_prompt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [10 x i8], align 1
  store i8* %0, i8** %3, align 8
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %7 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @_(i8* %8)
  %10 = load i8*, i8** @PG_YESLETTER, align 8
  %11 = call i8* @_(i8* %10)
  %12 = load i8*, i8** @PG_NOLETTER, align 8
  %13 = call i8* @_(i8* %12)
  %14 = call i32 @snprintf(i8* %6, i32 256, i8* %7, i8* %9, i8* %11, i8* %13)
  br label %15

15:                                               ; preds = %32, %1
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %18 = call i32 @simple_prompt(i8* %16, i8* %17, i32 10, i32 1)
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %20 = load i8*, i8** @PG_YESLETTER, align 8
  %21 = call i8* @_(i8* %20)
  %22 = call i64 @strcmp(i8* %19, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %39

25:                                               ; preds = %15
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %27 = load i8*, i8** @PG_NOLETTER, align 8
  %28 = call i8* @_(i8* %27)
  %29 = call i64 @strcmp(i8* %26, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %39

32:                                               ; preds = %25
  %33 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** @PG_YESLETTER, align 8
  %35 = call i8* @_(i8* %34)
  %36 = load i8*, i8** @PG_NOLETTER, align 8
  %37 = call i8* @_(i8* %36)
  %38 = call i32 @printf(i8* %33, i8* %35, i8* %37)
  br label %15

39:                                               ; preds = %31, %24
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @simple_prompt(i8*, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
