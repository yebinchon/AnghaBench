; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vdbePmaReaderNext.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vdbePmaReaderNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @vdbePmaReaderNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbePmaReaderNext(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load i32, i32* @SQLITE_OK, align 4
  store i32 %8, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %6, align 8
  store i32 1, i32* %7, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = call i32 @vdbeIncrSwap(%struct.TYPE_10__* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @vdbePmaReaderSeek(i32 %36, %struct.TYPE_9__* %37, i32* %41, i32 %44)
  store i32 %45, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %33, %28, %22
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = call i32 @vdbePmaReaderClear(%struct.TYPE_9__* %51)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @SQLITE_OK, align 4
  %55 = icmp ne i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @testcase(i32 %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %89

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %1
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @SQLITE_OK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = call i32 @vdbePmaReadVarint(%struct.TYPE_9__* %65, i64* %5)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i64, i64* %5, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = load i64, i64* %5, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = call i32 @vdbePmaReadBlob(%struct.TYPE_9__* %76, i32 %78, i32* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @SQLITE_OK, align 4
  %84 = icmp ne i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @testcase(i32 %85)
  br label %87

87:                                               ; preds = %71, %67
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %50
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @vdbeIncrSwap(%struct.TYPE_10__*) #1

declare dso_local i32 @vdbePmaReaderSeek(i32, %struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @vdbePmaReaderClear(%struct.TYPE_9__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @vdbePmaReadVarint(%struct.TYPE_9__*, i64*) #1

declare dso_local i32 @vdbePmaReadBlob(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
