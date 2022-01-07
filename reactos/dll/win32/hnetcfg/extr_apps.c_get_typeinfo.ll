; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hnetcfg/extr_apps.c_get_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hnetcfg/extr_apps.c_get_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typelib = common dso_local global i32 0, align 4
@LIBID_NetFwPublicTypeLib = common dso_local global i32 0, align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"LoadRegTypeLib failed: %08x\0A\00", align 1
@typeinfo = common dso_local global i32** null, align 8
@tid_id = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"GetTypeInfoOfGuid(%s) failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_typeinfo(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %9 = load i32, i32* @typelib, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %13 = call i32 @LoadRegTypeLib(i32* @LIBID_NetFwPublicTypeLib, i32 1, i32 0, i32 %12, i32** %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %84

21:                                               ; preds = %11
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @InterlockedCompareExchangePointer(i8** bitcast (i32* @typelib to i8**), i32* %22, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @ITypeLib_Release(i32* %26)
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32**, i32*** @typeinfo, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %70, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @typelib, align 4
  %38 = load i32*, i32** @tid_id, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32 %37, i32 %42, i32** %8)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load i32*, i32** @tid_id, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @debugstr_guid(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %84

57:                                               ; preds = %36
  %58 = load i32**, i32*** @typeinfo, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = bitcast i32** %61 to i8**
  %63 = load i32*, i32** %8, align 8
  %64 = call i64 @InterlockedCompareExchangePointer(i8** %62, i32* %63, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @ITypeInfo_Release(i32* %67)
  br label %69

69:                                               ; preds = %66, %57
  br label %70

70:                                               ; preds = %69, %29
  %71 = load i32**, i32*** @typeinfo, align 8
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32**, i32*** %5, align 8
  store i32* %75, i32** %76, align 8
  %77 = load i32**, i32*** @typeinfo, align 8
  %78 = load i32, i32* %4, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @ITypeInfo_AddRef(i32* %81)
  %83 = load i32, i32* @S_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %70, %47, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @LoadRegTypeLib(i32*, i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32, ...) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, i32*, i32*) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

declare dso_local i32 @ITypeLib_GetTypeInfoOfGuid(i32, i32, i32**) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local i32 @ITypeInfo_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
