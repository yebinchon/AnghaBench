; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_EnumerateSoundProfiles.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_EnumerateSoundProfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"Names\00", align 1
@KEY_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EnumerateSoundProfiles(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  store i64 8, i64* %13, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @RegQueryValueEx(i32 %21, i32* null, i32* null, i32* null, i32 %25, i64* %13)
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %76

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @KEY_READ, align 4
  %35 = call i64 @RegOpenKeyEx(i32 %32, i32 %33, i32 0, i32 %34, i32* %8)
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %76

40:                                               ; preds = %31
  store i64 0, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %68, %40
  %42 = call i64 @_countof(i32* %20)
  store i64 %42, i64* %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @RegEnumKeyEx(i32 %43, i64 %44, i32* %20, i64* %9, i32* null, i32* null, i32* null, i32* null)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @_tcsicmp(i32* %20, i64 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @AddSoundProfile(i32 %50, i32 %51, i32* %20, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load i64, i64* %12, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %61, %49
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %41, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @RegCloseKey(i32 %73)
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %76

76:                                               ; preds = %72, %38, %29
  %77 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegQueryValueEx(i32, i32*, i32*, i32*, i32, i64*) #2

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i64 @_countof(i32*) #2

declare dso_local i64 @RegEnumKeyEx(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @AddSoundProfile(i32, i32, i32*, i32) #2

declare dso_local i32 @_tcsicmp(i32*, i64) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
