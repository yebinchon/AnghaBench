; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_regstore.c_CRYPT_RegReadFromReg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_regstore.c_CRYPT_RegReadFromReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPT_RegReadFromReg.subKeys = internal constant [3 x i32*] [i32* inttoptr (i64 128 to i32*), i32* inttoptr (i64 130 to i32*), i32* inttoptr (i64 129 to i32*)], align 16
@CRYPT_RegReadFromReg.contextFlags = internal constant [3 x i64] [i64 133, i64 132, i64 131], align 16
@KEY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @CRYPT_RegReadFromReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CRYPT_RegReadFromReg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @ARRAY_SIZE(i32** getelementptr inbounds ([3 x i32*], [3 x i32*]* @CRYPT_RegReadFromReg.subKeys, i64 0, i64 0))
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds [3 x i32*], [3 x i32*]* @CRYPT_RegReadFromReg.subKeys, i64 0, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @KEY_READ, align 4
  %18 = call i32 @RegCreateKeyExW(i32 %13, i32* %16, i32 0, i32* null, i32 0, i32 %17, i32* null, i32* %6, i32* null)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds [3 x i64], [3 x i64]* @CRYPT_RegReadFromReg.contextFlags, i64 0, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @CRYPT_RegReadSerializedFromReg(i32 %22, i64 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @RegCloseKey(i32 %28)
  br label %30

30:                                               ; preds = %21, %12
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %8

34:                                               ; preds = %8
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @CRYPT_RegReadSerializedFromReg(i32, i64, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
