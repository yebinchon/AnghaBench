; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_check_search_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_check_search_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"List syntax is invalid.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_search_path(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @pstrdup(i8* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @SplitIdentifierString(i8* %13, i8 signext 44, i32** %9)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = call i32 @GUC_check_errdetail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @pfree(i8* %18)
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @list_free(i32* %20)
  store i32 0, i32* %4, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @pfree(i8* %23)
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @list_free(i32* %25)
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @SplitIdentifierString(i8*, i8 signext, i32**) #1

declare dso_local i32 @GUC_check_errdetail(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
