; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_BootStrapCLOG.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_BootStrapCLOG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@CLogControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ClogCtl = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BootStrapCLOG() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CLogControlLock, align 4
  %3 = load i32, i32* @LW_EXCLUSIVE, align 4
  %4 = call i32 @LWLockAcquire(i32 %2, i32 %3)
  %5 = call i32 @ZeroCLOGPage(i32 0, i32 0)
  store i32 %5, i32* %1, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ClogCtl, align 8
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @SimpleLruWritePage(%struct.TYPE_5__* %6, i32 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ClogCtl, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load i32, i32* @CLogControlLock, align 4
  %23 = call i32 @LWLockRelease(i32 %22)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @ZeroCLOGPage(i32, i32) #1

declare dso_local i32 @SimpleLruWritePage(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
