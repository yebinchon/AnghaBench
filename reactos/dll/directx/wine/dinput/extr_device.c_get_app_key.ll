; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c_get_app_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c_get_app_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Software\\Wine\\DirectInput\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Software\\Wine\\AppDefaults\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\\DirectInput\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_app_key(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = add nsw i32 %11, 16
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i64*, i64** %4, align 8
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* @HKEY_CURRENT_USER, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = call i64 @RegOpenKeyA(i64 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64*, i64** %3, align 8
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = call i32 @GetModuleFileNameA(i32 0, i8* %15, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load i64, i64* @HKEY_CURRENT_USER, align 8
  %34 = call i64 @RegOpenKeyA(i64 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64* %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %32
  store i8* %15, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i8* @strrchr(i8* %37, i8 signext 47)
  store i8* %38, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @strrchr(i8* %44, i8 signext 92)
  store i8* %45, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @strcat(i8* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i64, i64* %8, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i64*, i64** %4, align 8
  %56 = call i64 @RegOpenKeyA(i64 %53, i8* %54, i64* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i64*, i64** %4, align 8
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %58, %50
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @RegCloseKey(i64 %61)
  br label %63

63:                                               ; preds = %60, %32
  br label %64

64:                                               ; preds = %63, %28, %23
  %65 = load i64*, i64** %3, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i64*, i64** %4, align 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ true, %64 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %75)
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyA(i64, i8*, i64*) #2

declare dso_local i32 @GetModuleFileNameA(i32, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @RegCloseKey(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
