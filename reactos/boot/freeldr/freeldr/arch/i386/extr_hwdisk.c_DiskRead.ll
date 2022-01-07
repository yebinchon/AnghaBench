; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_hwdisk.c_DiskRead.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_hwdisk.c_DiskRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32 }

@DiskReadBufferSize = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DiskReadBuffer = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*)* @DiskRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DiskRead(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.TYPE_3__* @FsGetDeviceSpecific(i32 %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %9, align 8
  %19 = load i32*, i32** %6, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32, i32* @DiskReadBufferSize, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %24, %27
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %29, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @DiskReadBufferSize, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %34, %37
  store i32 %38, i32* %13, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  store i64 %45, i64* %15, align 8
  %46 = load i32, i32* %13, align 4
  %47 = icmp sgt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %83, %4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %59, %54
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @DiskReadBuffer, align 4
  %68 = call i32 @MachDiskReadLogicalSectors(i32 %64, i64 %65, i32 %66, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %102

72:                                               ; preds = %61
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %73, %76
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %81, %72
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* @DiskReadBuffer, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @RtlCopyMemory(i32* %84, i32 %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %15, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %15, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %12, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %12, align 4
  br label %51

102:                                              ; preds = %71, %51
  %103 = load i32*, i32** %10, align 8
  %104 = ptrtoint i32* %103 to i64
  %105 = load i32*, i32** %6, align 8
  %106 = ptrtoint i32* %105 to i64
  %107 = sub nsw i64 %104, %106
  %108 = trunc i64 %107 to i32
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i64, i64* %15, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %110, %113
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %102
  %120 = load i32, i32* @EIO, align 4
  br label %123

121:                                              ; preds = %102
  %122 = load i32, i32* @ESUCCESS, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  ret i32 %124
}

declare dso_local %struct.TYPE_3__* @FsGetDeviceSpecific(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MachDiskReadLogicalSectors(i32, i64, i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
