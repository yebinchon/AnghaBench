; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_security_products.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_security_products.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i32] [i32 119, i32 115, i32 99, i32 97, i32 112, i32 105, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CLSID_WSCProductList\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"IID_IWSCProductList\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Sec. Software Status:\00", align 1
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@WSC_SECURITY_PROVIDER_ANTIVIRUS = common dso_local global i32 0, align 4
@WSC_SECURITY_PROVIDER_FIREWALL = common dso_local global i32 0, align 4
@WSC_SECURITY_PROVIDER_ANTISPYWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @log_security_products to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_security_products() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %6 = call i32 @LoadLibraryW(i8* bitcast ([11 x i32]* @.str to i8*))
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %64

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @GetProcAddress(i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %61

19:                                               ; preds = %10
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  %23 = load i32, i32* @LOG_INFO, align 4
  %24 = call i32 @blog(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @CoCreateInstance(i32* %25, i32* null, i32 %26, i32* %27, i32** %1)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @FAILED(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %22
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @WSC_SECURITY_PROVIDER_ANTIVIRUS, align 4
  %35 = call i32 @log_security_products_by_type(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %22
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @CoCreateInstance(i32* %37, i32* null, i32 %38, i32* %39, i32** %1)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @FAILED(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load i32*, i32** %1, align 8
  %46 = load i32, i32* @WSC_SECURITY_PROVIDER_FIREWALL, align 4
  %47 = call i32 @log_security_products_by_type(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %36
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @CoCreateInstance(i32* %49, i32* null, i32 %50, i32* %51, i32** %1)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @FAILED(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* @WSC_SECURITY_PROVIDER_ANTISPYWARE, align 4
  %59 = call i32 @log_security_products_by_type(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %48
  br label %61

61:                                               ; preds = %60, %19, %10
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @FreeLibrary(i32 %62)
  br label %64

64:                                               ; preds = %61, %9
  ret void
}

declare dso_local i32 @LoadLibraryW(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i32**) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @log_security_products_by_type(i32*, i32) #1

declare dso_local i32 @FreeLibrary(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
