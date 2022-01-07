; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_output.c_kull_m_output_init.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_output.c_kull_m_output_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@_O_U8TEXT = common dso_local global i32 0, align 4
@previousStdOut = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@previousStdErr = common dso_local global i8* null, align 8
@previousConsoleOutput = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_output_init() #0 {
  %1 = load i32, i32* @stdout, align 4
  %2 = call i32 @_fileno(i32 %1)
  %3 = load i32, i32* @_O_U8TEXT, align 4
  %4 = call i8* @_setmode(i32 %2, i32 %3)
  store i8* %4, i8** @previousStdOut, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @_fileno(i32 %5)
  %7 = load i32, i32* @_O_U8TEXT, align 4
  %8 = call i8* @_setmode(i32 %6, i32 %7)
  store i8* %8, i8** @previousStdErr, align 8
  %9 = call i32 (...) @GetConsoleOutputCP()
  store i32 %9, i32* @previousConsoleOutput, align 4
  %10 = load i32, i32* @CP_UTF8, align 4
  %11 = call i32 @SetConsoleOutputCP(i32 %10)
  ret void
}

declare dso_local i8* @_setmode(i32, i32) #1

declare dso_local i32 @_fileno(i32) #1

declare dso_local i32 @GetConsoleOutputCP(...) #1

declare dso_local i32 @SetConsoleOutputCP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
