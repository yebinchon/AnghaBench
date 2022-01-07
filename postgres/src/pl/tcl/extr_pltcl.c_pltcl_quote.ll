; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_quote.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_quote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@TCL_ERROR = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32**)* @pltcl_quote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pltcl_quote(i32 %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32**, i32*** %9, align 8
  %19 = call i32 @Tcl_WrongNumArgs(i32* %17, i32 1, i32** %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @TCL_ERROR, align 4
  store i32 %20, i32* %5, align 4
  br label %67

21:                                               ; preds = %4
  %22 = load i32**, i32*** %9, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i8* @Tcl_GetStringFromObj(i32* %24, i32* %13)
  store i8* %25, i8** %11, align 8
  %26 = load i32, i32* %13, align 4
  %27 = mul nsw i32 %26, 2
  %28 = add nsw i32 %27, 1
  %29 = call i8* @palloc(i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  store i8* %30, i8** %12, align 8
  br label %31

31:                                               ; preds = %52, %21
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 39
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %12, align 8
  store i8 39, i8* %41, align 1
  br label %52

43:                                               ; preds = %35
  %44 = load i8*, i8** %11, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 92
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %12, align 8
  store i8 92, i8* %49, align 1
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %11, align 8
  %55 = load i8, i8* %53, align 1
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %12, align 8
  store i8 %55, i8* %56, align 1
  br label %31

58:                                               ; preds = %31
  %59 = load i8*, i8** %12, align 8
  store i8 0, i8* %59, align 1
  %60 = load i32*, i32** %7, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @Tcl_NewStringObj(i8* %61, i32 -1)
  %63 = call i32 @Tcl_SetObjResult(i32* %60, i32 %62)
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @pfree(i8* %64)
  %66 = load i32, i32* @TCL_OK, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %58, %16
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @Tcl_WrongNumArgs(i32*, i32, i32**, i8*) #1

declare dso_local i8* @Tcl_GetStringFromObj(i32*, i32*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @Tcl_SetObjResult(i32*, i32) #1

declare dso_local i32 @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
