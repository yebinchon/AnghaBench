; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_endproc.c_ShutdownProcessTreeHelper.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_endproc.c_ShutdownProcessTreeHelper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32 }

@PROCESS_TERMINATE = common dso_local global i32 0, align 4
@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShutdownProcessTreeHelper(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 32, i32* %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @Process32FirstW(i64 %12, %struct.TYPE_4__* %9)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %57, %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %16
  %22 = load i32, i32* @PROCESS_TERMINATE, align 4
  %23 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FALSE, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @OpenProcess(i32 %24, i32 %25, i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @IsCriticalProcess(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31, %21
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @CloseHandle(i64 %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %57

42:                                               ; preds = %31
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ShutdownProcessTreeHelper(i64 %43, i64 %44, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @CloseHandle(i64 %50)
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %4, align 4
  br label %65

53:                                               ; preds = %42
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @CloseHandle(i64 %54)
  br label %56

56:                                               ; preds = %53, %16
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @Process32NextW(i64 %58, %struct.TYPE_4__* %9)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %16, label %61

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %3
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @TerminateProcess(i64 %63, i32 0)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %49
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @Process32FirstW(i64, %struct.TYPE_4__*) #2

declare dso_local i64 @OpenProcess(i32, i32, i64) #2

declare dso_local i64 @IsCriticalProcess(i64) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i64 @Process32NextW(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @TerminateProcess(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
