; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/amd64/extr_winldr.c_MempMapSinglePage.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/amd64/extr_winldr.c_MempMapSinglePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@PxeBase = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"!!!No Dir %p, %p, %p, %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"!!!Already mapped %ld\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @MempMapSinglePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MempMapSinglePage(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PxeBase, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @VAtoPXI(i32 %11)
  %13 = call %struct.TYPE_5__* @MempGetOrCreatePageDir(%struct.TYPE_5__* %10, i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @VAtoPPI(i32 %15)
  %17 = call %struct.TYPE_5__* @MempGetOrCreatePageDir(%struct.TYPE_5__* %14, i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @VAtoPDI(i32 %19)
  %21 = call %struct.TYPE_5__* @MempGetOrCreatePageDir(%struct.TYPE_5__* %18, i32 %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PxeBase, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %25, %struct.TYPE_5__* %26, %struct.TYPE_5__* %27, %struct.TYPE_5__* %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %61

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @VAtoPTI(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i64, i64* %9, align 8
  %42 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %61

44:                                               ; preds = %31
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = sdiv i32 %53, %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %44, %40, %24
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_5__* @MempGetOrCreatePageDir(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @VAtoPXI(i32) #1

declare dso_local i32 @VAtoPPI(i32) #1

declare dso_local i32 @VAtoPDI(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @VAtoPTI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
