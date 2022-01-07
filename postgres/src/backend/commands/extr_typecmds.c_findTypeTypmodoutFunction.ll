; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findTypeTypmodoutFunction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findTypeTypmodoutFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT4OID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"function %s does not exist\00", align 1
@NIL = common dso_local global i32 0, align 4
@CSTRINGOID = common dso_local global i64 0, align 8
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"typmod_out function %s must return type %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cstring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @findTypeTypmodoutFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findTypeTypmodoutFunction(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [1 x i32], align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @INT4OID, align 4
  %6 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %9 = call i32 @LookupFuncName(i32* %7, i32 1, i32* %8, i32 1)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @OidIsValid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ERROR, align 4
  %15 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %16 = call i32 @errcode(i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @NIL, align 4
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %20 = call i32 @func_signature_string(i32* %17, i32 1, i32 %18, i32* %19)
  %21 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @ereport(i32 %14, i32 %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @get_func_rettype(i32 %24)
  %26 = load i64, i64* @CSTRINGOID, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @NameListToString(i32* %32)
  %34 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @ereport(i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %28, %23
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @LookupFuncName(i32*, i32, i32*, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @func_signature_string(i32*, i32, i32, i32*) #1

declare dso_local i64 @get_func_rettype(i32) #1

declare dso_local i32 @NameListToString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
