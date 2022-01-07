; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_relation_set_new_filenode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_relation_set_new_filenode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@RecentXmin = common dso_local global i32 0, align 4
@RELPERSISTENCE_UNLOGGED = common dso_local global i8 0, align 1
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@RELKIND_TOASTVALUE = common dso_local global i64 0, align 8
@INIT_FORKNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i8, i32*, i32*)* @heapam_relation_set_new_filenode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heapam_relation_set_new_filenode(%struct.TYPE_5__* %0, i32* %1, i8 signext %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* @RecentXmin, align 4
  %13 = load i32*, i32** %9, align 8
  store i32 %12, i32* %13, align 4
  %14 = call i32 (...) @GetOldestMultiXactId()
  %15 = load i32*, i32** %10, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i8, i8* %8, align 1
  %19 = call i32 @RelationCreateStorage(i32 %17, i8 signext %18)
  store i32 %19, i32* %11, align 4
  %20 = load i8, i8* %8, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @RELPERSISTENCE_UNLOGGED, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %5
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RELKIND_RELATION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %49, label %33

33:                                               ; preds = %25
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RELKIND_MATVIEW, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RELKIND_TOASTVALUE, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %41, %33, %25
  %50 = phi i1 [ true, %33 ], [ true, %25 ], [ %48, %41 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @INIT_FORKNUM, align 4
  %55 = call i32 @smgrcreate(i32 %53, i32 %54, i32 0)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @INIT_FORKNUM, align 4
  %58 = call i32 @log_smgrcreate(i32* %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @INIT_FORKNUM, align 4
  %61 = call i32 @smgrimmedsync(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %49, %5
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @smgrclose(i32 %63)
  ret void
}

declare dso_local i32 @GetOldestMultiXactId(...) #1

declare dso_local i32 @RelationCreateStorage(i32, i8 signext) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @smgrcreate(i32, i32, i32) #1

declare dso_local i32 @log_smgrcreate(i32*, i32) #1

declare dso_local i32 @smgrimmedsync(i32, i32) #1

declare dso_local i32 @smgrclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
