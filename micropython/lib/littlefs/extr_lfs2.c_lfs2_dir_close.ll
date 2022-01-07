; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_close.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.lfs2_mlist* }
%struct.lfs2_mlist = type { %struct.lfs2_mlist* }

@.str = private unnamed_addr constant [23 x i8] c"lfs2_dir_close(%p, %p)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"lfs2_dir_close -> %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lfs2_dir_close(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lfs2_mlist**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = bitcast %struct.TYPE_3__* %6 to i8*
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = call i32 (i8*, i8*, ...) @LFS2_TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.lfs2_mlist** %12, %struct.lfs2_mlist*** %5, align 8
  br label %13

13:                                               ; preds = %30, %2
  %14 = load %struct.lfs2_mlist**, %struct.lfs2_mlist*** %5, align 8
  %15 = load %struct.lfs2_mlist*, %struct.lfs2_mlist** %14, align 8
  %16 = icmp ne %struct.lfs2_mlist* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load %struct.lfs2_mlist**, %struct.lfs2_mlist*** %5, align 8
  %19 = load %struct.lfs2_mlist*, %struct.lfs2_mlist** %18, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = bitcast i32* %20 to %struct.lfs2_mlist*
  %22 = icmp eq %struct.lfs2_mlist* %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.lfs2_mlist**, %struct.lfs2_mlist*** %5, align 8
  %25 = load %struct.lfs2_mlist*, %struct.lfs2_mlist** %24, align 8
  %26 = getelementptr inbounds %struct.lfs2_mlist, %struct.lfs2_mlist* %25, i32 0, i32 0
  %27 = load %struct.lfs2_mlist*, %struct.lfs2_mlist** %26, align 8
  %28 = load %struct.lfs2_mlist**, %struct.lfs2_mlist*** %5, align 8
  store %struct.lfs2_mlist* %27, %struct.lfs2_mlist** %28, align 8
  br label %34

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.lfs2_mlist**, %struct.lfs2_mlist*** %5, align 8
  %32 = load %struct.lfs2_mlist*, %struct.lfs2_mlist** %31, align 8
  %33 = getelementptr inbounds %struct.lfs2_mlist, %struct.lfs2_mlist* %32, i32 0, i32 0
  store %struct.lfs2_mlist** %33, %struct.lfs2_mlist*** %5, align 8
  br label %13

34:                                               ; preds = %23, %13
  %35 = call i32 (i8*, i8*, ...) @LFS2_TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* null)
  ret i32 0
}

declare dso_local i32 @LFS2_TRACE(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
