; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_getinfo.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.lfs2_info = type { i32, i64, %struct.lfs2_ctz* }
%struct.lfs2_ctz = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@LFS2_TYPE_DIR = common dso_local global i64 0, align 8
@LFS2_TYPE_NAME = common dso_local global i32 0, align 4
@LFS2_TYPE_STRUCT = common dso_local global i32 0, align 4
@LFS2_TYPE_CTZSTRUCT = common dso_local global i64 0, align 8
@LFS2_TYPE_INLINESTRUCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, %struct.lfs2_info*)* @lfs2_dir_getinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_dir_getinfo(%struct.TYPE_4__* %0, i32* %1, i32 %2, %struct.lfs2_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lfs2_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.lfs2_ctz, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.lfs2_info* %3, %struct.lfs2_info** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 1023
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.lfs2_info*, %struct.lfs2_info** %9, align 8
  %16 = getelementptr inbounds %struct.lfs2_info, %struct.lfs2_info* %15, i32 0, i32 2
  %17 = load %struct.lfs2_ctz*, %struct.lfs2_ctz** %16, align 8
  %18 = call i32 @strcpy(%struct.lfs2_ctz* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @LFS2_TYPE_DIR, align 8
  %20 = load %struct.lfs2_info*, %struct.lfs2_info** %9, align 8
  %21 = getelementptr inbounds %struct.lfs2_info, %struct.lfs2_info* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  store i32 0, i32* %5, align 4
  br label %82

22:                                               ; preds = %4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @LFS2_MKTAG(i32 1920, i32 1023, i32 0)
  %26 = load i32, i32* @LFS2_TYPE_NAME, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @LFS2_MKTAG(i32 %26, i32 %27, i32 %31)
  %33 = load %struct.lfs2_info*, %struct.lfs2_info** %9, align 8
  %34 = getelementptr inbounds %struct.lfs2_info, %struct.lfs2_info* %33, i32 0, i32 2
  %35 = load %struct.lfs2_ctz*, %struct.lfs2_ctz** %34, align 8
  %36 = call i64 @lfs2_dir_get(%struct.TYPE_4__* %23, i32* %24, i32 %25, i32 %32, %struct.lfs2_ctz* %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load i64, i64* %10, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %82

42:                                               ; preds = %22
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @lfs2_tag_type3(i64 %43)
  %45 = load %struct.lfs2_info*, %struct.lfs2_info** %9, align 8
  %46 = getelementptr inbounds %struct.lfs2_info, %struct.lfs2_info* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @LFS2_MKTAG(i32 1792, i32 1023, i32 0)
  %50 = load i32, i32* @LFS2_TYPE_STRUCT, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @LFS2_MKTAG(i32 %50, i32 %51, i32 4)
  %53 = call i64 @lfs2_dir_get(%struct.TYPE_4__* %47, i32* %48, i32 %49, i32 %52, %struct.lfs2_ctz* %11)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i64, i64* %10, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %82

59:                                               ; preds = %42
  %60 = call i32 @lfs2_ctz_fromle32(%struct.lfs2_ctz* %11)
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @lfs2_tag_type3(i64 %61)
  %63 = load i64, i64* @LFS2_TYPE_CTZSTRUCT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.lfs2_ctz, %struct.lfs2_ctz* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lfs2_info*, %struct.lfs2_info** %9, align 8
  %69 = getelementptr inbounds %struct.lfs2_info, %struct.lfs2_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %81

70:                                               ; preds = %59
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @lfs2_tag_type3(i64 %71)
  %73 = load i64, i64* @LFS2_TYPE_INLINESTRUCT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @lfs2_tag_size(i64 %76)
  %78 = load %struct.lfs2_info*, %struct.lfs2_info** %9, align 8
  %79 = getelementptr inbounds %struct.lfs2_info, %struct.lfs2_info* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %75, %70
  br label %81

81:                                               ; preds = %80, %65
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %56, %39, %14
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @strcpy(%struct.lfs2_ctz*, i8*) #1

declare dso_local i64 @lfs2_dir_get(%struct.TYPE_4__*, i32*, i32, i32, %struct.lfs2_ctz*) #1

declare dso_local i32 @LFS2_MKTAG(i32, i32, i32) #1

declare dso_local i64 @lfs2_tag_type3(i64) #1

declare dso_local i32 @lfs2_ctz_fromle32(%struct.lfs2_ctz*) #1

declare dso_local i32 @lfs2_tag_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
