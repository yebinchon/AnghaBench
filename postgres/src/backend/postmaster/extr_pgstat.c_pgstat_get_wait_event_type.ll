; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_get_wait_event_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_get_wait_event_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"LWLock\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"BufferPin\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Activity\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Client\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Extension\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"IPC\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pgstat_get_wait_event_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %25

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, -16777216
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %22 [
    i32 129, label %13
    i32 130, label %14
    i32 135, label %15
    i32 136, label %16
    i32 134, label %17
    i32 133, label %18
    i32 131, label %19
    i32 128, label %20
    i32 132, label %21
  ]

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %23

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %23

15:                                               ; preds = %9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %23

16:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %23

17:                                               ; preds = %9
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %23

18:                                               ; preds = %9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %23

19:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %23

20:                                               ; preds = %9
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %23

21:                                               ; preds = %9
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %23

22:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14, %13
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %23, %8
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
