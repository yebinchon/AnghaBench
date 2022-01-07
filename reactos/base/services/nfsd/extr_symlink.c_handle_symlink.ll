; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_symlink.c_handle_symlink.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_symlink.c_handle_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__*, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_19__*, %struct.TYPE_17__, i32 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { i16, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64* }

@NO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"handle_symlink: attempting to create a symlink when the file=%s was already created on open; sending REMOVE first\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"nfs41_remove() for symlink=%s failed with %s\0A\00", align 1
@FATTR4_WORD1_MODE = common dso_local global i64 0, align 8
@NF4LNK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"nfs41_create() for symlink=%s failed with %s\0A\00", align 1
@NFS41_MAX_PATH_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"nfs41_readlink() for filename=%s failed with %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"returning symlink target '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @handle_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_symlink(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__, align 8
  %7 = alloca %struct.TYPE_24__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %3, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %4, align 8
  %16 = load i32, i32* @NO_ERROR, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %118

21:                                               ; preds = %1
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %37, %21
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 92
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  store i8 47, i8* %35, align 1
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %36
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %8, align 8
  br label %25

40:                                               ; preds = %25
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %40
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i8*, ...) @eprintf(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @nfs41_remove(i32 %57, i32* %59, i32* %62, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %47
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @nfs_error_string(i32 %75)
  %77 = call i32 (i8*, i8*, ...) @eprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @map_symlink_errors(i32 %78)
  store i32 %79, i32* %5, align 4
  br label %156

80:                                               ; preds = %47
  br label %81

81:                                               ; preds = %80, %40
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  store i32 2, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  store i64 0, i64* %87, align 8
  %88 = load i64, i64* @FATTR4_WORD1_MODE, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  store i64 %88, i64* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  store i32 511, i32* %93, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @NF4LNK, align 4
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = call i32 @nfs41_create(i32 %96, i32 %97, %struct.TYPE_24__* %7, i8* %100, i32* %102, %struct.TYPE_15__* %104, %struct.TYPE_24__* %6)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %81
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @nfs_error_string(i32 %112)
  %114 = call i32 (i8*, i8*, ...) @eprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %111, i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @map_symlink_errors(i32 %115)
  store i32 %116, i32* %5, align 4
  br label %156

117:                                              ; preds = %81
  br label %155

118:                                              ; preds = %1
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = load i32, i32* @NFS41_MAX_PATH_LEN, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @nfs41_readlink(i32 %121, %struct.TYPE_15__* %123, i32 %124, i32 %128, i64* %9)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %118
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @nfs_error_string(i32 %139)
  %141 = call i32 (i8*, i8*, ...) @eprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %138, i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @map_symlink_errors(i32 %142)
  store i32 %143, i32* %5, align 4
  br label %156

144:                                              ; preds = %118
  %145 = load i64, i64* %9, align 8
  %146 = trunc i64 %145 to i16
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  store i16 %146, i16* %149, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @dprintf(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %144, %117
  br label %156

156:                                              ; preds = %155, %132, %108, %71
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @eprintf(i8*, i8*, ...) #1

declare dso_local i32 @nfs41_remove(i32, i32*, i32*, i32) #1

declare dso_local i32 @nfs_error_string(i32) #1

declare dso_local i32 @map_symlink_errors(i32) #1

declare dso_local i32 @nfs41_create(i32, i32, %struct.TYPE_24__*, i8*, i32*, %struct.TYPE_15__*, %struct.TYPE_24__*) #1

declare dso_local i32 @nfs41_readlink(i32, %struct.TYPE_15__*, i32, i32, i64*) #1

declare dso_local i32 @dprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
