; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_file_close.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_file_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.lfs2_mlist* }
%struct.lfs2_mlist = type { %struct.lfs2_mlist* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"lfs2_file_close(%p, %p)\00", align 1
@LFS2_F_OPENED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"lfs2_file_close -> %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lfs2_file_close(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lfs2_mlist**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = bitcast %struct.TYPE_11__* %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = bitcast %struct.TYPE_12__* %10 to i8*
  %12 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9, i8* %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LFS2_F_OPENED, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @LFS2_ASSERT(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = call i32 @lfs2_file_sync(%struct.TYPE_11__* %19, %struct.TYPE_12__* %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store %struct.lfs2_mlist** %23, %struct.lfs2_mlist*** %6, align 8
  br label %24

24:                                               ; preds = %41, %2
  %25 = load %struct.lfs2_mlist**, %struct.lfs2_mlist*** %6, align 8
  %26 = load %struct.lfs2_mlist*, %struct.lfs2_mlist** %25, align 8
  %27 = icmp ne %struct.lfs2_mlist* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.lfs2_mlist**, %struct.lfs2_mlist*** %6, align 8
  %30 = load %struct.lfs2_mlist*, %struct.lfs2_mlist** %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = bitcast %struct.TYPE_12__* %31 to %struct.lfs2_mlist*
  %33 = icmp eq %struct.lfs2_mlist* %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.lfs2_mlist**, %struct.lfs2_mlist*** %6, align 8
  %36 = load %struct.lfs2_mlist*, %struct.lfs2_mlist** %35, align 8
  %37 = getelementptr inbounds %struct.lfs2_mlist, %struct.lfs2_mlist* %36, i32 0, i32 0
  %38 = load %struct.lfs2_mlist*, %struct.lfs2_mlist** %37, align 8
  %39 = load %struct.lfs2_mlist**, %struct.lfs2_mlist*** %6, align 8
  store %struct.lfs2_mlist* %38, %struct.lfs2_mlist** %39, align 8
  br label %45

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.lfs2_mlist**, %struct.lfs2_mlist*** %6, align 8
  %43 = load %struct.lfs2_mlist*, %struct.lfs2_mlist** %42, align 8
  %44 = getelementptr inbounds %struct.lfs2_mlist, %struct.lfs2_mlist* %43, i32 0, i32 0
  store %struct.lfs2_mlist** %44, %struct.lfs2_mlist*** %6, align 8
  br label %24

45:                                               ; preds = %34, %24
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lfs2_free(i32 %56)
  br label %58

58:                                               ; preds = %52, %45
  %59 = load i32, i32* @LFS2_F_OPENED, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @LFS2_TRACE(i8*, i32, ...) #1

declare dso_local i32 @LFS2_ASSERT(i32) #1

declare dso_local i32 @lfs2_file_sync(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @lfs2_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
