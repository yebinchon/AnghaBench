; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_fs_parent_match.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_fs_parent_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lfs2_fs_parent_match = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.lfs2_diskoff = type { i32, i32 }

@LFS2_CMP_EQ = common dso_local global i32 0, align 4
@LFS2_CMP_LT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @lfs2_fs_parent_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_fs_parent_match(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lfs2_fs_parent_match*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.lfs2_diskoff*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.lfs2_fs_parent_match*
  store %struct.lfs2_fs_parent_match* %14, %struct.lfs2_fs_parent_match** %8, align 8
  %15 = load %struct.lfs2_fs_parent_match*, %struct.lfs2_fs_parent_match** %8, align 8
  %16 = getelementptr inbounds %struct.lfs2_fs_parent_match, %struct.lfs2_fs_parent_match* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.lfs2_diskoff*
  store %struct.lfs2_diskoff* %19, %struct.lfs2_diskoff** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lfs2_diskoff*, %struct.lfs2_diskoff** %10, align 8
  %32 = getelementptr inbounds %struct.lfs2_diskoff, %struct.lfs2_diskoff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lfs2_diskoff*, %struct.lfs2_diskoff** %10, align 8
  %35 = getelementptr inbounds %struct.lfs2_diskoff, %struct.lfs2_diskoff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = bitcast [2 x i32]* %11 to i32**
  %38 = call i32 @lfs2_bd_read(%struct.TYPE_5__* %21, i32* %23, i32* %25, i32 %30, i32 %33, i32 %36, i32** %37, i32 8)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  br label %58

43:                                               ; preds = %3
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %45 = call i32 @lfs2_pair_fromle32(i32* %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %47 = load %struct.lfs2_fs_parent_match*, %struct.lfs2_fs_parent_match** %8, align 8
  %48 = getelementptr inbounds %struct.lfs2_fs_parent_match, %struct.lfs2_fs_parent_match* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @lfs2_pair_cmp(i32* %46, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @LFS2_CMP_EQ, align 4
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @LFS2_CMP_LT, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %41
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @lfs2_bd_read(%struct.TYPE_5__*, i32*, i32*, i32, i32, i32, i32**, i32) #1

declare dso_local i32 @lfs2_pair_fromle32(i32*) #1

declare dso_local i64 @lfs2_pair_cmp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
