; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_ruby.c_ensure_ruby_initialized.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_ruby.c_ensure_ruby_initialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ruby_initialized = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ruby_stack_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ensure_ruby_initialized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_ruby_initialized() #0 {
  %1 = load i32, i32* @ruby_initialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = call i32 (...) @ruby_init()
  %5 = call i32 (...) @ruby_init_loadpath()
  %6 = call i32 (...) @ruby_io_init()
  %7 = call i32 (...) @ruby_vim_init()
  store i32 1, i32* @ruby_initialized, align 4
  br label %8

8:                                                ; preds = %3, %0
  %9 = load i32, i32* @ruby_initialized, align 4
  ret i32 %9
}

declare dso_local i32 @ruby_init(...) #1

declare dso_local i32 @ruby_init_loadpath(...) #1

declare dso_local i32 @ruby_io_init(...) #1

declare dso_local i32 @ruby_vim_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
