; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_volume.c_handle_volume.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_volume.c_handle_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__*, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_28__, %struct.TYPE_24__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, i8*, i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__, i8*, i8* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@NO_ERROR = common dso_local global i32 0, align 4
@SECTORS_PER_UNIT = common dso_local global i8* null, align 8
@BYTES_PER_SECTOR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"FileFsSizeInformation\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"FileFsFullSizeInformation\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unhandled fs query class %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @handle_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_volume(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  store %struct.TYPE_18__* %7, %struct.TYPE_18__** %3, align 8
  %8 = load i32, i32* @NO_ERROR, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %85 [
    i32 128, label %12
    i32 129, label %39
    i32 130, label %71
  ]

12:                                               ; preds = %1
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store i32 24, i32* %14, align 4
  %15 = load i8*, i8** @SECTORS_PER_UNIT, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 3
  store i8* %15, i8** %19, align 8
  %20 = load i8*, i8** @BYTES_PER_SECTOR, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 2
  store i8* %20, i8** %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = call i32 @get_volume_size_info(%struct.TYPE_20__* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %32, i32* %37, i32* null)
  store i32 %38, i32* %4, align 4
  br label %91

39:                                               ; preds = %1
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  store i32 32, i32* %41, align 4
  %42 = load i8*, i8** @SECTORS_PER_UNIT, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 4
  store i8* %42, i8** %46, align 8
  %47 = load i8*, i8** @BYTES_PER_SECTOR, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 3
  store i8* %47, i8** %51, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = call i32 @get_volume_size_info(%struct.TYPE_20__* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %59, i32* %64, i32* %69)
  store i32 %70, i32* %4, align 4
  br label %91

71:                                               ; preds = %1
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  store i32 4, i32* %73, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = call i32 @nfs41_superblock_fs_attributes(i32 %80, i32* %83)
  br label %91

85:                                               ; preds = %1
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @eprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %71, %39, %12
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @get_volume_size_info(%struct.TYPE_20__*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @nfs41_superblock_fs_attributes(i32, i32*) #1

declare dso_local i32 @eprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
