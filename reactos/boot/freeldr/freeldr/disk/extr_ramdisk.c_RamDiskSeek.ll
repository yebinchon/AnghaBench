; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/disk/extr_ramdisk.c_RamDiskSeek.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/disk/extr_ramdisk.c_RamDiskSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@RamDiskOffset = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RamDiskImageLength = common dso_local global i64 0, align 8
@ESUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i32)* @RamDiskSeek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RamDiskSeek(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = bitcast %struct.TYPE_3__* %8 to i8*
  %11 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %19 [
    i32 129, label %13
    i32 128, label %14
  ]

13:                                               ; preds = %3
  br label %23

14:                                               ; preds = %3
  %15 = load i64, i64* @RamDiskOffset, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %15
  store i64 %18, i64* %16, align 8
  br label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %34

23:                                               ; preds = %14, %13
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RamDiskImageLength, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* @RamDiskOffset, align 8
  %33 = load i32, i32* @ESUCCESS, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %28, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ASSERT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
