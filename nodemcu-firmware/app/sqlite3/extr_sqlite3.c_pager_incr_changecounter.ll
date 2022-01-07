; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pager_incr_changecounter.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pager_incr_changecounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i64, i64, i32, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_WRITER_CACHEMOD = common dso_local global i64 0, align 8
@PAGER_WRITER_DBMOD = common dso_local global i64 0, align 8
@DIRECT_MODE = common dso_local global i64 0, align 8
@PAGER_STAT_WRITE = common dso_local global i64 0, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @pager_incr_changecounter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_incr_changecounter(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SQLITE_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PAGER_WRITER_CACHEMOD, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PAGER_WRITER_DBMOD, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ true, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = call i32 @assert_pager_state(%struct.TYPE_12__* %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @UNUSED_PARAMETER(i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %92, label %36

36:                                               ; preds = %19
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @ALWAYS(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %92

44:                                               ; preds = %36
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @isOpen(i32 %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %49, %44
  %56 = phi i1 [ false, %44 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = call i32 @sqlite3PagerGet(%struct.TYPE_12__* %59, i32 1, %struct.TYPE_11__** %6, i32 0)
  store i32 %60, i32* %5, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = icmp eq %struct.TYPE_11__* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @SQLITE_OK, align 4
  %66 = icmp eq i32 %64, %65
  br label %67

67:                                               ; preds = %63, %55
  %68 = phi i1 [ true, %55 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @SQLITE_OK, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @ALWAYS(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = call i32 @sqlite3PagerWrite(%struct.TYPE_11__* %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %67
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = call i32 @pager_write_changecounter(%struct.TYPE_11__* %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %80
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = call i32 @sqlite3PagerUnref(%struct.TYPE_11__* %90)
  br label %92

92:                                               ; preds = %89, %36, %19
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_12__*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i32 @sqlite3PagerGet(%struct.TYPE_12__*, i32, %struct.TYPE_11__**, i32) #1

declare dso_local i32 @sqlite3PagerWrite(%struct.TYPE_11__*) #1

declare dso_local i32 @pager_write_changecounter(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3PagerUnref(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
