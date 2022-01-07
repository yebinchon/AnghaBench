; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_pxe.c_PxeSeek.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_pxe.c_PxeSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@_OpenFile = common dso_local global i64 0, align 8
@NO_FILE = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@SeekAbsolute = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@_CachedFile = common dso_local global i64 0, align 8
@_FilePosition = common dso_local global i64 0, align 8
@ESUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@_OpenFileName = common dso_local global i32 0, align 4
@OpenReadOnly = common dso_local global i32 0, align 4
@_Packet = common dso_local global i64 0, align 8
@_CachedLength = common dso_local global i64 0, align 8
@PXENV_TFTP_READ = common dso_local global i32 0, align 4
@_PacketPosition = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_9__*, i64)* @PxeSeek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PxeSeek(i64 %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* @_OpenFile, align 8
  %10 = load i64, i64* @NO_FILE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @_OpenFile, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %3
  %17 = load i64, i64* @EBADF, align 8
  store i64 %17, i64* %4, align 8
  br label %101

18:                                               ; preds = %12
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @SeekAbsolute, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %18
  %28 = load i64, i64* @EINVAL, align 8
  store i64 %28, i64* %4, align 8
  br label %101

29:                                               ; preds = %23
  %30 = load i64, i64* @_CachedFile, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @_FilePosition, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @PxeClose(i64 %39)
  %41 = load i64, i64* @ESUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @EIO, align 8
  store i64 %44, i64* %4, align 8
  br label %101

45:                                               ; preds = %38
  %46 = load i32, i32* @_OpenFileName, align 4
  %47 = load i32, i32* @OpenReadOnly, align 4
  %48 = call i64 @PxeOpen(i32 %46, i32 %47, i64* %5)
  %49 = load i64, i64* @ESUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i64, i64* @EIO, align 8
  store i64 %52, i64* %4, align 8
  br label %101

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %32, %29
  %55 = call i32 @RtlZeroMemory(%struct.TYPE_8__* %8, i32 16)
  %56 = load i64, i64* @_Packet, align 8
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 983040
  %59 = sdiv i32 %58, 16
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* @_Packet, align 8
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 65535
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %90, %54
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @_CachedLength, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %67
  %74 = load i32, i32* @PXENV_TFTP_READ, align 4
  %75 = call i32 @CallPxe(i32 %74, %struct.TYPE_8__* %8)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* @EIO, align 8
  store i64 %78, i64* %4, align 8
  br label %101

79:                                               ; preds = %73
  %80 = load i64, i64* @_CachedFile, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i64, i64* @_CachedFile, align 8
  %84 = load i64, i64* @_CachedLength, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i64, i64* @_Packet, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @RtlCopyMemory(i64 %85, i64 %86, i64 %88)
  br label %90

90:                                               ; preds = %82, %79
  %91 = load i64, i64* @_CachedLength, align 8
  store i64 %91, i64* @_PacketPosition, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @_CachedLength, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* @_CachedLength, align 8
  br label %67

96:                                               ; preds = %67
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* @_FilePosition, align 8
  %100 = load i64, i64* @ESUCCESS, align 8
  store i64 %100, i64* %4, align 8
  br label %101

101:                                              ; preds = %96, %77, %51, %43, %27, %16
  %102 = load i64, i64* %4, align 8
  ret i64 %102
}

declare dso_local i64 @PxeClose(i64) #1

declare dso_local i64 @PxeOpen(i32, i32, i64*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @CallPxe(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
