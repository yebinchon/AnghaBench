; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/inject-helper/extr_inject-helper.c_load_debug_privilege.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/inject-helper/extr_inject-helper.c_load_debug_privilege.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@SE_DEBUG_NAME = common dso_local global i32 0, align 4
@SE_PRIVILEGE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_debug_privilege to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_debug_privilege() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %6 = load i32, i32* @TOKEN_QUERY, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %1, align 4
  %8 = call i32 (...) @GetCurrentProcess()
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @OpenProcessToken(i32 %8, i32 %9, i32* %3)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %34

13:                                               ; preds = %0
  %14 = load i32, i32* @SE_DEBUG_NAME, align 4
  %15 = call i32 @LookupPrivilegeValue(i32* null, i32 %14, i32* %4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* @SE_PRIVILEGE_ENABLED, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @AdjustTokenPrivileges(i32 %29, i32 0, %struct.TYPE_5__* %2, i32 16, i32* null, i32* null)
  br label %31

31:                                               ; preds = %17, %13
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @CloseHandle(i32 %32)
  br label %34

34:                                               ; preds = %31, %12
  ret void
}

declare dso_local i32 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @LookupPrivilegeValue(i32*, i32, i32*) #1

declare dso_local i32 @AdjustTokenPrivileges(i32, i32, %struct.TYPE_5__*, i32, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
