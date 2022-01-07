; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_xactdesc.c_xact_identify.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_xactdesc.c_xact_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLOG_XACT_OPMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PREPARE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ABORT\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"COMMIT_PREPARED\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ABORT_PREPARED\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ASSIGNMENT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xact_identify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @XLOG_XACT_OPMASK, align 4
  %6 = and i32 %4, %5
  switch i32 %6, label %13 [
    i32 130, label %7
    i32 128, label %8
    i32 133, label %9
    i32 129, label %10
    i32 132, label %11
    i32 131, label %12
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %13

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %13

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %13

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %13

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %13

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %13

13:                                               ; preds = %1, %12, %11, %10, %9, %8, %7
  %14 = load i8*, i8** %3, align 8
  ret i8* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
