; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_pxe.c_PxeRead.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_pxe.c_PxeRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@_OpenFile = common dso_local global i64 0, align 8
@NO_FILE = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@_Packet = common dso_local global i64 0, align 8
@_CachedLength = common dso_local global i64 0, align 8
@_FilePosition = common dso_local global i64 0, align 8
@_CachedFile = common dso_local global i32* null, align 8
@_PacketPosition = common dso_local global i64 0, align 8
@PXENV_TFTP_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i64, i64*)* @PxeRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PxeRead(i64 %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64*, i64** %9, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @_OpenFile, align 8
  %14 = load i64, i64* @NO_FILE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @_OpenFile, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %4
  %21 = load i32, i32* @EBADF, align 4
  store i32 %21, i32* %5, align 4
  br label %112

22:                                               ; preds = %16
  %23 = call i32 @RtlZeroMemory(%struct.TYPE_6__* %10, i32 16)
  %24 = load i64, i64* @_Packet, align 8
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 983040
  %27 = sdiv i32 %26, 16
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* @_Packet, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 65535
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %104, %22
  %36 = load i64, i64* %8, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %110

38:                                               ; preds = %35
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @_CachedLength, align 8
  %41 = load i64, i64* @_FilePosition, align 8
  %42 = sub nsw i64 %40, %41
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %11, align 8
  br label %50

46:                                               ; preds = %38
  %47 = load i64, i64* @_CachedLength, align 8
  %48 = load i64, i64* @_FilePosition, align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %46, %44
  %51 = load i32*, i32** @_CachedFile, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** @_CachedFile, align 8
  %56 = load i64, i64* @_FilePosition, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = ptrtoint i32* %57 to i64
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @RtlCopyMemory(i32* %54, i64 %58, i64 %59)
  br label %70

61:                                               ; preds = %50
  %62 = load i32*, i32** %7, align 8
  %63 = load i64, i64* @_Packet, align 8
  %64 = load i64, i64* @_FilePosition, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64, i64* @_PacketPosition, align 8
  %67 = sub nsw i64 %65, %66
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @RtlCopyMemory(i32* %62, i64 %67, i64 %68)
  br label %70

70:                                               ; preds = %61, %53
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @_FilePosition, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* @_FilePosition, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %7, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %77
  store i64 %80, i64* %78, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub nsw i64 %82, %81
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %70
  br label %110

87:                                               ; preds = %70
  %88 = load i32, i32* @PXENV_TFTP_READ, align 4
  %89 = call i32 @CallPxe(i32 %88, %struct.TYPE_6__* %10)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @EIO, align 4
  store i32 %92, i32* %5, align 4
  br label %112

93:                                               ; preds = %87
  %94 = load i32*, i32** @_CachedFile, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32*, i32** @_CachedFile, align 8
  %98 = load i64, i64* @_CachedLength, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i64, i64* @_Packet, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @RtlCopyMemory(i32* %99, i64 %100, i64 %102)
  br label %104

104:                                              ; preds = %96, %93
  %105 = load i64, i64* @_CachedLength, align 8
  store i64 %105, i64* @_PacketPosition, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @_CachedLength, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* @_CachedLength, align 8
  br label %35

110:                                              ; preds = %86, %35
  %111 = load i32, i32* @ESUCCESS, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %91, %20
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i64, i64) #1

declare dso_local i32 @CallPxe(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
