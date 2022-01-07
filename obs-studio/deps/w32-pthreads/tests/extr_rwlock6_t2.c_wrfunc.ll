; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_rwlock6_t2.c_wrfunc.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_rwlock6_t2.c_wrfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rwlock1 = common dso_local global i32 0, align 4
@abstime = common dso_local global i32 0, align 4
@bankAccount = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wrfunc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = call i32 @pthread_rwlock_timedwrlock(i32* @rwlock1, i32* @abstime)
  store i32 %5, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call i32 @Sleep(i32 2000)
  %16 = load i64, i64* @bankAccount, align 8
  %17 = add nsw i64 %16, 10
  store i64 %17, i64* @bankAccount, align 8
  %18 = call i64 @pthread_rwlock_unlock(i32* @rwlock1)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* @bankAccount, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %2, align 8
  br label %37

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  store i8* inttoptr (i64 100 to i8*), i8** %2, align 8
  br label %37

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  store i8* inttoptr (i64 -1 to i8*), i8** %2, align 8
  br label %37

37:                                               ; preds = %36, %29, %10
  %38 = load i8*, i8** %2, align 8
  ret i8* %38
}

declare dso_local i32 @pthread_rwlock_timedwrlock(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @pthread_rwlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
