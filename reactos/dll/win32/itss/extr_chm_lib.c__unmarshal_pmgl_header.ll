; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__unmarshal_pmgl_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__unmarshal_pmgl_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmPmglHeader = type { i32, i32, i32, i32, i32 }

@_CHM_PMGL_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@_chm_pmgl_marker = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.chmPmglHeader*)* @_unmarshal_pmgl_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_unmarshal_pmgl_header(i8** %0, i32* %1, %struct.chmPmglHeader* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.chmPmglHeader*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.chmPmglHeader* %2, %struct.chmPmglHeader** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @_CHM_PMGL_LEN, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %4, align 4
  br label %51

14:                                               ; preds = %3
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %7, align 8
  %18 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @_unmarshal_char_array(i8** %15, i32* %16, i32 %19, i32 4)
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %7, align 8
  %24 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %23, i32 0, i32 4
  %25 = call i32 @_unmarshal_uint32(i8** %21, i32* %22, i32* %24)
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %7, align 8
  %29 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %28, i32 0, i32 3
  %30 = call i32 @_unmarshal_uint32(i8** %26, i32* %27, i32* %29)
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %7, align 8
  %34 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %33, i32 0, i32 2
  %35 = call i32 @_unmarshal_int32(i8** %31, i32* %32, i32* %34)
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %7, align 8
  %39 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %38, i32 0, i32 1
  %40 = call i32 @_unmarshal_int32(i8** %36, i32* %37, i32* %39)
  %41 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %7, align 8
  %42 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @_chm_pmgl_marker, align 4
  %45 = call i64 @memcmp(i32 %43, i32 %44, i32 4)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %14
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %14
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %47, %12
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @_unmarshal_char_array(i8**, i32*, i32, i32) #1

declare dso_local i32 @_unmarshal_uint32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_int32(i8**, i32*, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
