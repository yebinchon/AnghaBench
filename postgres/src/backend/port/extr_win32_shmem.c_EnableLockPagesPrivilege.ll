; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_shmem.c_EnableLockPagesPrivilege.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_shmem.c_EnableLockPagesPrivilege.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"could not enable Lock Pages in Memory user right: error code %lu\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed system call was %s.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"OpenProcessToken\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SE_LOCK_MEMORY_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"LookupPrivilegeValue\00", align 1
@SE_PRIVILEGE_ENABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"AdjustTokenPrivileges\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_NOT_ALL_ASSIGNED = common dso_local global i64 0, align 8
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"could not enable Lock Pages in Memory user right\00", align 1
@.str.6 = private unnamed_addr constant [90 x i8] c"Assign Lock Pages in Memory user right to the Windows user account which runs PostgreSQL.\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @EnableLockPagesPrivilege to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EnableLockPagesPrivilege(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 (...) @GetCurrentProcess()
  %8 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %9 = load i32, i32* @TOKEN_QUERY, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @OpenProcessToken(i32 %7, i32 %10, i32* %4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 (...) @GetLastError()
  %16 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call i32 @errdetail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @ereport(i32 %14, i32 %17)
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %2, align 4
  br label %87

20:                                               ; preds = %1
  %21 = load i32, i32* @SE_LOCK_MEMORY_NAME, align 4
  %22 = call i32 @LookupPrivilegeValue(i32* null, i32 %21, i32* %6)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = call i32 @errdetail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @ereport(i32 %25, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @CloseHandle(i32 %30)
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %2, align 4
  br label %87

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @SE_PRIVILEGE_ENABLED, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @AdjustTokenPrivileges(i32 %45, i32 %46, %struct.TYPE_5__* %5, i32 0, i32* null, i32* null)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %3, align 4
  %51 = call i64 (...) @GetLastError()
  %52 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = call i32 @errdetail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i32 @ereport(i32 %50, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @CloseHandle(i32 %55)
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %2, align 4
  br label %87

58:                                               ; preds = %33
  %59 = call i64 (...) @GetLastError()
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = call i64 (...) @GetLastError()
  %64 = load i64, i64* @ERROR_NOT_ALL_ASSIGNED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %69 = call i32 @errcode(i32 %68)
  %70 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %71 = call i32 @errhint(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i64 0, i64 0))
  %72 = call i32 @ereport(i32 %67, i32 %71)
  br label %79

73:                                               ; preds = %62
  %74 = load i32, i32* %3, align 4
  %75 = call i64 (...) @GetLastError()
  %76 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = call i32 @errdetail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %78 = call i32 @ereport(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %66
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @CloseHandle(i32 %80)
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %2, align 4
  br label %87

83:                                               ; preds = %58
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @CloseHandle(i32 %84)
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %79, %49, %24, %13
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

declare dso_local i32 @LookupPrivilegeValue(i32*, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @AdjustTokenPrivileges(i32, i32, %struct.TYPE_5__*, i32, i32*, i32*) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
