; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep_ide.c_ide_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_prep_ide.c_ide_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i16, i16, i16, i64 }

@.str = private unnamed_addr constant [36 x i8] c"HARD DISC MODEL: %s c,h,s %d,%d,%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca [256 x i16], align 16
  %5 = alloca [41 x i8], align 16
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds [256 x i16], [256 x i16]* %4, i64 0, i64 0
  store i16* %11, i16** %6, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @ide_rdy(i8* %12)
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @ide_bsy(i8* %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 512, i32* %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 2
  %22 = call i32 @SetPhysByte(i64 %21, i32 1)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 3
  %27 = call i32 @SetPhysByte(i64 %26, i32 0)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 4
  %32 = call i32 @SetPhysByte(i64 %31, i32 0)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 5
  %37 = call i32 @SetPhysByte(i64 %36, i32 0)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 6
  %42 = call i32 @SetPhysByte(i64 %41, i32 0)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 7
  %47 = call i32 @SetPhysByte(i64 %46, i32 236)
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @ide_drq(i8* %48)
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %71, %1
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %56, 2
  %58 = icmp ult i64 %52, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %50
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call signext i16 @GetPhysHalf(i64 %62)
  store i16 %63, i16* %7, align 2
  %64 = load i16, i16* %7, align 2
  %65 = call signext i16 @SWAP_W(i16 signext %64)
  %66 = load i16*, i16** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %66, i64 %68
  store i16 %65, i16* %69, align 2
  %70 = call i32 (...) @sync()
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %50

74:                                               ; preds = %50
  %75 = getelementptr inbounds [256 x i16], [256 x i16]* %4, i64 0, i64 1
  %76 = load i16, i16* %75, align 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i16 %76, i16* %78, align 4
  %79 = getelementptr inbounds [256 x i16], [256 x i16]* %4, i64 0, i64 3
  %80 = load i16, i16* %79, align 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i16 %80, i16* %82, align 2
  %83 = getelementptr inbounds [256 x i16], [256 x i16]* %4, i64 0, i64 6
  %84 = load i16, i16* %83, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i16 %84, i16* %86, align 8
  %87 = getelementptr inbounds [41 x i8], [41 x i8]* %5, i64 0, i64 0
  %88 = getelementptr inbounds [256 x i16], [256 x i16]* %4, i64 0, i64 0
  %89 = getelementptr inbounds i16, i16* %88, i64 27
  %90 = bitcast i16* %89 to i8*
  %91 = call i32 @strncpy(i8* %87, i8* %90, i32 41)
  %92 = getelementptr inbounds [41 x i8], [41 x i8]* %5, i64 0, i64 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i16, i16* %94, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i16, i16* %97, align 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i16, i16* %100, align 8
  %102 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %92, i16 signext %95, i16 signext %98, i16 signext %101)
  ret void
}

declare dso_local i32 @ide_rdy(i8*) #1

declare dso_local i32 @ide_bsy(i8*) #1

declare dso_local i32 @SetPhysByte(i64, i32) #1

declare dso_local i32 @ide_drq(i8*) #1

declare dso_local signext i16 @GetPhysHalf(i64) #1

declare dso_local signext i16 @SWAP_W(i16 signext) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i16 signext, i16 signext, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
