; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_getLockingMode.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_getLockingMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"exclusive\00", align 1
@PAGER_LOCKINGMODE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@PAGER_LOCKINGMODE_NORMAL = common dso_local global i32 0, align 4
@PAGER_LOCKINGMODE_QUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getLockingMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getLockingMode(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @sqlite3StrICmp(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 0, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* @PAGER_LOCKINGMODE_EXCLUSIVE, align 4
  store i32 %11, i32* %2, align 4
  br label %21

12:                                               ; preds = %6
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @sqlite3StrICmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 0, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @PAGER_LOCKINGMODE_NORMAL, align 4
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* @PAGER_LOCKINGMODE_QUERY, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %16, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
