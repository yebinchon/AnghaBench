; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_util.c_nfs_to_windows_error.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_util.c_nfs_to_windows_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [83 x i8] c"nfs_to_windows_error called with non-nfs error code %d; returning the error as is\0A\00", align 1
@NO_ERROR = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@ERROR_NET_WRITE_FAULT = common dso_local global i32 0, align 4
@ERROR_FILE_EXISTS = common dso_local global i32 0, align 4
@ERROR_NOT_SAME_DEVICE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_FILE_TOO_LARGE = common dso_local global i32 0, align 4
@ERROR_DISK_FULL = common dso_local global i32 0, align 4
@ERROR_NETWORK_ACCESS_DENIED = common dso_local global i32 0, align 4
@ERROR_TOO_MANY_LINKS = common dso_local global i32 0, align 4
@ERROR_FILENAME_EXCED_RANGE = common dso_local global i32 0, align 4
@ERROR_NETNAME_DELETED = common dso_local global i32 0, align 4
@ERROR_NOT_EMPTY = common dso_local global i32 0, align 4
@ERROR_LOCK_FAILED = common dso_local global i32 0, align 4
@ERROR_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@ERROR_LOCK_VIOLATION = common dso_local global i32 0, align 4
@ERROR_SHARING_VIOLATION = common dso_local global i32 0, align 4
@ERROR_NOT_LOCKED = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERROR_ATOMIC_LOCKS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@ERROR_FILE_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"nfs error %s not mapped to windows error; returning default error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_to_windows_error(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 70
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 10001
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 10087
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %11, %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @eprintf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %77 [
    i32 128, label %23
    i32 137, label %25
    i32 144, label %27
    i32 151, label %29
    i32 162, label %31
    i32 155, label %33
    i32 129, label %35
    i32 152, label %37
    i32 153, label %39
    i32 142, label %41
    i32 136, label %43
    i32 146, label %45
    i32 145, label %47
    i32 134, label %49
    i32 140, label %51
    i32 156, label %53
    i32 132, label %55
    i32 149, label %57
    i32 135, label %59
    i32 147, label %61
    i32 160, label %63
    i32 138, label %65
    i32 148, label %67
    i32 159, label %69
    i32 158, label %69
    i32 141, label %71
    i32 150, label %71
    i32 133, label %71
    i32 130, label %71
    i32 154, label %73
    i32 143, label %73
    i32 139, label %73
    i32 157, label %73
    i32 161, label %73
    i32 131, label %75
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @NO_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %21
  %26 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  store i32 %26, i32* %3, align 4
  br label %83

27:                                               ; preds = %21
  %28 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  store i32 %28, i32* %3, align 4
  br label %83

29:                                               ; preds = %21
  %30 = load i32, i32* @ERROR_NET_WRITE_FAULT, align 4
  store i32 %30, i32* %3, align 4
  br label %83

31:                                               ; preds = %21
  %32 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  store i32 %32, i32* %3, align 4
  br label %83

33:                                               ; preds = %21
  %34 = load i32, i32* @ERROR_FILE_EXISTS, align 4
  store i32 %34, i32* %3, align 4
  br label %83

35:                                               ; preds = %21
  %36 = load i32, i32* @ERROR_NOT_SAME_DEVICE, align 4
  store i32 %36, i32* %3, align 4
  br label %83

37:                                               ; preds = %21
  %38 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %38, i32* %3, align 4
  br label %83

39:                                               ; preds = %21
  %40 = load i32, i32* @ERROR_FILE_TOO_LARGE, align 4
  store i32 %40, i32* %3, align 4
  br label %83

41:                                               ; preds = %21
  %42 = load i32, i32* @ERROR_DISK_FULL, align 4
  store i32 %42, i32* %3, align 4
  br label %83

43:                                               ; preds = %21
  %44 = load i32, i32* @ERROR_NETWORK_ACCESS_DENIED, align 4
  store i32 %44, i32* %3, align 4
  br label %83

45:                                               ; preds = %21
  %46 = load i32, i32* @ERROR_TOO_MANY_LINKS, align 4
  store i32 %46, i32* %3, align 4
  br label %83

47:                                               ; preds = %21
  %48 = load i32, i32* @ERROR_FILENAME_EXCED_RANGE, align 4
  store i32 %48, i32* %3, align 4
  br label %83

49:                                               ; preds = %21
  %50 = load i32, i32* @ERROR_NETNAME_DELETED, align 4
  store i32 %50, i32* %3, align 4
  br label %83

51:                                               ; preds = %21
  %52 = load i32, i32* @ERROR_NOT_EMPTY, align 4
  store i32 %52, i32* %3, align 4
  br label %83

53:                                               ; preds = %21
  %54 = load i32, i32* @ERROR_LOCK_FAILED, align 4
  store i32 %54, i32* %3, align 4
  br label %83

55:                                               ; preds = %21
  %56 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  store i32 %56, i32* %3, align 4
  br label %83

57:                                               ; preds = %21
  %58 = load i32, i32* @ERROR_LOCK_VIOLATION, align 4
  store i32 %58, i32* %3, align 4
  br label %83

59:                                               ; preds = %21
  %60 = load i32, i32* @ERROR_SHARING_VIOLATION, align 4
  store i32 %60, i32* %3, align 4
  br label %83

61:                                               ; preds = %21
  %62 = load i32, i32* @ERROR_NOT_LOCKED, align 4
  store i32 %62, i32* %3, align 4
  br label %83

63:                                               ; preds = %21
  %64 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  store i32 %64, i32* %3, align 4
  br label %83

65:                                               ; preds = %21
  %66 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  store i32 %66, i32* %3, align 4
  br label %83

67:                                               ; preds = %21
  %68 = load i32, i32* @ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, align 4
  store i32 %68, i32* %3, align 4
  br label %83

69:                                               ; preds = %21, %21
  %70 = load i32, i32* @ERROR_INVALID_NAME, align 4
  store i32 %70, i32* %3, align 4
  br label %83

71:                                               ; preds = %21, %21, %21, %21
  %72 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %72, i32* %3, align 4
  br label %83

73:                                               ; preds = %21, %21, %21, %21, %21
  %74 = load i32, i32* @ERROR_FILE_INVALID, align 4
  store i32 %74, i32* %3, align 4
  br label %83

75:                                               ; preds = %21
  %76 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  store i32 %76, i32* %3, align 4
  br label %83

77:                                               ; preds = %21
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @nfs_error_string(i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @dprintf(i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @eprintf(i8*, i32) #1

declare dso_local i32 @dprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @nfs_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
