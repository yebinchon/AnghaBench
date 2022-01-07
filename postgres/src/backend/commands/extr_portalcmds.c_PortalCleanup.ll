; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_portalcmds.c_PortalCleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_portalcmds.c_PortalCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32* }

@PORTAL_FAILED = common dso_local global i64 0, align 8
@CurrentResourceOwner = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PortalCleanup(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = call i32 @PortalIsValid(%struct.TYPE_4__* %5)
  %7 = call i32 @AssertArg(i32 %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to void (%struct.TYPE_4__*)*
  %12 = icmp eq void (%struct.TYPE_4__*)* %11, @PortalCleanup
  %13 = zext i1 %12 to i32
  %14 = call i32 @AssertArg(i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PORTAL_FAILED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %20
  %29 = load i64, i64* @CurrentResourceOwner, align 8
  store i64 %29, i64* %4, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* @CurrentResourceOwner, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @ExecutorFinish(i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @ExecutorEnd(i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @FreeQueryDesc(i32* %43)
  %45 = load i64, i64* %4, align 8
  store i64 %45, i64* @CurrentResourceOwner, align 8
  br label %46

46:                                               ; preds = %38, %20
  br label %47

47:                                               ; preds = %46, %1
  ret void
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @PortalIsValid(%struct.TYPE_4__*) #1

declare dso_local i32 @ExecutorFinish(i32*) #1

declare dso_local i32 @ExecutorEnd(i32*) #1

declare dso_local i32 @FreeQueryDesc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
