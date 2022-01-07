; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_reset.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@pMinidumpName = common dso_local global i32* null, align 8
@cLsass = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@lsassPackages = common dso_local global %struct.TYPE_10__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sekurlsa_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32*, i32** @pMinidumpName, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32*, i32** @pMinidumpName, align 8
  %8 = call i32 @free(i32* %7)
  store i32* null, i32** @pMinidumpName, align 8
  br label %9

9:                                                ; preds = %6, %0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cLsass, i32 0, i32 0), align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cLsass, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %28 [
    i32 129, label %16
    i32 128, label %22
  ]

16:                                               ; preds = %12
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cLsass, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %12
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cLsass, i32 0, i32 0), align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28, %22, %16
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cLsass, i32 0, i32 0), align 8
  %31 = call %struct.TYPE_11__* @kull_m_memory_close(%struct.TYPE_11__* %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cLsass, i32 0, i32 0), align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @CloseHandle(i32 %32)
  %34 = call i32 (...) @kuhl_m_sekurlsa_clean()
  br label %35

35:                                               ; preds = %29, %9
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @lsassPackages, align 8
  %39 = call i64 @ARRAYSIZE(%struct.TYPE_10__** %38)
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @lsassPackages, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %42, i64 %43
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = call i32 @RtlZeroMemory(i32* %46, i32 4)
  br label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  br label %36

51:                                               ; preds = %36
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @free(i32*) #1

declare dso_local %struct.TYPE_11__* @kull_m_memory_close(%struct.TYPE_11__*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @kuhl_m_sekurlsa_clean(...) #1

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_10__**) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
