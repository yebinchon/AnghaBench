; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_findReusableFd.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_findReusableFd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.stat = type { i64, i64 }

@inodeList = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i32)* @findReusableFd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @findReusableFd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @osStat(i8* %9, %struct.stat* %6)
  %11 = icmp eq i64 0, %10
  br i1 %11, label %12, label %79

12:                                               ; preds = %2
  %13 = call i32 (...) @unixEnterMutex()
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @inodeList, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %7, align 8
  br label %15

15:                                               ; preds = %38, %12
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %30, %32
  br label %34

34:                                               ; preds = %26, %18
  %35 = phi i1 [ true, %18 ], [ %33, %26 ]
  br label %36

36:                                               ; preds = %34, %15
  %37 = phi i1 [ false, %15 ], [ %35, %34 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %7, align 8
  br label %15

42:                                               ; preds = %36
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %77

45:                                               ; preds = %42
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store %struct.TYPE_8__** %47, %struct.TYPE_8__*** %8, align 8
  br label %48

48:                                               ; preds = %62, %45
  %49 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %56, %57
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i1 [ false, %48 ], [ %58, %52 ]
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store %struct.TYPE_8__** %65, %struct.TYPE_8__*** %8, align 8
  br label %48

66:                                               ; preds = %59
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %5, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = icmp ne %struct.TYPE_8__* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %75, align 8
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %42
  %78 = call i32 (...) @unixLeaveMutex()
  br label %79

79:                                               ; preds = %77, %2
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %80
}

declare dso_local i64 @osStat(i8*, %struct.stat*) #1

declare dso_local i32 @unixEnterMutex(...) #1

declare dso_local i32 @unixLeaveMutex(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
