; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_seekAndWriteFd.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_seekAndWriteFd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_START = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TIMER_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WRITE   %-3d %5d %7lld %llu\0A\00", align 1
@TIMER_ELAPSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32*)* @seekAndWriteFd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seekAndWriteFd(i32 %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %14, 131071
  %16 = icmp eq i32 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 2
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 131071
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @TIMER_START, align 4
  br label %30

30:                                               ; preds = %51, %5
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @lseek(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  store i32 -1, i32* %12, align 4
  %35 = call i32 @SimulateIOError(i32 -1)
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 -1, i32* %11, align 4
  br label %53

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @osWrite(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @errno, align 4
  %49 = load i32, i32* @EINTR, align 4
  %50 = icmp eq i32 %48, %49
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %30, label %53

53:                                               ; preds = %51, %38
  %54 = load i32, i32* @TIMER_END, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @TIMER_ELAPSED, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @OSTRACE(i8* %60)
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @errno, align 4
  %66 = load i32*, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %53
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @SimulateIOError(i32) #1

declare dso_local i32 @osWrite(i32, i8*, i32) #1

declare dso_local i32 @OSTRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
