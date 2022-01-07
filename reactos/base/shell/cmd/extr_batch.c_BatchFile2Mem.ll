; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_batch.c_BatchFile2Mem.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_batch.c_BatchFile2Mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"BatchFile2Mem ()\0A\00", align 1
@bc = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"BatchFile2Mem memory %08x - %08x\0A\00", align 1
@FILE_BEGIN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BatchFile2Mem(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @GetFileSize(i32 %4, i32* null)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = call i64 @cmd_alloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @FILE_BEGIN, align 4
  %30 = call i32 @SetFilePointer(i32 %28, i32 0, i32* null, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @ReadFile(i32 %31, i32 %35, i32 %38, i32* %40, i32* null)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  store i8 0, i8* %49, align 1
  %50 = load i32, i32* @TRUE, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  br label %59

53:                                               ; preds = %1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %53, %20
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bc, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @GetFileSize(i32, i32*) #1

declare dso_local i64 @cmd_alloc(i32) #1

declare dso_local i32 @SetFilePointer(i32, i32, i32*, i32) #1

declare dso_local i32 @ReadFile(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
