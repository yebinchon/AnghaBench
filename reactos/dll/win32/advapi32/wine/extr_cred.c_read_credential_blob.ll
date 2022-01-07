; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_cred.c_read_credential_blob.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_cred.c_read_credential_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustring = type { i8*, i64, i64 }

@KEY_SIZE = common dso_local global i64 0, align 8
@wszPasswordValue = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_BINARY = common dso_local global i64 0, align 8
@ERROR_REGISTRY_CORRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i8*, i64*)* @read_credential_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_credential_blob(i32 %0, i32* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ustring, align 8
  %13 = alloca %struct.ustring, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* @KEY_SIZE, align 8
  %15 = load i64*, i64** %9, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @wszPasswordValue, align 4
  %18 = load i64*, i64** %9, align 8
  %19 = call i64 @RegQueryValueExW(i32 %16, i32 %17, i32 0, i64* %11, i8* null, i64* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %5, align 8
  br label %69

25:                                               ; preds = %4
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @REG_BINARY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @ERROR_REGISTRY_CORRUPT, align 8
  store i64 %30, i64* %5, align 8
  br label %69

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @wszPasswordValue, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = call i64 @RegQueryValueExW(i32 %36, i32 %37, i32 0, i64* %11, i8* %38, i64* %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %5, align 8
  br label %69

46:                                               ; preds = %35
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @REG_BINARY, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @ERROR_REGISTRY_CORRUPT, align 8
  store i64 %51, i64* %5, align 8
  br label %69

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* @KEY_SIZE, align 8
  %55 = getelementptr inbounds %struct.ustring, %struct.ustring* %13, i32 0, i32 1
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.ustring, %struct.ustring* %13, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = bitcast i32* %57 to i8*
  %59 = getelementptr inbounds %struct.ustring, %struct.ustring* %13, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.ustring, %struct.ustring* %12, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.ustring, %struct.ustring* %12, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds %struct.ustring, %struct.ustring* %12, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  %66 = call i32 @SystemFunction032(%struct.ustring* %12, %struct.ustring* %13)
  br label %67

67:                                               ; preds = %53, %32
  %68 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %67, %50, %44, %29, %23
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local i64 @RegQueryValueExW(i32, i32, i32, i64*, i8*, i64*) #1

declare dso_local i32 @SystemFunction032(%struct.ustring*, %struct.ustring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
