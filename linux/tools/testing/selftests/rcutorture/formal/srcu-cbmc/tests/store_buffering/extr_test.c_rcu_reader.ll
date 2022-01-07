; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rcutorture/formal/srcu-cbmc/tests/store_buffering/extr_test.c_rcu_reader.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rcutorture/formal/srcu-cbmc/tests/store_buffering/extr_test.c_rcu_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ss = common dso_local global i32 0, align 4
@y = common dso_local global i32 0, align 4
@__unbuffered_tpr_y = common dso_local global i32 0, align 4
@x = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcu_reader() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @srcu_read_lock(i32* @ss)
  store i32 %2, i32* %1, align 4
  %3 = call i32 (...) @might_sleep()
  %4 = load i32, i32* @y, align 4
  %5 = call i32 @READ_ONCE(i32 %4)
  store i32 %5, i32* @__unbuffered_tpr_y, align 4
  %6 = load i32, i32* @x, align 4
  %7 = call i32 @WRITE_ONCE(i32 %6, i32 1)
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @srcu_read_unlock(i32* @ss, i32 %8)
  %10 = call i32 (...) @might_sleep()
  ret void
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
