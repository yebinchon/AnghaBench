; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_w32_reg_write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_w32_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@THREAD_SUSPEND_RESUME = common dso_local global i32 0, align 4
@THREAD_SET_CONTEXT = common dso_local global i32 0, align 4
@R_SYS_BITS_64 = common dso_local global i32 0, align 4
@THREAD_QUERY_INFORMATION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"w32_reg_write/OpenThread\00", align 1
@R_REG_TYPE_DRX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w32_reg_write(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @THREAD_SUSPEND_RESUME, align 4
  %15 = load i32, i32* @THREAD_SET_CONTEXT, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @R_SYS_BITS_64, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @THREAD_QUERY_INFORMATION, align 4
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @w32_OpenThread(i32 %27, i32 %28, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = call i32 @r_sys_perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %85

37:                                               ; preds = %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__is_thread_alive(%struct.TYPE_5__* %38, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @__suspend_thread(i32 %46, i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @CloseHandle(i32 %53)
  store i32 0, i32* %5, align 4
  br label %85

55:                                               ; preds = %45, %37
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @R_REG_TYPE_DRX, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @__transfer_drx(%struct.TYPE_5__* %60, i32* %61)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @__set_thread_context(i32 %64, i32* %65, i32 %66, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @__resume_thread(i32 %74, i32 %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %80, %73, %63
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @CloseHandle(i32 %82)
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %52, %35
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @w32_OpenThread(i32, i32, i32) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i32 @__is_thread_alive(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @__suspend_thread(i32, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @__transfer_drx(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @__set_thread_context(i32, i32*, i32, i32) #1

declare dso_local i32 @__resume_thread(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
