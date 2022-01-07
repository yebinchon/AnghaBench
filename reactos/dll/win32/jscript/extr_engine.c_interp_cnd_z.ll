; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_cnd_z.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_cnd_z.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @interp_cnd_z to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_cnd_z(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @get_op_uint(i32* %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @stack_top(i32* %10)
  %12 = call i32 @to_boolean(i32 %11, i64* %5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @stack_popn(i32* %22, i32 1)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @jmp_next(i32* %24)
  br label %30

26:                                               ; preds = %18
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @jmp_abs(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* @S_OK, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @get_op_uint(i32*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @to_boolean(i32, i64*) #1

declare dso_local i32 @stack_top(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @stack_popn(i32*, i32) #1

declare dso_local i32 @jmp_next(i32*) #1

declare dso_local i32 @jmp_abs(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
