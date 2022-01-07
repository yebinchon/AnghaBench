; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_security.c_DumpDacl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_security.c_DumpDacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DumpDacl.dacl = internal constant [3 x i8] c"D:\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SE_DACL_PROTECTED = common dso_local global i32 0, align 4
@SE_DACL_AUTO_INHERIT_REQ = common dso_local global i32 0, align 4
@SE_DACL_AUTO_INHERITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*)* @DumpDacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DumpDacl(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GetSecurityDescriptorDacl(i32 %13, i32* %9, i32* %12, i32* %10)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @GetSecurityDescriptorControl(i32 %19, i32* %8, i32* %11)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %51

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %4, align 4
  br label %51

29:                                               ; preds = %24
  %30 = load i8**, i8*** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @DumpString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @DumpDacl.dacl, i64 0, i64 0), i32 2, i8** %30, i32* %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i8**, i8*** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SE_DACL_PROTECTED, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SE_DACL_AUTO_INHERIT_REQ, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SE_DACL_AUTO_INHERITED, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @DumpAcl(i32 %33, i8** %34, i32* %35, i32 %38, i32 %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %29
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %29
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %47, %27, %22, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @GetSecurityDescriptorDacl(i32, i32*, i32*, i32*) #1

declare dso_local i32 @GetSecurityDescriptorControl(i32, i32*, i32*) #1

declare dso_local i32 @DumpString(i8*, i32, i8**, i32*) #1

declare dso_local i32 @DumpAcl(i32, i8**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
