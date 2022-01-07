; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tests() #0 {
  %1 = call i32 (...) @test_misc()
  %2 = call i32 (...) @test_clear()
  %3 = call i32 (...) @test_update()
  %4 = call i32 (...) @test_set_many_keys()
  %5 = call i32 (...) @test_conditional_updates()
  %6 = call i32 (...) @test_circular()
  %7 = call i32 (...) @test_set_nocheck()
  %8 = call i32 (...) @test_iterators()
  %9 = call i32 (...) @test_preserve_order()
  %10 = call i32 (...) @test_object_foreach()
  %11 = call i32 (...) @test_object_foreach_safe()
  ret void
}

declare dso_local i32 @test_misc(...) #1

declare dso_local i32 @test_clear(...) #1

declare dso_local i32 @test_update(...) #1

declare dso_local i32 @test_set_many_keys(...) #1

declare dso_local i32 @test_conditional_updates(...) #1

declare dso_local i32 @test_circular(...) #1

declare dso_local i32 @test_set_nocheck(...) #1

declare dso_local i32 @test_iterators(...) #1

declare dso_local i32 @test_preserve_order(...) #1

declare dso_local i32 @test_object_foreach(...) #1

declare dso_local i32 @test_object_foreach_safe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
