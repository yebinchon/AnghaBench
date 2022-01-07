; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_convert_function_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_convert_function_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regprocedurein = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"function \22%s\22 does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @convert_function_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_function_name(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i8* @text_to_cstring(i32* %5)
  store i8* %6, i8** %3, align 8
  %7 = load i32, i32* @regprocedurein, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @CStringGetDatum(i8* %8)
  %10 = call i32 @DirectFunctionCall1(i32 %7, i32 %9)
  %11 = call i32 @DatumGetObjectId(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @OidIsValid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @ereport(i32 %16, i32 %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i8* @text_to_cstring(i32*) #1

declare dso_local i32 @DatumGetObjectId(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
