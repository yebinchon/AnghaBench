; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcdisk.c_DiskInt13ExtensionsSupported.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcdisk.c_DiskInt13ExtensionsSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@DiskInt13ExtensionsSupported.LastDriveNumber = internal global i32 255, align 4
@DiskInt13ExtensionsSupported.LastSupported = internal global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"DiskInt13ExtensionsSupported()\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Using cached value %s for drive 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"Suspicious API subset support bitmap 0x%x on device 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @DiskInt13ExtensionsSupported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DiskInt13ExtensionsSupported(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @DiskInt13ExtensionsSupported.LastDriveNumber, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i64, i64* @DiskInt13ExtensionsSupported.LastSupported, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 %15)
  %17 = load i64, i64* @DiskInt13ExtensionsSupported.LastSupported, align 8
  store i64 %17, i64* %2, align 8
  br label %69

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 138
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* @TRUE, align 8
  store i64 %22, i64* @DiskInt13ExtensionsSupported.LastSupported, align 8
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %2, align 8
  br label %69

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* @DiskInt13ExtensionsSupported.LastDriveNumber, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 65, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 21930, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = call i32 @Int386(i32 19, %struct.TYPE_9__* %4, %struct.TYPE_9__* %5)
  %34 = bitcast %struct.TYPE_9__* %5 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 4
  %39 = call i32 @INT386_SUCCESS(i64 %36, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %24
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* @DiskInt13ExtensionsSupported.LastSupported, align 8
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %2, align 8
  br label %69

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 43605
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* @DiskInt13ExtensionsSupported.LastSupported, align 8
  %51 = load i64, i64* @FALSE, align 8
  store i64 %51, i64* %2, align 8
  br label %69

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @DbgPrint(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* @DiskInt13ExtensionsSupported.LastSupported, align 8
  %65 = load i64, i64* @FALSE, align 8
  store i64 %65, i64* %2, align 8
  br label %69

66:                                               ; preds = %52
  %67 = load i64, i64* @TRUE, align 8
  store i64 %67, i64* @DiskInt13ExtensionsSupported.LastSupported, align 8
  %68 = load i64, i64* @TRUE, align 8
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %66, %58, %49, %41, %21, %10
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @Int386(i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @INT386_SUCCESS(i64, i64) #1

declare dso_local i32 @DbgPrint(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
