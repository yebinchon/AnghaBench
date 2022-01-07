; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_service.c_kull_m_service_uninstall.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_service.c_kull_m_service_uninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i32] [i32 91, i32 43, i32 93, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 115, i32 116, i32 111, i32 112, i32 112, i32 101, i32 100, i32 10, i32 0], align 4
@ERROR_SERVICE_NOT_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i32] [i32 91, i32 42, i32 93, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 110, i32 111, i32 116, i32 32, i32 114, i32 117, i32 110, i32 110, i32 105, i32 110, i32 103, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [20 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 95, i32 115, i32 116, i32 111, i32 112, i32 0], align 4
@.str.3 = private unnamed_addr constant [26 x i32] [i32 91, i32 43, i32 93, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 114, i32 101, i32 109, i32 111, i32 118, i32 101, i32 100, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [22 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 95, i32 114, i32 101, i32 109, i32 111, i32 118, i32 101, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_service_uninstall(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @FALSE, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @TRUE, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @kull_m_service_stop(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @kprintf(i8* bitcast ([26 x i32]* @.str to i8*), i32 %11)
  br label %24

13:                                               ; preds = %1
  %14 = call i64 (...) @GetLastError()
  %15 = load i64, i64* @ERROR_SERVICE_NOT_ACTIVE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @kprintf(i8* bitcast ([30 x i32]* @.str.1 to i8*), i32 %18)
  br label %23

20:                                               ; preds = %13
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %4, align 8
  %22 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.2 to i8*))
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @kull_m_service_remove(i32 %28)
  store i64 %29, i64* %3, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @kprintf(i8* bitcast ([26 x i32]* @.str.3 to i8*), i32 %32)
  br label %36

34:                                               ; preds = %27
  %35 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([22 x i32]* @.str.4 to i8*))
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i64, i64* @STATUS_SUCCESS, align 8
  ret i64 %38
}

declare dso_local i64 @kull_m_service_stop(i32) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @kull_m_service_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
