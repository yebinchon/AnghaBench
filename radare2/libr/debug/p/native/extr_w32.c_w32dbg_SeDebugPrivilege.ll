; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32dbg_SeDebugPrivilege.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32dbg_SeDebugPrivilege.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@SE_DEBUG_NAME = common dso_local global i32 0, align 4
@SE_PRIVILEGE_ENABLED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to change token privileges 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @w32dbg_SeDebugPrivilege to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w32dbg_SeDebugPrivilege() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  store i32* null, i32** %4, align 8
  %6 = call i32 (...) @GetCurrentProcess()
  %7 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %8 = call i32 @OpenProcessToken(i32 %6, i32 %7, i32** %4)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %53

11:                                               ; preds = %0
  %12 = load i32, i32* @SE_DEBUG_NAME, align 4
  %13 = call i32 @LookupPrivilegeValue(i32* null, i32 %12, i32* %5)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @CloseHandle(i32* %16)
  store i32 0, i32* %1, align 4
  br label %53

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 8
  %25 = load i64, i64* @SE_PRIVILEGE_ENABLED, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* @FALSE, align 8
  %32 = call i64 @AdjustTokenPrivileges(i32* %30, i64 %31, %struct.TYPE_5__* %3, i32 0, i32* null, i32* null)
  %33 = load i64, i64* @FALSE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SE_PRIVILEGE_ENABLED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %35
  br label %49

45:                                               ; preds = %18
  %46 = call i64 (...) @GetLastError()
  %47 = trunc i64 %46 to i32
  %48 = call i32 @eprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @CloseHandle(i32* %50)
  %52 = load i32, i32* %2, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %49, %15, %10
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @OpenProcessToken(i32, i32, i32**) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @LookupPrivilegeValue(i32*, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i64 @AdjustTokenPrivileges(i32*, i64, %struct.TYPE_5__*, i32, i32*, i32*) #1

declare dso_local i32 @eprintf(i8*, i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
