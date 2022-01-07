; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_krbtgt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_krbtgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32* }
%struct.TYPE_9__ = type { i64, i32*, %struct.TYPE_10__* }

@cLsass = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@KULL_M_MEMORY_GLOBAL_OWN_HANDLE = common dso_local global i32 0, align 4
@kuhl_m_sekurlsa_kdcsvc_package = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@SecDataReferences = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i32] [i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 80, i32 114, i32 101, i32 118, i32 105, i32 111, i32 117, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [44 x i32] [i32 85, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 102, i32 105, i32 110, i32 100, i32 32, i32 75, i32 68, i32 67, i32 32, i32 112, i32 97, i32 116, i32 116, i32 101, i32 114, i32 110, i32 32, i32 105, i32 110, i32 32, i32 76, i32 83, i32 65, i32 83, i32 83, i32 32, i32 109, i32 101, i32 109, i32 111, i32 114, i32 121, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [33 x i32] [i32 75, i32 68, i32 67, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 110, i32 111, i32 116, i32 32, i32 105, i32 110, i32 32, i32 76, i32 83, i32 65, i32 83, i32 83, i32 32, i32 109, i32 101, i32 109, i32 111, i32 114, i32 121, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sekurlsa_krbtgt(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %10 = call i32 (...) @kuhl_m_sekurlsa_acquireLSA()
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cLsass, i32 0, i32 0), align 8
  store i32* %14, i32** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %17 = ptrtoint %struct.TYPE_10__* %7 to i64
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32* @KULL_M_MEMORY_GLOBAL_OWN_HANDLE, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @NT_SUCCESS(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %2
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kuhl_m_sekurlsa_kdcsvc_package, i32 0, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = load i32, i32* @SecDataReferences, align 4
  %28 = load i32, i32* @SecDataReferences, align 4
  %29 = call i32 @ARRAYSIZE(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %31 = call i64 @kuhl_m_sekurlsa_utils_search_generic(%struct.TYPE_11__* @cLsass, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kuhl_m_sekurlsa_kdcsvc_package, i32 0, i32 0), i32 %27, i32 %29, i64* %30, i32* null, i32* null, i32* %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = add i64 %35, %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = call i64 @kull_m_memory_copy(%struct.TYPE_9__* %9, %struct.TYPE_9__* %8, i32 24)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kuhl_m_sekurlsa_krbtgt_keys(i32 %45, i8* bitcast ([8 x i32]* @.str to i8*))
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @kuhl_m_sekurlsa_krbtgt_keys(i32 %48, i8* bitcast ([9 x i32]* @.str.1 to i8*))
  br label %50

50:                                               ; preds = %43, %33
  br label %53

51:                                               ; preds = %26
  %52 = call i32 @PRINT_ERROR(i8* bitcast ([44 x i32]* @.str.2 to i8*))
  br label %53

53:                                               ; preds = %51, %50
  br label %56

54:                                               ; preds = %23
  %55 = call i32 @PRINT_ERROR(i8* bitcast ([33 x i32]* @.str.3 to i8*))
  br label %56

56:                                               ; preds = %54, %53
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @kuhl_m_sekurlsa_acquireLSA(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i64 @kuhl_m_sekurlsa_utils_search_generic(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @ARRAYSIZE(i32) #1

declare dso_local i64 @kull_m_memory_copy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @kuhl_m_sekurlsa_krbtgt_keys(i32, i8*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
