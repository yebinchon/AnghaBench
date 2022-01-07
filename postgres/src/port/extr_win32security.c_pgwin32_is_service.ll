; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_win32security.c_pgwin32_is_service.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_win32security.c_pgwin32_is_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@pgwin32_is_service._is_service = internal global i32 -1, align 4
@SECURITY_NT_AUTHORITY = common dso_local global i32 0, align 4
@SECURITY_LOCAL_SYSTEM_RID = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"could not get SID for local system account\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"could not check access token membership: error code %lu\0A\00", align 1
@SECURITY_SERVICE_RID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"could not get SID for service group: error code %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgwin32_is_service() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* @SECURITY_NT_AUTHORITY, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @pgwin32_is_service._is_service, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @pgwin32_is_service._is_service, align 4
  store i32 %11, i32* %1, align 4
  br label %63

12:                                               ; preds = %0
  %13 = load i32, i32* @SECURITY_LOCAL_SYSTEM_RID, align 4
  %14 = call i32 @AllocateAndInitializeSid(%struct.TYPE_3__* %5, i32 1, i32 %13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* %4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %63

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @CheckTokenMembership(i32* null, i32 %20, i64* %2)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @FreeSid(i32 %27)
  store i32 -1, i32* %1, align 4
  br label %63

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @FreeSid(i32 %30)
  %32 = load i64, i64* %2, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  store i32 1, i32* @pgwin32_is_service._is_service, align 4
  %35 = load i32, i32* @pgwin32_is_service._is_service, align 4
  store i32 %35, i32* %1, align 4
  br label %63

36:                                               ; preds = %29
  %37 = load i32, i32* @SECURITY_SERVICE_RID, align 4
  %38 = call i32 @AllocateAndInitializeSid(%struct.TYPE_3__* %5, i32 1, i32 %37, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* %3)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %1, align 4
  br label %63

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @CheckTokenMembership(i32* null, i32 %45, i64* %2)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @FreeSid(i32 %52)
  store i32 -1, i32* %1, align 4
  br label %63

54:                                               ; preds = %44
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @FreeSid(i32 %55)
  %57 = load i64, i64* %2, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* @pgwin32_is_service._is_service, align 4
  br label %61

60:                                               ; preds = %54
  store i32 0, i32* @pgwin32_is_service._is_service, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* @pgwin32_is_service._is_service, align 4
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %61, %48, %40, %34, %23, %16, %10
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @AllocateAndInitializeSid(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @CheckTokenMembership(i32*, i32, i64*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @FreeSid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
