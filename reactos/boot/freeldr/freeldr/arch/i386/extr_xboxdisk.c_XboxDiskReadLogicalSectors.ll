; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxdisk.c_XboxDiskReadLogicalSectors.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxdisk.c_XboxDiskReadLogicalSectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Invalid drive number\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"48bit LBA required but not implemented\0A\00", align 1
@XBOX_IDE_COMMAND_PORT = common dso_local global i32 0, align 4
@XBOX_IDE_CONTROL_PORT = common dso_local global i32 0, align 4
@IDE_DH_LBA = common dso_local global i32 0, align 4
@IDE_DH_DRV0 = common dso_local global i32 0, align 4
@IDE_DH_DRV1 = common dso_local global i32 0, align 4
@IDE_CMD_READ = common dso_local global i32 0, align 4
@IDE_SECTOR_BUF_SZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XboxDiskReadLogicalSectors(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 128
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 15
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %4
  %19 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %89

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @UINT64_C(i32 -268435456)
  %26 = and i32 %24, %25
  %27 = call i32 @UINT64_C(i32 0)
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %5, align 4
  br label %89

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %77, %32
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %38, 255
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 255, %42 ]
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @XBOX_IDE_COMMAND_PORT, align 4
  %46 = load i32, i32* @XBOX_IDE_CONTROL_PORT, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 255
  %50 = load i32, i32* %10, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = load i32, i32* %10, align 4
  %54 = ashr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 24
  %58 = and i32 %57, 15
  %59 = load i32, i32* @IDE_DH_LBA, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %43
  %65 = load i32, i32* @IDE_DH_DRV0, align 4
  br label %68

66:                                               ; preds = %43
  %67 = load i32, i32* @IDE_DH_DRV1, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = or i32 %60, %69
  %71 = load i32, i32* @IDE_CMD_READ, align 4
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @XboxDiskPolledRead(i32 %45, i32 %46, i32 0, i32 %47, i32 %49, i32 %52, i32 %55, i32 %70, i32 %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %5, align 4
  br label %89

77:                                               ; preds = %68
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i64, i64* %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @IDE_SECTOR_BUF_SZ, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %81, %85
  store i64 %86, i64* %9, align 8
  br label %34

87:                                               ; preds = %34
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %75, %29, %18
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @XboxDiskPolledRead(i32, i32, i32, i32, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
