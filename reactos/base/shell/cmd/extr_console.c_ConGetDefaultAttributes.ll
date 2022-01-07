; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_console.c_ConGetDefaultAttributes.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_console.c_ConGetDefaultAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"CONOUT$\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ConGetDefaultAttributes(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GENERIC_READ, align 4
  %9 = load i32, i32* @GENERIC_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FILE_SHARE_READ, align 4
  %12 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @OPEN_EXISTING, align 4
  %15 = call i64 @CreateFile(i32 %7, i32 %10, i32 %13, i32* null, i32 %14, i32 0, i32* null)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %2, align 8
  br label %34

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @GetConsoleScreenBufferInfo(i64 %22, %struct.TYPE_3__* %6)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %3, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @CloseHandle(i64 %31)
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %30, %19
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @GetConsoleScreenBufferInfo(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
