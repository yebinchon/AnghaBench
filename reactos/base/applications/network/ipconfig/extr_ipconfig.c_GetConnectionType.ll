; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ipconfig/extr_ipconfig.c_GetConnectionType.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ipconfig/extr_ipconfig.c_GetConnectionType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [81 x i8] c"SYSTEM\\CurrentControlSet\\Control\\Network\\{4D36E972-E325-11CE-BFC1-08002BE10318}\\\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\\Connection\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@ProcessHeap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetConnectionType(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %13 = call i32* @_T(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %8, align 8
  %14 = call i32* @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @lstrlen(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lstrlen(i32* %17)
  %19 = add nsw i32 %16, %18
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @lstrlen(i32* %20)
  %22 = add nsw i32 %19, %21
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %96

27:                                               ; preds = %1
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %29 = call i32* @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @wsprintf(i32* %28, i32* %29, i32* %30, i32* %31, i32* %32)
  %34 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %36 = load i32, i32* @KEY_READ, align 4
  %37 = call i64 @RegOpenKeyEx(i32 %34, i32* %35, i32 0, i32 %36, i32** %4)
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %88

40:                                               ; preds = %27
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i64 @RegQueryValueEx(i32* %41, i32* %42, i32* null, i32* %11, i32* null, i32* %12)
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %87

46:                                               ; preds = %40
  %47 = load i32, i32* @ProcessHeap, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @HeapAlloc(i32 %47, i32 0, i32 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32* null, i32** %2, align 8
  br label %96

54:                                               ; preds = %46
  %55 = load i32, i32* @ProcessHeap, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @HeapAlloc(i32 %55, i32 0, i32 %56)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @ProcessHeap, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @HeapFree(i32 %62, i32 0, i32* %63)
  store i32* null, i32** %2, align 8
  br label %96

65:                                               ; preds = %54
  %66 = load i32*, i32** %4, align 8
  %67 = call i32* @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32*, i32** %6, align 8
  %69 = call i64 @RegQueryValueEx(i32* %66, i32* %67, i32* null, i32* %11, i32* %68, i32* %12)
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @ProcessHeap, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @HeapFree(i32 %73, i32 0, i32* %74)
  store i32* null, i32** %5, align 8
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i32*, i32** %5, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @CharToOem(i32* %80, i32* %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* @ProcessHeap, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @HeapFree(i32 %84, i32 0, i32* %85)
  br label %87

87:                                               ; preds = %83, %40
  br label %88

88:                                               ; preds = %87, %27
  %89 = load i32*, i32** %4, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @RegCloseKey(i32* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32*, i32** %5, align 8
  store i32* %95, i32** %2, align 8
  br label %96

96:                                               ; preds = %94, %61, %53, %26
  %97 = load i32*, i32** %2, align 8
  ret i32* %97
}

declare dso_local i32* @_T(i8*) #1

declare dso_local i32 @lstrlen(i32*) #1

declare dso_local i32 @wsprintf(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @RegOpenKeyEx(i32, i32*, i32, i32, i32**) #1

declare dso_local i64 @RegQueryValueEx(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @CharToOem(i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
