; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_mount.c_handle_mount.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_mount.c_handle_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_27__ = type { i16, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"nfs41_server_resolve() failed with %d\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global %struct.TYPE_24__* null, align 8
@WRITE_OVERHEAD = common dso_local global i64 0, align 8
@READ_OVERHEAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"nfs41_root_create() failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"nfs41_root_mount_addrs() failed with %d\0A\00", align 1
@NFS41_MAX_PATH_LEN = common dso_local global i32 0, align 4
@ERROR_FILENAME_EXCED_RANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"nfs41_lookup('%s') failed with %d\0A\00", align 1
@ERROR_BAD_NETPATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @handle_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_mount(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_25__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  store %struct.TYPE_28__* %12, %struct.TYPE_28__** %4, align 8
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nfs41_server_resolve(i32 %15, i32 2049, i32* %6)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %133

22:                                               ; preds = %1
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** @INVALID_HANDLE_VALUE, align 8
  %27 = icmp ne %struct.TYPE_24__* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %7, align 8
  br label %66

32:                                               ; preds = %22
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WRITE_OVERHEAD, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @READ_OVERHEAD, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @nfs41_root_create(i32 %35, i32 %38, i64 %43, i64 %48, %struct.TYPE_24__** %7)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load i32, i32* %3, align 4
  %54 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %133

55:                                               ; preds = %32
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %55, %28
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %68 = call i32 @nfs41_root_mount_addrs(%struct.TYPE_24__* %67, i32* %6, i32 0, i32 0, %struct.TYPE_26__** %8)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %3, align 4
  %73 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %135

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 2
  %76 = call i32 @InitializeSRWLock(i32* %75)
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NFS41_MAX_PATH_LEN, align 4
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @StringCchCopyA(i32 %78, i32 %79, i32 %82)
  %84 = call i64 @FAILED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i32, i32* @ERROR_FILENAME_EXCED_RANGE, align 4
  store i32 %87, i32* %3, align 4
  br label %135

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @strlen(i32 %90)
  %92 = trunc i64 %91 to i16
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 0
  store i16 %92, i16* %93, align 4
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = call i32 @nfs41_lookup(%struct.TYPE_24__* %94, %struct.TYPE_20__* %97, %struct.TYPE_27__* %5, i32* null, %struct.TYPE_25__* %9, i32* null, i32* null)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load i32, i32* @ERROR_BAD_NETPATH, align 4
  store i32 %106, i32* %3, align 4
  br label %135

107:                                              ; preds = %88
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 1
  %113 = call i32 @nfs41_superblock_fs_attributes(i32 %110, i32* %112)
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** @INVALID_HANDLE_VALUE, align 8
  %118 = icmp eq %struct.TYPE_24__* %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %107
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %121 = call i32 @nfs41_root_ref(%struct.TYPE_24__* %120)
  br label %122

122:                                              ; preds = %119, %107
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %125, align 8
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %144, %122, %52, %19
  %134 = load i32, i32* %3, align 4
  ret i32 %134

135:                                              ; preds = %101, %86, %71
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %137, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** @INVALID_HANDLE_VALUE, align 8
  %140 = icmp eq %struct.TYPE_24__* %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %143 = call i32 @nfs41_root_deref(%struct.TYPE_24__* %142)
  br label %144

144:                                              ; preds = %141, %135
  br label %133
}

declare dso_local i32 @nfs41_server_resolve(i32, i32, i32*) #1

declare dso_local i32 @eprintf(i8*, i32, ...) #1

declare dso_local i32 @nfs41_root_create(i32, i32, i64, i64, %struct.TYPE_24__**) #1

declare dso_local i32 @nfs41_root_mount_addrs(%struct.TYPE_24__*, i32*, i32, i32, %struct.TYPE_26__**) #1

declare dso_local i32 @InitializeSRWLock(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @StringCchCopyA(i32, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @nfs41_lookup(%struct.TYPE_24__*, %struct.TYPE_20__*, %struct.TYPE_27__*, i32*, %struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @nfs41_superblock_fs_attributes(i32, i32*) #1

declare dso_local i32 @nfs41_root_ref(%struct.TYPE_24__*) #1

declare dso_local i32 @nfs41_root_deref(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
