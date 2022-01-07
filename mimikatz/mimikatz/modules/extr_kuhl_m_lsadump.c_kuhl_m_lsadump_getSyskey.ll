; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_getSyskey.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_getSyskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@SYSKEY_LENGTH = common dso_local global i32 0, align 4
@kuhl_m_lsadump_SYSKEY_NAMES = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 37, i32 120, i32 0], align 4
@.str.1 = private unnamed_addr constant [26 x i32] [i32 76, i32 83, i32 65, i32 32, i32 75, i32 101, i32 121, i32 32, i32 67, i32 108, i32 97, i32 115, i32 115, i32 32, i32 114, i32 101, i32 97, i32 100, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 10, i32 0], align 4
@kuhl_m_lsadump_SYSKEY_PERMUT = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_getSyskey(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [9 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @SYSKEY_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %61, %3
  %20 = load i64, i64* %8, align 8
  %21 = load i32*, i32** @kuhl_m_lsadump_SYSKEY_NAMES, align 8
  %22 = call i64 @ARRAYSIZE(i32* %21)
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  br i1 %28, label %29, label %64

29:                                               ; preds = %27
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** @kuhl_m_lsadump_SYSKEY_NAMES, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @KEY_READ, align 4
  %38 = call i64 @kull_m_registry_RegOpenKeyEx(i32 %31, i32 %32, i32 %36, i32 0, i32 %37, i32* %9)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %29
  store i64 9, i64* %11, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %44 = call i64 @kull_m_registry_RegQueryInfoKey(i32 %41, i32 %42, i32* %43, i64* %11, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %48 = load i64, i64* %8, align 8
  %49 = mul i64 %48, 8
  %50 = getelementptr inbounds i64, i64* %18, i64 %49
  %51 = call i32 @swscanf_s(i32* %47, i8* bitcast ([3 x i32]* @.str to i8*), i64* %50)
  %52 = icmp ne i32 %51, -1
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %46, %40
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @kull_m_registry_RegCloseKey(i32 %55, i32 %56)
  br label %60

58:                                               ; preds = %29
  %59 = call i32 @PRINT_ERROR(i8* bitcast ([26 x i32]* @.str.1 to i8*))
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %19

64:                                               ; preds = %27
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  store i64 0, i64* %8, align 8
  br label %68

68:                                               ; preds = %83, %67
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* @SYSKEY_LENGTH, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i64*, i64** @kuhl_m_lsadump_SYSKEY_PERMUT, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i64, i64* %18, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %73
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %68

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %64
  %88 = load i32, i32* %7, align 4
  %89 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %89)
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ARRAYSIZE(i32*) #2

declare dso_local i64 @kull_m_registry_RegOpenKeyEx(i32, i32, i32, i32, i32, i32*) #2

declare dso_local i64 @kull_m_registry_RegQueryInfoKey(i32, i32, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @swscanf_s(i32*, i8*, i64*) #2

declare dso_local i32 @kull_m_registry_RegCloseKey(i32, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
