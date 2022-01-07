; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_xlogdesc.c_xlog_identify.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_xlogdesc.c_xlog_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLR_INFO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CHECKPOINT_SHUTDOWN\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"CHECKPOINT_ONLINE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NOOP\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"NEXTOID\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SWITCH\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"BACKUP_END\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"PARAMETER_CHANGE\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"RESTORE_POINT\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"FPW_CHANGE\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"END_OF_RECOVERY\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"FPI\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"FPI_FOR_HINT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xlog_identify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @XLR_INFO_MASK, align 4
  %6 = xor i32 %5, -1
  %7 = and i32 %4, %6
  switch i32 %7, label %20 [
    i32 137, label %8
    i32 138, label %9
    i32 131, label %10
    i32 132, label %11
    i32 128, label %12
    i32 139, label %13
    i32 130, label %14
    i32 129, label %15
    i32 133, label %16
    i32 136, label %17
    i32 135, label %18
    i32 134, label %19
  ]

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %20

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %20

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %20

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %20

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %20

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %20

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %20

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %20

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %20

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %20

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %20

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %20

20:                                               ; preds = %1, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
