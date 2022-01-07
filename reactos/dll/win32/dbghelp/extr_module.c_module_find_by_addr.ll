; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_find_by_addr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_find_by_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, %struct.TYPE_2__, %struct.module* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.process = type { %struct.module* }

@DMT_UNKNOWN = common dso_local global i32 0, align 4
@DMT_PE = common dso_local global i32 0, align 4
@DMT_ELF = common dso_local global i32 0, align 4
@DMT_MACHO = common dso_local global i32 0, align 4
@ERROR_MOD_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.module* @module_find_by_addr(%struct.process* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.process*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.module*, align 8
  store %struct.process* %0, %struct.process** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @DMT_UNKNOWN, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load %struct.process*, %struct.process** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @DMT_PE, align 4
  %16 = call %struct.module* @module_find_by_addr(%struct.process* %13, i64 %14, i32 %15)
  store %struct.module* %16, %struct.module** %8, align 8
  %17 = icmp ne %struct.module* %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = load %struct.process*, %struct.process** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @DMT_ELF, align 4
  %22 = call %struct.module* @module_find_by_addr(%struct.process* %19, i64 %20, i32 %21)
  store %struct.module* %22, %struct.module** %8, align 8
  %23 = icmp ne %struct.module* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.process*, %struct.process** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @DMT_MACHO, align 4
  %28 = call %struct.module* @module_find_by_addr(%struct.process* %25, i64 %26, i32 %27)
  store %struct.module* %28, %struct.module** %8, align 8
  %29 = icmp ne %struct.module* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %18, %12
  %31 = load %struct.module*, %struct.module** %8, align 8
  store %struct.module* %31, %struct.module** %4, align 8
  br label %77

32:                                               ; preds = %24
  br label %73

33:                                               ; preds = %3
  %34 = load %struct.process*, %struct.process** %5, align 8
  %35 = getelementptr inbounds %struct.process, %struct.process* %34, i32 0, i32 0
  %36 = load %struct.module*, %struct.module** %35, align 8
  store %struct.module* %36, %struct.module** %8, align 8
  br label %37

37:                                               ; preds = %68, %33
  %38 = load %struct.module*, %struct.module** %8, align 8
  %39 = icmp ne %struct.module* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.module*, %struct.module** %8, align 8
  %43 = getelementptr inbounds %struct.module, %struct.module* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.module*, %struct.module** %8, align 8
  %49 = getelementptr inbounds %struct.module, %struct.module* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %47, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.module*, %struct.module** %8, align 8
  %56 = getelementptr inbounds %struct.module, %struct.module* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.module*, %struct.module** %8, align 8
  %60 = getelementptr inbounds %struct.module, %struct.module* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  %64 = icmp slt i64 %54, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load %struct.module*, %struct.module** %8, align 8
  store %struct.module* %66, %struct.module** %4, align 8
  br label %77

67:                                               ; preds = %53, %46, %40
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.module*, %struct.module** %8, align 8
  %70 = getelementptr inbounds %struct.module, %struct.module* %69, i32 0, i32 2
  %71 = load %struct.module*, %struct.module** %70, align 8
  store %struct.module* %71, %struct.module** %8, align 8
  br label %37

72:                                               ; preds = %37
  br label %73

73:                                               ; preds = %72, %32
  %74 = load i32, i32* @ERROR_MOD_NOT_FOUND, align 4
  %75 = call i32 @SetLastError(i32 %74)
  %76 = load %struct.module*, %struct.module** %8, align 8
  store %struct.module* %76, %struct.module** %4, align 8
  br label %77

77:                                               ; preds = %73, %65, %30
  %78 = load %struct.module*, %struct.module** %4, align 8
  ret %struct.module* %78
}

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
