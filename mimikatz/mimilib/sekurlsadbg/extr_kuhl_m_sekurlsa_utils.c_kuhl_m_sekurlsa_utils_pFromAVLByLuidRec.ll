; ModuleID = '/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kuhl_m_sekurlsa_utils.c_kuhl_m_sekurlsa_utils_pFromAVLByLuidRec.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kuhl_m_sekurlsa_utils.c_kuhl_m_sekurlsa_utils_pFromAVLByLuidRec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kuhl_m_sekurlsa_utils_pFromAVLByLuidRec(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @ReadMemory(i64 %10, %struct.TYPE_8__* %9, i32 24, i32* null)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %79

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = load i32, i32* @LPTR, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call %struct.TYPE_8__* @LocalAlloc(i32 %18, i32 %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %8, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %51

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i64 @ReadMemory(i64 %26, %struct.TYPE_8__* %27, i32 %31, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = ptrtoint %struct.TYPE_8__* %36 to i64
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = trunc i64 %40 to i32
  %42 = call i64 @SecEqualLuid(i32 %35, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %44, %34
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = call i32 @LocalFree(%struct.TYPE_8__* %49)
  br label %51

51:                                               ; preds = %48, %17
  br label %52

52:                                               ; preds = %51, %13
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i64, i64* %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @kuhl_m_sekurlsa_utils_pFromAVLByLuidRec(i64 %61, i32 %62, i32 %63)
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %60, %55, %52
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %4, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @kuhl_m_sekurlsa_utils_pFromAVLByLuidRec(i64 %74, i32 %75, i32 %76)
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %73, %68, %65
  br label %79

79:                                               ; preds = %78, %3
  %80 = load i64, i64* %7, align 8
  ret i64 %80
}

declare dso_local i64 @ReadMemory(i64, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @LocalAlloc(i32, i32) #1

declare dso_local i64 @SecEqualLuid(i32, i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
