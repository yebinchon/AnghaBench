; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_error_severity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_error_severity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"LOG\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"NOTICE\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"FATAL\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"PANIC\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @error_severity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @error_severity(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %21 [
    i32 140, label %5
    i32 139, label %5
    i32 138, label %5
    i32 137, label %5
    i32 136, label %5
    i32 132, label %7
    i32 131, label %7
    i32 133, label %9
    i32 130, label %11
    i32 128, label %13
    i32 135, label %15
    i32 134, label %17
    i32 129, label %19
  ]

5:                                                ; preds = %1, %1, %1, %1, %1
  %6 = call i8* @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %3, align 8
  br label %22

7:                                                ; preds = %1, %1
  %8 = call i8* @gettext_noop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %3, align 8
  br label %22

9:                                                ; preds = %1
  %10 = call i8* @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %10, i8** %3, align 8
  br label %22

11:                                               ; preds = %1
  %12 = call i8* @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %12, i8** %3, align 8
  br label %22

13:                                               ; preds = %1
  %14 = call i8* @gettext_noop(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %14, i8** %3, align 8
  br label %22

15:                                               ; preds = %1
  %16 = call i8* @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %16, i8** %3, align 8
  br label %22

17:                                               ; preds = %1
  %18 = call i8* @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i8* %18, i8** %3, align 8
  br label %22

19:                                               ; preds = %1
  %20 = call i8* @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i8* %20, i8** %3, align 8
  br label %22

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %22

22:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7, %5
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

declare dso_local i8* @gettext_noop(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
