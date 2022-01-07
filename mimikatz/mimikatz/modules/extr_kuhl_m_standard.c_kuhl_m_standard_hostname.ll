; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_hostname.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 32, i32 40, i32 37, i32 115, i32 41, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_standard_hostname(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %6 = load i32, i32* @TRUE, align 4
  %7 = call i64 @kull_m_net_getComputerName(i32 %6, i32** %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str to i8*), i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @LocalFree(i32* %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i64 @kull_m_net_getComputerName(i32 %15, i32** %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.1 to i8*), i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @LocalFree(i32* %21)
  br label %23

23:                                               ; preds = %18, %14
  %24 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %25 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %25
}

declare dso_local i64 @kull_m_net_getComputerName(i32, i32**) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
