; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_get_wait_event.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_get_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"BufferPin\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Extension\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"unknown wait event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pgstat_get_wait_event(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %53

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, -16777216
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 65535
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %50 [
    i32 129, label %21
    i32 130, label %25
    i32 135, label %28
    i32 136, label %29
    i32 134, label %33
    i32 133, label %37
    i32 131, label %38
    i32 128, label %42
    i32 132, label %46
  ]

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @GetLWLockIdentifier(i32 %22, i32 %23)
  store i8* %24, i8** %6, align 8
  br label %51

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @GetLockNameFromTagType(i32 %26)
  store i8* %27, i8** %6, align 8
  br label %51

28:                                               ; preds = %15
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %51

29:                                               ; preds = %15
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @pgstat_get_wait_activity(i32 %31)
  store i8* %32, i8** %6, align 8
  br label %51

33:                                               ; preds = %15
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @pgstat_get_wait_client(i32 %35)
  store i8* %36, i8** %6, align 8
  br label %51

37:                                               ; preds = %15
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %51

38:                                               ; preds = %15
  %39 = load i32, i32* %3, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i8* @pgstat_get_wait_ipc(i32 %40)
  store i8* %41, i8** %6, align 8
  br label %51

42:                                               ; preds = %15
  %43 = load i32, i32* %3, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i8* @pgstat_get_wait_timeout(i32 %44)
  store i8* %45, i8** %6, align 8
  br label %51

46:                                               ; preds = %15
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i8* @pgstat_get_wait_io(i32 %48)
  store i8* %49, i8** %6, align 8
  br label %51

50:                                               ; preds = %15
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %51

51:                                               ; preds = %50, %46, %42, %38, %37, %33, %29, %28, %25, %21
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** %2, align 8
  br label %53

53:                                               ; preds = %51, %14
  %54 = load i8*, i8** %2, align 8
  ret i8* %54
}

declare dso_local i8* @GetLWLockIdentifier(i32, i32) #1

declare dso_local i8* @GetLockNameFromTagType(i32) #1

declare dso_local i8* @pgstat_get_wait_activity(i32) #1

declare dso_local i8* @pgstat_get_wait_client(i32) #1

declare dso_local i8* @pgstat_get_wait_ipc(i32) #1

declare dso_local i8* @pgstat_get_wait_timeout(i32) #1

declare dso_local i8* @pgstat_get_wait_io(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
