; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoMount.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoMount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@SECTORSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Enter IsoMount(%lu)\0A\00", align 1
@SeekAbsolute = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"CD001\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"IsoMount(%lu) success\0A\00", align 1
@Iso9660FuncTable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @IsoMount(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @SECTORSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @SECTORSIZE, align 4
  %20 = mul nsw i32 16, %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SeekAbsolute, align 4
  %24 = call i64 @ArcSeek(i32 %22, %struct.TYPE_6__* %7, i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @ESUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  store i32 1, i32* %10, align 4
  br label %57

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = load i32, i32* @SECTORSIZE, align 4
  %33 = call i64 @ArcRead(i32 %30, %struct.TYPE_5__* %31, i32 %32, i32* %8)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @ESUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 4
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %29
  store i32* null, i32** %2, align 8
  store i32 1, i32* %10, align 4
  br label %57

42:                                               ; preds = %37
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @RtlEqualMemory(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i32* @Iso9660FuncTable, i32** %2, align 8
  store i32 1, i32* %10, align 4
  br label %57

56:                                               ; preds = %47, %42
  store i32* null, i32** %2, align 8
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %53, %41, %28
  %58 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32*, i32** %2, align 8
  ret i32* %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i64 @ArcSeek(i32, %struct.TYPE_6__*, i32) #2

declare dso_local i64 @ArcRead(i32, %struct.TYPE_5__*, i32, i32*) #2

declare dso_local i64 @RtlEqualMemory(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
