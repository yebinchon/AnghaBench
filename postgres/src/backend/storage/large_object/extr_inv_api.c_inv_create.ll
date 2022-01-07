; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_inv_create.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_inv_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LargeObjectRelationId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inv_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @LargeObjectCreate(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @LargeObjectRelationId, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 (...) @GetUserId()
  %9 = call i32 @recordDependencyOnOwner(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @LargeObjectRelationId, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @InvokeObjectPostCreateHook(i32 %10, i32 %11, i32 0)
  %13 = call i32 (...) @CommandCounterIncrement()
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @LargeObjectCreate(i32) #1

declare dso_local i32 @recordDependencyOnOwner(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i32, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
