; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_shared_alloc_win32.c_zend_shared_alloc_create_lock.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_shared_alloc_win32.c_zend_shared_alloc_create_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ACCEL_MUTEX_NAME = common dso_local global i32 0, align 4
@memory_mutex = common dso_local global i32 0, align 4
@ACCEL_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Cannot create mutex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_shared_alloc_create_lock() #0 {
  %1 = load i32, i32* @FALSE, align 4
  %2 = load i32, i32* @ACCEL_MUTEX_NAME, align 4
  %3 = call i32 @create_name_with_username(i32 %2)
  %4 = call i32 @CreateMutex(i32* null, i32 %1, i32 %3)
  store i32 %4, i32* @memory_mutex, align 4
  %5 = load i32, i32* @memory_mutex, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %9 = call i32 @zend_accel_error(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @memory_mutex, align 4
  %12 = call i32 @ReleaseMutex(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @CreateMutex(i32*, i32, i32) #1

declare dso_local i32 @create_name_with_username(i32) #1

declare dso_local i32 @zend_accel_error(i32, i8*) #1

declare dso_local i32 @ReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
