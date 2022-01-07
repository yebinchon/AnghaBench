; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_setChildPtrmaps.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_setChildPtrmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PTRMAP_BTREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @setChildPtrmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setChildPtrmaps(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sqlite3_mutex_held(i32 %22)
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = call i32 @btreeInitPage(%struct.TYPE_8__* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SQLITE_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %60, %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32* @findCell(%struct.TYPE_8__* %41, i32 %42)
  store i32* %43, i32** %9, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @ptrmapPutOvflPtr(%struct.TYPE_8__* %44, i32* %45, i32* %6)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %40
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @get4byte(i32* %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @PTRMAP_BTREE, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ptrmapPut(%struct.TYPE_9__* %54, i32 %55, i32 %56, i32 %57, i32* %6)
  br label %59

59:                                               ; preds = %51, %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = call i32 @get4byte(i32* %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @PTRMAP_BTREE, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ptrmapPut(%struct.TYPE_9__* %79, i32 %80, i32 %81, i32 %82, i32* %6)
  br label %84

84:                                               ; preds = %68, %63
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %30
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @btreeInitPage(%struct.TYPE_8__*) #1

declare dso_local i32* @findCell(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ptrmapPutOvflPtr(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_9__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
