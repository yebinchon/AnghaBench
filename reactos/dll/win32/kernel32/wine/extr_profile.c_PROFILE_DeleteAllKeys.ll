; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_profile.c_PROFILE_DeleteAllKeys.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_profile.c_PROFILE_DeleteAllKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@CurProfile = common dso_local global %struct.TYPE_7__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @PROFILE_DeleteAllKeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PROFILE_DeleteAllKeys(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurProfile, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store %struct.TYPE_5__** %7, %struct.TYPE_5__*** %3, align 8
  br label %8

8:                                                ; preds = %47, %1
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @strcmpiW(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store %struct.TYPE_6__** %23, %struct.TYPE_6__*** %4, align 8
  br label %24

24:                                               ; preds = %28, %20
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %5, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %34, align 8
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 @HeapFree(i32 %35, i32 0, %struct.TYPE_6__* %38)
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = call i32 @HeapFree(i32 %40, i32 0, %struct.TYPE_6__* %41)
  %43 = load i32, i32* @TRUE, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurProfile, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %24

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46, %12
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store %struct.TYPE_5__** %50, %struct.TYPE_5__*** %3, align 8
  br label %8

51:                                               ; preds = %8
  ret void
}

declare dso_local i32 @strcmpiW(i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
