; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_SetUserIdAndContext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_SetUserIdAndContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"cannot set parameter \22%s\22 within security-restricted operation\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@CurrentUserId = common dso_local global i32 0, align 4
@SECURITY_LOCAL_USERID_CHANGE = common dso_local global i32 0, align 4
@SecurityRestrictionContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetUserIdAndContext(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i64 (...) @InSecurityRestrictedOperation()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @ERROR, align 4
  %9 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %10 = call i32 @errcode(i32 %9)
  %11 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @ereport(i32 %8, i32 %11)
  br label %13

13:                                               ; preds = %7, %2
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* @CurrentUserId, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @SECURITY_LOCAL_USERID_CHANGE, align 4
  %19 = load i32, i32* @SecurityRestrictionContext, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @SecurityRestrictionContext, align 4
  br label %26

21:                                               ; preds = %13
  %22 = load i32, i32* @SECURITY_LOCAL_USERID_CHANGE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @SecurityRestrictionContext, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* @SecurityRestrictionContext, align 4
  br label %26

26:                                               ; preds = %21, %17
  ret void
}

declare dso_local i64 @InSecurityRestrictedOperation(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
