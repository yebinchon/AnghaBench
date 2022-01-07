; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_misc.c_ResourceMessageBox.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_misc.c_ResourceMessageBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFFERSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ResourceMessageBox(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @BUFFERSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* @BUFFERSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %11, align 4
  %24 = mul nuw i64 4, %16
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 @LoadStringW(i32 %22, i32 %23, i32* %18, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul nuw i64 4, %20
  %31 = udiv i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @LoadStringW(i32 %28, i32 %29, i32* %21, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @MessageBoxW(i32 %34, i32* %18, i32* %21, i32 %35)
  %37 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #2

declare dso_local i32 @MessageBoxW(i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
