; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/test_rls_hooks/extr_test_rls_hooks.c__PG_fini.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/test_rls_hooks/extr_test_rls_hooks.c__PG_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prev_row_security_policy_hook_permissive = common dso_local global i32 0, align 4
@row_security_policy_hook_permissive = common dso_local global i32 0, align 4
@prev_row_security_policy_hook_restrictive = common dso_local global i32 0, align 4
@row_security_policy_hook_restrictive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_fini() #0 {
  %1 = load i32, i32* @prev_row_security_policy_hook_permissive, align 4
  store i32 %1, i32* @row_security_policy_hook_permissive, align 4
  %2 = load i32, i32* @prev_row_security_policy_hook_restrictive, align 4
  store i32 %2, i32* @row_security_policy_hook_restrictive, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
