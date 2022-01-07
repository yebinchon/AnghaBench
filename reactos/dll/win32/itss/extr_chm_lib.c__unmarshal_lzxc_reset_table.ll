; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__unmarshal_lzxc_reset_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__unmarshal_lzxc_reset_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmLzxcResetTable = type { i32, i32, i32, i32, i32, i32, i32 }

@_CHM_LZXC_RESETTABLE_V1_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.chmLzxcResetTable*)* @_unmarshal_lzxc_reset_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_unmarshal_lzxc_reset_table(i8** %0, i32* %1, %struct.chmLzxcResetTable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.chmLzxcResetTable*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.chmLzxcResetTable* %2, %struct.chmLzxcResetTable** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @_CHM_LZXC_RESETTABLE_V1_LEN, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %4, align 4
  br label %58

14:                                               ; preds = %3
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %18 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %17, i32 0, i32 0
  %19 = call i32 @_unmarshal_uint32(i8** %15, i32* %16, i32* %18)
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %23 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %22, i32 0, i32 1
  %24 = call i32 @_unmarshal_uint32(i8** %20, i32* %21, i32* %23)
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %28 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %27, i32 0, i32 2
  %29 = call i32 @_unmarshal_uint32(i8** %25, i32* %26, i32* %28)
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %33 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %32, i32 0, i32 3
  %34 = call i32 @_unmarshal_uint32(i8** %30, i32* %31, i32* %33)
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %38 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %37, i32 0, i32 6
  %39 = call i32 @_unmarshal_uint64(i8** %35, i32* %36, i32* %38)
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %43 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %42, i32 0, i32 5
  %44 = call i32 @_unmarshal_uint64(i8** %40, i32* %41, i32* %43)
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %48 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %47, i32 0, i32 4
  %49 = call i32 @_unmarshal_uint64(i8** %45, i32* %46, i32* %48)
  %50 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %51 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %14
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %14
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %54, %12
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @_unmarshal_uint32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_uint64(i8**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
