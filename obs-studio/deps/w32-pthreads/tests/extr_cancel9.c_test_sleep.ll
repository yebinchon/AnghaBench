; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel9.c_test_sleep.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel9.c_test_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTHREAD_CANCEL_ENABLE = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ASYNCHRONOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_sleep(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @PTHREAD_CANCEL_ENABLE, align 4
  %4 = call i32 @pthread_setcancelstate(i32 %3, i32* null)
  %5 = load i32, i32* @PTHREAD_CANCEL_ASYNCHRONOUS, align 4
  %6 = call i32 @pthread_setcanceltype(i32 %5, i32* null)
  %7 = call i32 @Sleep(i32 1000)
  ret i8* null
}

declare dso_local i32 @pthread_setcancelstate(i32, i32*) #1

declare dso_local i32 @pthread_setcanceltype(i32, i32*) #1

declare dso_local i32 @Sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
