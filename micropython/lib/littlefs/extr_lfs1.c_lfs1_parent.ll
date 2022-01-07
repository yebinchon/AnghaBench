; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_parent.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@LFS1_ERR_NOENT = common dso_local global i32 0, align 4
@LFS1_TYPE_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32*, %struct.TYPE_20__*, %struct.TYPE_19__*)* @lfs1_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs1_parent(%struct.TYPE_18__* %0, i32* %1, %struct.TYPE_20__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @lfs1_pairisnull(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

17:                                               ; preds = %4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %87, %17
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @lfs1_pairisnull(i32* %32)
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %88

36:                                               ; preds = %28
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @lfs1_dir_fetch(%struct.TYPE_18__* %37, %struct.TYPE_20__* %38, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %89

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %86
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = call i32 @lfs1_dir_next(%struct.TYPE_18__* %50, %struct.TYPE_20__* %51, %struct.TYPE_19__* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @LFS1_ERR_NOENT, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %89

62:                                               ; preds = %56, %49
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @LFS1_ERR_NOENT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %87

67:                                               ; preds = %62
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 112, %71
  %73 = load i32, i32* @LFS1_TYPE_DIR, align 4
  %74 = and i32 112, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i64 @lfs1_paircmp(i32 %81, i32* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %89

86:                                               ; preds = %76, %67
  br label %49

87:                                               ; preds = %66
  br label %28

88:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %85, %60, %46, %16
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i64 @lfs1_pairisnull(i32*) #1

declare dso_local i32 @lfs1_dir_fetch(%struct.TYPE_18__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @lfs1_dir_next(%struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i64 @lfs1_paircmp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
