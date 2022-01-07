; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi_oe.c_kuhl_m_dpapi_oe_autosid.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi_oe.c_kuhl_m_dpapi_oe_autosid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i32] [i32 65, i32 117, i32 116, i32 111, i32 32, i32 83, i32 73, i32 68, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 112, i32 97, i32 116, i32 104, i32 32, i32 115, i32 101, i32 101, i32 109, i32 115, i32 32, i32 116, i32 111, i32 32, i32 98, i32 101, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_oe_autosid(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = call i32* @_wcsdup(i64 %13)
  store i32* %14, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = call i32* @wcsrchr(i32* %17, i32 92)
  store i32* %18, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @wcsrchr(i32* %22, i32 92)
  store i32* %23, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %7, align 8
  %28 = call i64 @ConvertStringSidToSid(i32* %27, i32* %8)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ConvertSidToStringSid(i32 %31, i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kprintf(i8* bitcast ([36 x i32]* @.str to i8*), i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @LocalFree(i32 %40)
  br label %42

42:                                               ; preds = %39, %25
  br label %43

43:                                               ; preds = %42, %20
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @free(i32* %45)
  br label %47

47:                                               ; preds = %44, %12, %2
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32* @_wcsdup(i64) #1

declare dso_local i32* @wcsrchr(i32*, i32) #1

declare dso_local i64 @ConvertStringSidToSid(i32*, i32*) #1

declare dso_local i32 @ConvertSidToStringSid(i32, i32*) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
