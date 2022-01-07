; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/disk/extr_scsiport.c_DiskOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/disk/extr_scsiport.c_DiskOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64, %struct.TYPE_13__*, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i64, i8*, i8*, i64, i8*, i8*, i8*, %struct.TYPE_15__* }

@EINVAL = common dso_local global i32 0, align 4
@ScsiDeviceExtensions = common dso_local global %struct.TYPE_15__** null, align 8
@PagedPool = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SRB_FUNCTION_EXECUTE_SCSI = common dso_local global i32 0, align 4
@SRB_FLAGS_DATA_IN = common dso_local global i32 0, align 4
@SCSIOP_READ_CAPACITY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UNIMPLEMENTED = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64*)* @DiskOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DiskOpen(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i8* null, i8** %20, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @DissectArcPath2(i32* %22, i64* %13, i64* %15, i64* %16, i64* %17, i64* %18)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %147

27:                                               ; preds = %3
  %28 = load i64, i64* %18, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %147

32:                                               ; preds = %27
  %33 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @ScsiDeviceExtensions, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %33, i64 %34
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  store i64 %41, i64* %14, align 8
  %42 = load i32, i32* @PagedPool, align 4
  %43 = call i8* @ExAllocatePool(i32 %42, i32 4)
  %44 = bitcast i8* %43 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %8, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = icmp ne %struct.TYPE_14__* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %32
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %4, align 4
  br label %147

49:                                               ; preds = %32
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = call i32 @RtlZeroMemory(%struct.TYPE_14__* %50, i32 4)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i32 4, i32* %53, align 8
  %54 = load i32, i32* @SRB_FUNCTION_EXECUTE_SCSI, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* %14, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 9
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* %15, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* %16, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  store i32 10, i32* %70, align 4
  %71 = load i32, i32* @SRB_FLAGS_DATA_IN, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  store i32 8, i32* %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  store i32 5, i32* %77, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 5
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %79, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %9, align 8
  %84 = load i32, i32* @SCSIOP_READ_CAPACITY, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = call i32 @SpiSendSynchronousSrb(%struct.TYPE_15__* %88, %struct.TYPE_14__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %49
  %93 = load i32, i32* @EIO, align 4
  store i32 %93, i32* %4, align 4
  br label %147

94:                                               ; preds = %49
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @ntohl(i32 %96)
  store i8* %97, i8** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @ntohl(i32 %99)
  %101 = ptrtoint i8* %100 to i64
  store i64 %101, i64* %19, align 8
  %102 = load i64, i64* %17, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i32, i32* @UNIMPLEMENTED, align 4
  %106 = load i32, i32* @EIO, align 4
  store i32 %106, i32* %4, align 4
  br label %147

107:                                              ; preds = %94
  %108 = load i32, i32* @PagedPool, align 4
  %109 = call i8* @ExAllocatePool(i32 %108, i32 64)
  %110 = bitcast i8* %109 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %110, %struct.TYPE_17__** %11, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %112 = icmp ne %struct.TYPE_17__* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* @ENOMEM, align 4
  store i32 %114, i32* %4, align 4
  br label %147

115:                                              ; preds = %107
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 7
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %118, align 8
  %119 = load i64, i64* %14, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load i64, i64* %15, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  %127 = load i64, i64* %16, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load i64, i64* %19, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  %134 = load i8*, i8** %20, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** %21, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = load i64*, i64** %7, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %145 = call i32 @FsSetDeviceSpecific(i64 %143, %struct.TYPE_17__* %144)
  %146 = load i32, i32* @ESUCCESS, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %115, %113, %104, %92, %47, %30, %25
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @DissectArcPath2(i32*, i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i8* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @SpiSendSynchronousSrb(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @FsSetDeviceSpecific(i64, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
