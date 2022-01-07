; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findTypeReceiveFunction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findTypeReceiveFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNALOID = common dso_local global i32 0, align 4
@OIDOID = common dso_local global i32 0, align 4
@INT4OID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"function %s does not exist\00", align 1
@NIL = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @findTypeReceiveFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findTypeReceiveFunction(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @INTERNALOID, align 4
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %8, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %12 = call i32 @LookupFuncName(i32* %10, i32 1, i32* %11, i32 1)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @OidIsValid(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* @OIDOID, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @INT4OID, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %25 = call i32 @LookupFuncName(i32* %23, i32 3, i32* %24, i32 1)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @OidIsValid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %18
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @NIL, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %38 = call i32 @func_signature_string(i32* %35, i32 1, i32 %36, i32* %37)
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = call i32 @ereport(i32 %32, i32 %39)
  %41 = load i32, i32* @InvalidOid, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %29, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @LookupFuncName(i32*, i32, i32*, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @func_signature_string(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
