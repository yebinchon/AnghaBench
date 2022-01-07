; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_find_match.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_find_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lfs2_dir_find_match = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lfs2_diskoff = type { i32, i32 }

@LFS2_CMP_EQ = common dso_local global i32 0, align 4
@LFS2_CMP_LT = common dso_local global i32 0, align 4
@LFS2_CMP_GT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @lfs2_dir_find_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_dir_find_match(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lfs2_dir_find_match*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.lfs2_diskoff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.lfs2_dir_find_match*
  store %struct.lfs2_dir_find_match* %14, %struct.lfs2_dir_find_match** %8, align 8
  %15 = load %struct.lfs2_dir_find_match*, %struct.lfs2_dir_find_match** %8, align 8
  %16 = getelementptr inbounds %struct.lfs2_dir_find_match, %struct.lfs2_dir_find_match* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.lfs2_diskoff*
  store %struct.lfs2_diskoff* %19, %struct.lfs2_diskoff** %10, align 8
  %20 = load %struct.lfs2_dir_find_match*, %struct.lfs2_dir_find_match** %8, align 8
  %21 = getelementptr inbounds %struct.lfs2_dir_find_match, %struct.lfs2_dir_find_match* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @lfs2_tag_size(i32 %23)
  %25 = call i32 @lfs2_min(i64 %22, i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.lfs2_diskoff*, %struct.lfs2_diskoff** %10, align 8
  %31 = getelementptr inbounds %struct.lfs2_diskoff, %struct.lfs2_diskoff* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.lfs2_diskoff*, %struct.lfs2_diskoff** %10, align 8
  %34 = getelementptr inbounds %struct.lfs2_diskoff, %struct.lfs2_diskoff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lfs2_dir_find_match*, %struct.lfs2_dir_find_match** %8, align 8
  %37 = getelementptr inbounds %struct.lfs2_dir_find_match, %struct.lfs2_dir_find_match* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @lfs2_bd_cmp(%struct.TYPE_3__* %26, i32* null, i32* %28, i32 %29, i32 %32, i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @LFS2_CMP_EQ, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %68

46:                                               ; preds = %3
  %47 = load %struct.lfs2_dir_find_match*, %struct.lfs2_dir_find_match** %8, align 8
  %48 = getelementptr inbounds %struct.lfs2_dir_find_match, %struct.lfs2_dir_find_match* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @lfs2_tag_size(i32 %50)
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.lfs2_dir_find_match*, %struct.lfs2_dir_find_match** %8, align 8
  %55 = getelementptr inbounds %struct.lfs2_dir_find_match, %struct.lfs2_dir_find_match* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @lfs2_tag_size(i32 %57)
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @LFS2_CMP_LT, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @LFS2_CMP_GT, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %4, align 4
  br label %68

66:                                               ; preds = %46
  %67 = load i32, i32* @LFS2_CMP_EQ, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %64, %44
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @lfs2_min(i64, i64) #1

declare dso_local i64 @lfs2_tag_size(i32) #1

declare dso_local i32 @lfs2_bd_cmp(%struct.TYPE_3__*, i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
