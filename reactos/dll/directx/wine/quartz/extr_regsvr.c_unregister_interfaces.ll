; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_unregister_interfaces.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_unregister_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_interface = type { i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@interface_keyname = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_interface*)* @unregister_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_interfaces(%struct.regsvr_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regsvr_interface*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [39 x i32], align 16
  store %struct.regsvr_interface* %0, %struct.regsvr_interface** %3, align 8
  %7 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %9 = load i32, i32* @interface_keyname, align 4
  %10 = load i32, i32* @KEY_READ, align 4
  %11 = load i32, i32* @KEY_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @RegOpenKeyExW(i32 %8, i32 %9, i32 0, i32 %12, i32* %5)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %2, align 4
  br label %68

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %57

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %51, %24
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.regsvr_interface*, %struct.regsvr_interface** %3, align 8
  %31 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %54

36:                                               ; preds = %34
  %37 = load %struct.regsvr_interface*, %struct.regsvr_interface** %3, align 8
  %38 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %41 = call i32 @StringFromGUID2(i64 %39, i32* %40, i32 39)
  %42 = load i32, i32* %5, align 4
  %43 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %44 = call i64 @RegDeleteTreeW(i32 %42, i32* %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %48, %36
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.regsvr_interface*, %struct.regsvr_interface** %3, align 8
  %53 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %52, i32 1
  store %struct.regsvr_interface* %53, %struct.regsvr_interface** %3, align 8
  br label %25

54:                                               ; preds = %34
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @RegCloseKey(i32 %55)
  br label %57

57:                                               ; preds = %54, %23
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @HRESULT_FROM_WIN32(i64 %62)
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @S_OK, align 4
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i32 [ %63, %61 ], [ %65, %64 ]
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %17
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @StringFromGUID2(i64, i32*, i32) #1

declare dso_local i64 @RegDeleteTreeW(i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
