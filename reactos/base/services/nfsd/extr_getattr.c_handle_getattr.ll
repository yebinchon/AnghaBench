; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_getattr.c_handle_getattr.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_getattr.c_handle_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_19__, %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"nfs41_cached_getattr() failed with %d\0A\00", align 1
@NF4LNK = common dso_local global i64 0, align 8
@NO_ERROR = common dso_local global i32 0, align 4
@NF4DIR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@IO_REPARSE_TAG_SYMLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unhandled file query class %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @handle_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_getattr(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__, align 8
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %4, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %5, align 8
  %15 = bitcast %struct.TYPE_22__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = call i32 @nfs41_cached_getattr(i32 %18, i32* %20, %struct.TYPE_22__* %6)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @eprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %105

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NF4LNK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %27
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = call i32 @nfs41_symlink_follow(i32 %35, i32 %38, i32* %40, %struct.TYPE_22__* %7)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @NO_ERROR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NF4DIR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @TRUE, align 4
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %45, %32
  br label %54

54:                                               ; preds = %53, %27
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %98 [
    i32 131, label %58
    i32 128, label %66
    i32 132, label %70
    i32 130, label %87
    i32 129, label %94
  ]

58:                                               ; preds = %54
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 6
  %61 = call i32 @nfs_to_basic_info(%struct.TYPE_22__* %6, i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  br label %104

66:                                               ; preds = %54
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 4
  %69 = call i32 @nfs_to_standard_info(%struct.TYPE_22__* %6, i32* %68)
  br label %104

70:                                               ; preds = %54
  %71 = call i32 @nfs_file_info_to_attributes(%struct.TYPE_22__* %6)
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @NF4LNK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @IO_REPARSE_TAG_SYMLINK, align 4
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  br label %104

87:                                               ; preds = %54
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 4
  br label %104

94:                                               ; preds = %54
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = call i32 @nfs_to_network_openinfo(%struct.TYPE_22__* %6, i32* %96)
  br label %104

98:                                               ; preds = %54
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %98, %94, %87, %82, %66, %58
  br label %105

105:                                              ; preds = %104, %24
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs41_cached_getattr(i32, i32*, %struct.TYPE_22__*) #2

declare dso_local i32 @eprintf(i8*, i32) #2

declare dso_local i32 @nfs41_symlink_follow(i32, i32, i32*, %struct.TYPE_22__*) #2

declare dso_local i32 @nfs_to_basic_info(%struct.TYPE_22__*, i32*) #2

declare dso_local i32 @nfs_to_standard_info(%struct.TYPE_22__*, i32*) #2

declare dso_local i32 @nfs_file_info_to_attributes(%struct.TYPE_22__*) #2

declare dso_local i32 @nfs_to_network_openinfo(%struct.TYPE_22__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
