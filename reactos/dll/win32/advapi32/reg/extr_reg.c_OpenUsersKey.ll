; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/reg/extr_reg.c_OpenUsersKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/reg/extr_reg.c_OpenUsersKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 85, i32 115, i32 101, i32 114, i32 0], align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"OpenUsersKey()\0A\00", align 1
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @OpenUsersKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenUsersKey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @RTL_CONSTANT_STRING(i8* bitcast ([15 x i32]* @.str to i8*))
  store i32 %5, i32* %4, align 4
  %6 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %8 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %7, i32* null, i32* null)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %11 = call i32 @NtOpenKey(i32 %9, i32 %10, i32* %3)
  ret i32 %11
}

declare dso_local i32 @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenKey(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
