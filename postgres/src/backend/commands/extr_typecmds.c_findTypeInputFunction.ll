; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findTypeInputFunction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findTypeInputFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CSTRINGOID = common dso_local global i32 0, align 4
@OIDOID = common dso_local global i32 0, align 4
@INT4OID = common dso_local global i32 0, align 4
@OPAQUEOID = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"changing argument type of function %s from \22opaque\22 to \22cstring\22\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"function %s does not exist\00", align 1
@NIL = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @findTypeInputFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findTypeInputFunction(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @CSTRINGOID, align 4
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
  br label %76

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
  br label %76

31:                                               ; preds = %18
  %32 = load i32, i32* @OPAQUEOID, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %36 = call i32 @LookupFuncName(i32* %34, i32 1, i32* %35, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @OidIsValid(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @OIDOID, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @INT4OID, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %47 = call i32 @LookupFuncName(i32* %45, i32 3, i32* %46, i32 1)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %40, %31
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @OidIsValid(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i32, i32* @WARNING, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @NameListToString(i32* %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = call i32 @ereport(i32 %53, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @CSTRINGOID, align 4
  %60 = call i32 @SetFunctionArgType(i32 %58, i32 0, i32 %59)
  %61 = call i32 (...) @CommandCounterIncrement()
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %76

63:                                               ; preds = %48
  %64 = load i32, i32* @CSTRINGOID, align 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @NIL, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %72 = call i32 @func_signature_string(i32* %69, i32 1, i32 %70, i32* %71)
  %73 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = call i32 @ereport(i32 %66, i32 %73)
  %75 = load i32, i32* @InvalidOid, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %63, %52, %29, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @LookupFuncName(i32*, i32, i32*, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @NameListToString(i32*) #1

declare dso_local i32 @SetFunctionArgType(i32, i32, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @func_signature_string(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
