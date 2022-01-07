; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_REGPROC_print_error.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_REGPROC_print_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%S: Cannot display message for error %lu, status %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @REGPROC_print_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @REGPROC_print_error() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @GetLastError()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %6 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* %2, align 4
  %9 = ptrtoint i32* %1 to i32
  %10 = call i32 @FormatMessageA(i32 %7, i32* null, i32 %8, i32 0, i32 %9, i32 0, i32* null)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (...) @getAppName()
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (...) @GetLastError()
  %18 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %0
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @puts(i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @LocalFree(i32 %23)
  %25 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @FormatMessageA(i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @getAppName(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
