; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_CheckSetNamespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_CheckSetNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cannot move objects into or out of temporary schemas\00", align 1
@PG_TOAST_NAMESPACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot move objects into or out of TOAST schema\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckSetNamespace(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i64 @isAnyTempNamespace(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @isAnyTempNamespace(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @ereport(i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @PG_TOAST_NAMESPACE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @PG_TOAST_NAMESPACE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %22
  ret void
}

declare dso_local i64 @isAnyTempNamespace(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
