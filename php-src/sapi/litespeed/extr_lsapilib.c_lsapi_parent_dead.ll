; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_parent_dead.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_parent_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_ppid = common dso_local global i64 0, align 8
@s_restored_ppid = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lsapi_parent_dead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsapi_parent_dead() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @s_ppid, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %24

5:                                                ; preds = %0
  %6 = load i64, i64* @s_restored_ppid, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load i64, i64* @s_restored_ppid, align 8
  %10 = call i32 @kill(i64 %9, i32 0)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @EPERM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %24

17:                                               ; preds = %12
  store i32 1, i32* %1, align 4
  br label %24

18:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %24

19:                                               ; preds = %5
  %20 = load i64, i64* @s_ppid, align 8
  %21 = call i64 (...) @getppid()
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %19, %18, %17, %16, %4
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i64 @getppid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
