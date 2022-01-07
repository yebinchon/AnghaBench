; ModuleID = '/home/carl/AnghaBench/micropython/ports/qemu-arm/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/qemu-arm/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"print('hello world!')\00", align 1
@MP_PARSE_SINGLE_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4096 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @mp_stack_ctrl_init()
  %8 = call i32 @mp_stack_set_limit(i32 10240)
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* %6, i64 0, i64 0
  %10 = getelementptr inbounds [4096 x i32], [4096 x i32]* %6, i64 0, i64 0
  %11 = bitcast i32* %10 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 16384
  %13 = call i32 @gc_init(i32* %9, i8* %12)
  %14 = call i32 (...) @mp_init()
  %15 = load i32, i32* @MP_PARSE_SINGLE_INPUT, align 4
  %16 = call i32 @do_str(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 (...) @mp_deinit()
  ret i32 0
}

declare dso_local i32 @mp_stack_ctrl_init(...) #1

declare dso_local i32 @mp_stack_set_limit(i32) #1

declare dso_local i32 @gc_init(i32*, i8*) #1

declare dso_local i32 @mp_init(...) #1

declare dso_local i32 @do_str(i8*, i32) #1

declare dso_local i32 @mp_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
