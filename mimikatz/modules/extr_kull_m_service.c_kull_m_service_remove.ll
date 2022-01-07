; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_service.c_kull_m_service_remove.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_service.c_kull_m_service_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SERVICES_ACTIVE_DATABASE = common dso_local global i32 0, align 4
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_service_remove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @SERVICES_ACTIVE_DATABASE, align 4
  %8 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %9 = call i32 @OpenSCManager(i32* null, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @DELETE, align 4
  %15 = call i32 @OpenService(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DeleteService(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @CloseServiceHandle(i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @CloseServiceHandle(i32 %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @OpenSCManager(i32*, i32, i32) #1

declare dso_local i32 @OpenService(i32, i32, i32) #1

declare dso_local i32 @DeleteService(i32) #1

declare dso_local i32 @CloseServiceHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
