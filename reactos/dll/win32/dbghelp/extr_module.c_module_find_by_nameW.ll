; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_find_by_nameW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_find_by_nameW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_2__, %struct.module* }
%struct.TYPE_2__ = type { i32 }
%struct.process = type { %struct.module* }

@ERROR_INVALID_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.module* @module_find_by_nameW(%struct.process* %0, i32* %1) #0 {
  %3 = alloca %struct.module*, align 8
  %4 = alloca %struct.process*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.module*, align 8
  store %struct.process* %0, %struct.process** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.process*, %struct.process** %4, align 8
  %8 = getelementptr inbounds %struct.process, %struct.process* %7, i32 0, i32 0
  %9 = load %struct.module*, %struct.module** %8, align 8
  store %struct.module* %9, %struct.module** %6, align 8
  br label %10

10:                                               ; preds = %24, %2
  %11 = load %struct.module*, %struct.module** %6, align 8
  %12 = icmp ne %struct.module* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.module*, %struct.module** %6, align 8
  %16 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @strcmpiW(i32* %14, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = load %struct.module*, %struct.module** %6, align 8
  store %struct.module* %22, %struct.module** %3, align 8
  br label %31

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.module*, %struct.module** %6, align 8
  %26 = getelementptr inbounds %struct.module, %struct.module* %25, i32 0, i32 1
  %27 = load %struct.module*, %struct.module** %26, align 8
  store %struct.module* %27, %struct.module** %6, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %30 = call i32 @SetLastError(i32 %29)
  store %struct.module* null, %struct.module** %3, align 8
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.module*, %struct.module** %3, align 8
  ret %struct.module* %32
}

declare dso_local i32 @strcmpiW(i32*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
