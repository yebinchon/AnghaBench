; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_freeP4.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_freeP4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i8*)* @freeP4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeP4(%struct.TYPE_9__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_9__* %7)
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %59 [
    i32 135, label %10
    i32 129, label %15
    i32 133, label %15
    i32 138, label %15
    i32 137, label %15
    i32 132, label %15
    i32 131, label %19
    i32 134, label %29
    i32 130, label %34
    i32 128, label %49
  ]

10:                                               ; preds = %3
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = call i32 @freeP4FuncCtx(%struct.TYPE_9__* %11, i32* %13)
  br label %59

15:                                               ; preds = %3, %3, %3, %3, %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %16, i8* %17)
  br label %59

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = call i32 @sqlite3KeyInfoUnref(i32* %26)
  br label %28

28:                                               ; preds = %24, %19
  br label %59

29:                                               ; preds = %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = call i32 @freeEphemeralFunction(%struct.TYPE_9__* %30, i32* %32)
  br label %59

34:                                               ; preds = %3
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = call i32 @sqlite3ValueFree(i32* %41)
  br label %48

43:                                               ; preds = %34
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = call i32 @freeP4Mem(%struct.TYPE_9__* %44, i32* %46)
  br label %48

48:                                               ; preds = %43, %39
  br label %59

49:                                               ; preds = %3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = call i32 @sqlite3VtabUnlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %49
  br label %59

59:                                               ; preds = %3, %58, %48, %29, %28, %15, %10
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @freeP4FuncCtx(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @sqlite3KeyInfoUnref(i32*) #1

declare dso_local i32 @freeEphemeralFunction(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @sqlite3ValueFree(i32*) #1

declare dso_local i32 @freeP4Mem(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @sqlite3VtabUnlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
