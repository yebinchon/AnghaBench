; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_findReusableFd.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_findReusableFd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__ }
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
  %9 = call i32 (...) @unixEnterMutex()
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @inodeList, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %94

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @osStat(i8* %13, %struct.stat* %6)
  %15 = icmp eq i64 0, %14
  br i1 %15, label %16, label %94

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @inodeList, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  br label %18

18:                                               ; preds = %41, %16
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %33, %35
  br label %37

37:                                               ; preds = %29, %21
  %38 = phi i1 [ true, %21 ], [ %36, %29 ]
  br label %39

39:                                               ; preds = %37, %18
  %40 = phi i1 [ false, %18 ], [ %38, %37 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %7, align 8
  br label %18

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = icmp ne %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %93

48:                                               ; preds = %45
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @sqlite3_mutex_notheld(i32 %51)
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sqlite3_mutex_enter(i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store %struct.TYPE_8__** %59, %struct.TYPE_8__*** %8, align 8
  br label %60

60:                                               ; preds = %74, %48
  %61 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %68, %69
  br label %71

71:                                               ; preds = %64, %60
  %72 = phi i1 [ false, %60 ], [ %70, %64 ]
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store %struct.TYPE_8__** %77, %struct.TYPE_8__*** %8, align 8
  br label %60

78:                                               ; preds = %71
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %5, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = icmp ne %struct.TYPE_8__* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %87, align 8
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sqlite3_mutex_leave(i32 %91)
  br label %93

93:                                               ; preds = %88, %45
  br label %94

94:                                               ; preds = %93, %12, %2
  %95 = call i32 (...) @unixLeaveMutex()
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %96
}

declare dso_local i32 @unixEnterMutex(...) #1

declare dso_local i64 @osStat(i8*, %struct.stat*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_notheld(i32) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @unixLeaveMutex(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
