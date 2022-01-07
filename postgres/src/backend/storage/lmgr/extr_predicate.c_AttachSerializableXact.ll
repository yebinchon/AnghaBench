; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_AttachSerializableXact.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_AttachSerializableXact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MySerializableXact = common dso_local global i32* null, align 8
@InvalidSerializableXact = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AttachSerializableXact(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32*, i32** @MySerializableXact, align 8
  %4 = load i32*, i32** @InvalidSerializableXact, align 8
  %5 = icmp eq i32* %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @Assert(i32 %6)
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** @MySerializableXact, align 8
  %10 = load i32*, i32** @MySerializableXact, align 8
  %11 = load i32*, i32** @InvalidSerializableXact, align 8
  %12 = icmp ne i32* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (...) @CreateLocalPredicateLockHash()
  br label %15

15:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CreateLocalPredicateLockHash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
