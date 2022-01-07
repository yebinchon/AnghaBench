; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_open_for_attributes.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_open_for_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NF4DIR = common dso_local global i64 0, align 8
@FILE_OPEN = common dso_local global i64 0, align 8
@FILE_OVERWRITE = common dso_local global i64 0, align 8
@FILE_OPEN_IF = common dso_local global i64 0, align 8
@FILE_OVERWRITE_IF = common dso_local global i64 0, align 8
@FILE_SUPERSEDE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Opening a directory\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Creating a directory\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@FILE_READ_DATA = common dso_local global i64 0, align 8
@FILE_WRITE_DATA = common dso_local global i64 0, align 8
@FILE_APPEND_DATA = common dso_local global i64 0, align 8
@FILE_EXECUTE = common dso_local global i64 0, align 8
@FILE_CREATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Open call that wants to manage attributes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32)* @open_for_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_for_attributes(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @NF4DIR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @FILE_OPEN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %36, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @FILE_OVERWRITE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @FILE_OPEN_IF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @FILE_OVERWRITE_IF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @FILE_SUPERSEDE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %28, %24, %17, %13
  %37 = call i32 @dprintf(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %5, align 4
  br label %87

39:                                               ; preds = %32, %21
  %40 = call i32 @dprintf(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %5, align 4
  br label %87

42:                                               ; preds = %4
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @FILE_READ_DATA, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %82, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @FILE_WRITE_DATA, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %82, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @FILE_APPEND_DATA, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %82, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @FILE_EXECUTE, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @FILE_CREATE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %82, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @FILE_OVERWRITE_IF, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @FILE_SUPERSEDE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @FILE_OPEN_IF, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @FILE_OVERWRITE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %74, %70, %66, %62, %57, %52, %47, %42
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %5, align 4
  br label %87

84:                                               ; preds = %78
  %85 = call i32 @dprintf(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %82, %39, %36
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @dprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
