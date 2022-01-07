; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_parse_PMGL_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_parse_PMGL_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmUnitInfo = type { i32, i64, i64, i32 }

@CHM_MAX_PATHLEN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.chmUnitInfo*)* @_chm_parse_PMGL_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_chm_parse_PMGL_entry(i32** %0, %struct.chmUnitInfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.chmUnitInfo*, align 8
  %6 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.chmUnitInfo* %1, %struct.chmUnitInfo** %5, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = call i64 @_chm_parse_cword(i32** %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @CHM_MAX_PATHLEN, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load i32**, i32*** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %18 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @_chm_parse_UTF8(i32** %15, i64 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %14
  %25 = load i32**, i32*** %4, align 8
  %26 = call i64 @_chm_parse_cword(i32** %25)
  %27 = trunc i64 %26 to i32
  %28 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %29 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32**, i32*** %4, align 8
  %31 = call i64 @_chm_parse_cword(i32** %30)
  %32 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %33 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i32**, i32*** %4, align 8
  %35 = call i64 @_chm_parse_cword(i32** %34)
  %36 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %37 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %24, %22, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @_chm_parse_cword(i32**) #1

declare dso_local i32 @_chm_parse_UTF8(i32**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
