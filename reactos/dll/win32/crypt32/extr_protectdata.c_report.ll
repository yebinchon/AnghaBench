; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_report.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [19 x i8] c"pPromptStruct: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  cbSize: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"  dwPromptFlags: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"  hwndApp: %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"  szPrompt: %p %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"dwFlags: 0x%04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %10 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_11__* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to %struct.TYPE_11__*
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %13
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @debugstr_w(i32 %38)
  br label %41

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i8* [ %39, %35 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %40 ]
  %43 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_11__* %30, i8* %42)
  br label %44

44:                                               ; preds = %41, %4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = call i32 @TRACE_DATA_BLOB(%struct.TYPE_12__* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = call i32 @TRACE_DATA_BLOB(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_11__* @debugstr_an(i32 %57, i32 %60)
  %62 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_11__* %61)
  br label %63

63:                                               ; preds = %51, %44
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_11__*, ...) #1

declare dso_local i8* @debugstr_w(i32) #1

declare dso_local i32 @TRACE_DATA_BLOB(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @debugstr_an(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
