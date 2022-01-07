; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_assoc.c_RemoveAssociation.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_assoc.c_RemoveAssociation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SOFTWARE\\Classes\00", align 1
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @RemoveAssociation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RemoveAssociation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %7 = call i32 @_T(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %9 = call i64 @RegOpenKeyEx(i32 %6, i32 %7, i32 0, i32 %8, i32* %5)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @RegDeleteKey(i32 %15, i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @RegCloseKey(i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 -2, i32* %2, align 4
  br label %25

24:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @RegDeleteKey(i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
