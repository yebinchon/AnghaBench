; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_set_context_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_set_context_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32)*, i64* (i32*, i32, i32*)* }
%struct.cpu_stack_walk = type { i32 }

@dbghelp_current_cpu = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"register %lu/%u size is too wide: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't read memory at %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"assigning to register %lu/%u of wrong size %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_stack_walk*, i32*, i64, i64, i64)* @set_context_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_context_reg(%struct.cpu_stack_walk* %0, i32* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.cpu_stack_walk*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca [16 x i8], align 16
  store %struct.cpu_stack_walk* %0, %struct.cpu_stack_walk** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbghelp_current_cpu, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i64, i32)*, i32 (i64, i32)** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 %17(i64 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbghelp_current_cpu, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64* (i32*, i32, i32*)*, i64* (i32*, i32, i32*)** %22, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i64* %23(i32* %24, i32 %25, i32* %12)
  store i64* %26, i64** %13, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %5
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp ugt i64 %31, 16
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %35, i32 %36)
  br label %66

38:                                               ; preds = %29
  %39 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %39, i64 %40, i8* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i64, i64* %9, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %66

49:                                               ; preds = %38
  %50 = load i64*, i64** %13, align 8
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @memcpy(i64* %50, i8* %51, i32 %52)
  br label %66

54:                                               ; preds = %5
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = icmp ne i64 %56, 8
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @FIXME(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %59, i32 %60, i32 %61)
  br label %66

63:                                               ; preds = %54
  %64 = load i64, i64* %9, align 8
  %65 = load i64*, i64** %13, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %33, %45, %58, %63, %49
  ret void
}

declare dso_local i32 @FIXME(i8*, i64, i32, i32) #1

declare dso_local i32 @sw_read_mem(%struct.cpu_stack_walk*, i64, i8*, i32) #1

declare dso_local i32 @WARN(i8*, i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
