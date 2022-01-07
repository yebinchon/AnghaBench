; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_adapter.c_RegReadString.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_adapter.c_RegReadString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Looking in %x:%s:%s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Got Key %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Value %s has size %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Value %s is %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Closing key %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Returning %x with error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RegReadString(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @MID_TRACE, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @DH_DbgPrint(i32 %11, i8* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @strlen(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @RegOpenKey(i64 %24, i32* %25, i64* %10)
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %72

30:                                               ; preds = %23
  br label %33

31:                                               ; preds = %19, %3
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %31, %30
  %34 = load i32, i32* @MID_TRACE, align 4
  %35 = load i64, i64* %10, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @DH_DbgPrint(i32 %34, i8* %36)
  %38 = load i64, i64* %10, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = ptrtoint i32* %40 to i32
  %42 = call i64 @RegQueryValueEx(i64 %38, i32* %39, i32* null, i32* null, i32 %41, i64* %8)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %72

46:                                               ; preds = %33
  %47 = load i32, i32* @MID_TRACE, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @DH_DbgPrint(i32 %47, i8* %50)
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @malloc(i64 %52)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %7, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %72

57:                                               ; preds = %46
  %58 = load i64, i64* %10, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = ptrtoint i32* %60 to i32
  %62 = call i64 @RegQueryValueEx(i64 %58, i32* %59, i32* null, i32* null, i32 %61, i64* %8)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %72

66:                                               ; preds = %57
  %67 = load i32, i32* @MID_TRACE, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = call i32 @DH_DbgPrint(i32 %67, i8* %70)
  br label %79

72:                                               ; preds = %65, %56, %45, %29
  %73 = load i32*, i32** %7, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @free(i32* %76)
  store i32* null, i32** %7, align 8
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %66
  %80 = load i64, i64* %10, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %4, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* @MID_TRACE, align 4
  %88 = load i64, i64* %10, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @DH_DbgPrint(i32 %87, i8* %89)
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @RegCloseKey(i64 %91)
  br label %93

93:                                               ; preds = %86, %82, %79
  %94 = load i32, i32* @MID_TRACE, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i64, i64* %9, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @DH_DbgPrint(i32 %94, i8* %97)
  %99 = load i32*, i32** %7, align 8
  ret i32* %99
}

declare dso_local i32 @DH_DbgPrint(i32, i8*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @RegOpenKey(i64, i32*, i64*) #1

declare dso_local i64 @RegQueryValueEx(i64, i32*, i32*, i32*, i32, i64*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @RegCloseKey(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
