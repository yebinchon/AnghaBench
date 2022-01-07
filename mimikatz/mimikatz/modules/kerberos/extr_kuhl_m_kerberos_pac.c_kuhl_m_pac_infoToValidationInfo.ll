; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_pac.c_kuhl_m_pac_infoToValidationInfo.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_pac.c_kuhl_m_pac_infoToValidationInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i64, i32, i32, %struct.TYPE_6__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@LPTR = common dso_local global i32 0, align 4
@USER_DONT_EXPIRE_PASSWORD = common dso_local global i32 0, align 4
@USER_NORMAL_ACCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @kuhl_m_pac_infoToValidationInfo(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_6__* %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8* %9, i8** %20, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %21, align 8
  %22 = load i32, i32* @LPTR, align 4
  %23 = call i64 @LocalAlloc(i32 %22, i32 4)
  %24 = inttoptr i64 %23 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %21, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %102

26:                                               ; preds = %10
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 16
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 15
  %33 = call i32 @KIWI_NEVERTIME(i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 14
  %36 = call i32 @KIWI_NEVERTIME(i32* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 13
  %39 = call i32 @KIWI_NEVERTIME(i32* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 12
  %42 = call i32 @KIWI_NEVERTIME(i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 11
  %45 = call i32 @KIWI_NEVERTIME(i32* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 10
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @RtlInitUnicodeString(i32* %47, i32 %48)
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %18, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 6
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %64, align 8
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %26
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @RtlInitUnicodeString(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %26
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @USER_DONT_EXPIRE_PASSWORD, align 4
  %77 = load i32, i32* @USER_NORMAL_ACCOUNT, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %20, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i64, i64* %19, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %72
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, 32
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %96, %91, %72
  br label %102

102:                                              ; preds = %101, %10
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  ret %struct.TYPE_5__* %103
}

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @KIWI_NEVERTIME(i32*) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
