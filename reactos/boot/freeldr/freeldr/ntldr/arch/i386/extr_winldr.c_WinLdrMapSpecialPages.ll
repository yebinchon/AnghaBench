; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/i386/extr_winldr.c_WinLdrMapSpecialPages.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/i386/extr_winldr.c_WinLdrMapSpecialPages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"HalPageTable: 0x%X\0A\00", align 1
@HalPageTable = common dso_local global %struct.TYPE_3__* null, align 8
@PcrBasePage = common dso_local global i8* null, align 8
@KI_USER_SHARED_DATA = common dso_local global i32 0, align 4
@MM_PAGE_SHIFT = common dso_local global i32 0, align 4
@KIP0PCRADDRESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @WinLdrMapSpecialPages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WinLdrMapSpecialPages() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @HalPageTable, align 8
  %2 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %1)
  %3 = load i8*, i8** @PcrBasePage, align 8
  %4 = getelementptr i8, i8* %3, i64 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @HalPageTable, align 8
  %6 = load i32, i32* @KI_USER_SHARED_DATA, align 4
  %7 = sub i32 %6, -4194304
  %8 = load i32, i32* @MM_PAGE_SHIFT, align 4
  %9 = lshr i32 %7, %8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i8* %4, i8** %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @HalPageTable, align 8
  %14 = load i32, i32* @KI_USER_SHARED_DATA, align 4
  %15 = sub i32 %14, -4194304
  %16 = load i32, i32* @MM_PAGE_SHIFT, align 4
  %17 = lshr i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @HalPageTable, align 8
  %22 = load i32, i32* @KI_USER_SHARED_DATA, align 4
  %23 = sub i32 %22, -4194304
  %24 = load i32, i32* @MM_PAGE_SHIFT, align 4
  %25 = lshr i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load i8*, i8** @PcrBasePage, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @HalPageTable, align 8
  %31 = load i32, i32* @KIP0PCRADDRESS, align 4
  %32 = sub i32 %31, -4194304
  %33 = load i32, i32* @MM_PAGE_SHIFT, align 4
  %34 = lshr i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i8* %29, i8** %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @HalPageTable, align 8
  %39 = load i32, i32* @KIP0PCRADDRESS, align 4
  %40 = sub i32 %39, -4194304
  %41 = load i32, i32* @MM_PAGE_SHIFT, align 4
  %42 = lshr i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @HalPageTable, align 8
  %47 = load i32, i32* @KIP0PCRADDRESS, align 4
  %48 = sub i32 %47, -4194304
  %49 = load i32, i32* @MM_PAGE_SHIFT, align 4
  %50 = lshr i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = call i32 (...) @WinLdrpMapApic()
  %55 = load i32, i32* @TRUE, align 4
  ret i32 %55
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @WinLdrpMapApic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
