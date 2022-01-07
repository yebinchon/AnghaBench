; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_find_in_PMGL.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_find_in_PMGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmPmglHeader = type { i32* }

@CHM_MAX_PATHLEN = common dso_local global i32 0, align 4
@_CHM_PMGL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*)* @_chm_find_in_PMGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_chm_find_in_PMGL(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.chmPmglHeader, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @CHM_MAX_PATHLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %11, align 8
  %23 = load i32, i32* @_CHM_PMGL_LEN, align 4
  store i32 %23, i32* %9, align 4
  %24 = call i32 @_unmarshal_pmgl_header(i32** %11, i32* %9, %struct.chmPmglHeader* %8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %59

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %8, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = ptrtoint i32* %31 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %10, align 8
  br label %39

39:                                               ; preds = %56, %27
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ult i32* %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i32*, i32** %11, align 8
  store i32* %44, i32** %12, align 8
  %45 = call i32 @_chm_parse_cword(i32** %11)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @_chm_parse_UTF8(i32** %11, i32 %46, i32* %21)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %59

50:                                               ; preds = %43
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @wcsicmp(i32* %21, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32*, i32** %12, align 8
  store i32* %55, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %59

56:                                               ; preds = %50
  %57 = call i32 @_chm_skip_PMGL_entry_data(i32** %11)
  br label %39

58:                                               ; preds = %39
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %59

59:                                               ; preds = %58, %54, %49, %26
  %60 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_unmarshal_pmgl_header(i32**, i32*, %struct.chmPmglHeader*) #2

declare dso_local i32 @_chm_parse_cword(i32**) #2

declare dso_local i32 @_chm_parse_UTF8(i32**, i32, i32*) #2

declare dso_local i32 @wcsicmp(i32*, i32*) #2

declare dso_local i32 @_chm_skip_PMGL_entry_data(i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
