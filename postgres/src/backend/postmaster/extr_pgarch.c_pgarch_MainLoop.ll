; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgarch.c_pgarch_MainLoop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgarch.c_pgarch_MainLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wakened = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@ready_to_stop = common dso_local global i32 0, align 4
@got_SIGHUP = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@got_SIGTERM = common dso_local global i64 0, align 8
@last_sigterm_time = common dso_local global i64 0, align 8
@PGARCH_AUTOWAKE_INTERVAL = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_POSTMASTER_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_ARCHIVER_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pgarch_MainLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgarch_MainLoop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* @wakened, align 4
  br label %7

7:                                                ; preds = %86, %0
  %8 = load i32, i32* @MyLatch, align 4
  %9 = call i32 @ResetLatch(i32 %8)
  %10 = load i32, i32* @ready_to_stop, align 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @got_SIGHUP, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  store i32 0, i32* @got_SIGHUP, align 4
  %14 = load i32, i32* @PGC_SIGHUP, align 4
  %15 = call i32 @ProcessConfigFile(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  %17 = load i64, i64* @got_SIGTERM, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = call i8* @time(i32* null)
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* @last_sigterm_time, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8
  store i64 %25, i64* @last_sigterm_time, align 8
  br label %34

26:                                               ; preds = %19
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @last_sigterm_time, align 8
  %29 = sub nsw i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = icmp uge i32 %30, 60
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %90

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %24
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i32, i32* @wakened, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %35
  store i32 0, i32* @wakened, align 4
  %42 = call i32 (...) @pgarch_ArchiverCopyLoop()
  %43 = call i8* @time(i32* null)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %85, label %48

48:                                               ; preds = %45
  %49 = call i8* @time(i32* null)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @PGARCH_AUTOWAKE_INTERVAL, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %1, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sub nsw i32 %51, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %48
  %59 = load i32, i32* @MyLatch, align 4
  %60 = load i32, i32* @WL_LATCH_SET, align 4
  %61 = load i32, i32* @WL_TIMEOUT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %66, 1000
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @WAIT_EVENT_ARCHIVER_MAIN, align 4
  %70 = call i32 @WaitLatch(i32 %59, i32 %64, i32 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @WL_TIMEOUT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  store i32 1, i32* @wakened, align 4
  br label %76

76:                                               ; preds = %75, %58
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %76
  br label %84

83:                                               ; preds = %48
  store i32 1, i32* @wakened, align 4
  br label %84

84:                                               ; preds = %83, %82
  br label %85

85:                                               ; preds = %84, %45
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %2, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %7, label %90

90:                                               ; preds = %86, %32
  ret void
}

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @ProcessConfigFile(i32) #1

declare dso_local i8* @time(i32*) #1

declare dso_local i32 @pgarch_ArchiverCopyLoop(...) #1

declare dso_local i32 @WaitLatch(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
