; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_token.c_kull_m_token_getNameDomainFromToken.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_token.c_kull_m_token_getNameDomainFromToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TokenUser = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_token_getNameDomainFromToken(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TokenUser, align 4
  %17 = call i64 @GetTokenInformation(i32 %15, i32 %16, %struct.TYPE_6__* null, i32 0, i32* %13)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %5
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = load i32, i32* @LPTR, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i64 @LocalAlloc(i32 %24, i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %12, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TokenUser, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @GetTokenInformation(i32 %30, i32 %31, %struct.TYPE_6__* %32, i32 %33, i32* %13)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @kull_m_token_getNameDomainFromSID(i32 %40, i32* %41, i32* %42, i32 %43, i32* null)
  store i32 %44, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %36
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @ConvertSidToStringSid(i32 %53, i32* %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %49, %46, %36
  br label %57

57:                                               ; preds = %56, %29
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = call i32 @LocalFree(%struct.TYPE_6__* %58)
  br label %60

60:                                               ; preds = %57, %23
  br label %61

61:                                               ; preds = %60, %19, %5
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i64 @GetTokenInformation(i32, i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @kull_m_token_getNameDomainFromSID(i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ConvertSidToStringSid(i32, i32*) #1

declare dso_local i32 @LocalFree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
