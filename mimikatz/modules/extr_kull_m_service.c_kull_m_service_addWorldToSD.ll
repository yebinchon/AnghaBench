; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_service.c_kull_m_service_addWorldToSD.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_service.c_kull_m_service_addWorldToSD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@SECURITY_WORLD_SID_AUTHORITY = common dso_local global i32 0, align 4
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@SERVICE_QUERY_CONFIG = common dso_local global i32 0, align 4
@SERVICE_INTERROGATE = common dso_local global i32 0, align 4
@SERVICE_ENUMERATE_DEPENDENTS = common dso_local global i32 0, align 4
@SERVICE_PAUSE_CONTINUE = common dso_local global i32 0, align 4
@SERVICE_START = common dso_local global i32 0, align 4
@SERVICE_STOP = common dso_local global i32 0, align 4
@SERVICE_USER_DEFINED_CONTROL = common dso_local global i32 0, align 4
@READ_CONTROL = common dso_local global i32 0, align 4
@SET_ACCESS = common dso_local global i32 0, align 4
@NO_INHERITANCE = common dso_local global i32 0, align 4
@DACL_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@SECURITY_WORLD_RID = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@NO_MULTIPLE_TRUSTEE = common dso_local global i32 0, align 4
@TRUSTEE_IS_SID = common dso_local global i32 0, align 4
@TRUSTEE_IS_WELL_KNOWN_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_service_addWorldToSD(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @SECURITY_WORLD_SID_AUTHORITY, align 4
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %13 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %14 = load i32, i32* @SERVICE_QUERY_CONFIG, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SERVICE_INTERROGATE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SERVICE_ENUMERATE_DEPENDENTS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SERVICE_PAUSE_CONTINUE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SERVICE_START, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SERVICE_STOP, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SERVICE_USER_DEFINED_CONTROL, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @READ_CONTROL, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* @SET_ACCESS, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* @NO_INHERITANCE, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %34, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %46 = call i64 @QueryServiceObjectSecurity(i32 %44, i32 %45, i32* %7, i32 0, i32* %4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %93, label %48

48:                                               ; preds = %1
  %49 = call i64 (...) @GetLastError()
  %50 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  %53 = load i32, i32* @LPTR, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @LocalAlloc(i32 %53, i32 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %92

58:                                               ; preds = %52
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @QueryServiceObjectSecurity(i32 %59, i32 %60, i32* %61, i32 %62, i32* %4)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %58
  %66 = load i32, i32* @SECURITY_WORLD_RID, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i64 @AllocateAndInitializeSid(i32* %8, i32 1, i32 %66, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %65
  %72 = load i32*, i32** %5, align 8
  %73 = call i64 @BuildSecurityDescriptor(i32* null, i32* null, i32 1, %struct.TYPE_7__* %9, i32 0, i32* null, i32* %72, i32* %4, i32** %6)
  %74 = load i64, i64* @ERROR_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @SetServiceObjectSecurity(i32 %77, i32 %78, i32* %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @LocalFree(i32* %81)
  br label %83

83:                                               ; preds = %76, %71
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @FreeSid(i32 %86)
  br label %88

88:                                               ; preds = %83, %65
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @LocalFree(i32* %90)
  br label %92

92:                                               ; preds = %89, %52
  br label %93

93:                                               ; preds = %92, %48, %1
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @QueryServiceObjectSecurity(i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i64 @AllocateAndInitializeSid(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @BuildSecurityDescriptor(i32*, i32*, i32, %struct.TYPE_7__*, i32, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @SetServiceObjectSecurity(i32, i32, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @FreeSid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
