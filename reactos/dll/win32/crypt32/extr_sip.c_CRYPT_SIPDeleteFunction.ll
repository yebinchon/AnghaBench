; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_sip.c_CRYPT_SIPDeleteFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_sip.c_CRYPT_SIPDeleteFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@szOID = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @CRYPT_SIPDeleteFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_SIPDeleteFunction(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i32], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %9 = load i32, i32* @szOID, align 4
  %10 = call i32 @lstrcpyW(i32* %8, i32 %9)
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @lstrcatW(i32* %11, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %16 = call i64 @lstrlenW(i32* %15)
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %16
  %18 = call i32 @CRYPT_guid2wstr(i32* %14, i32* %17)
  %19 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %21 = call i32 @RegDeleteKeyW(i32 %19, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @lstrcpyW(i32*, i32) #1

declare dso_local i32 @lstrcatW(i32*, i32) #1

declare dso_local i32 @CRYPT_guid2wstr(i32*, i32*) #1

declare dso_local i64 @lstrlenW(i32*) #1

declare dso_local i32 @RegDeleteKeyW(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
