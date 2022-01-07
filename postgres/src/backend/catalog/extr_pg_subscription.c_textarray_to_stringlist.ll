; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_textarray_to_stringlist.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_textarray_to_stringlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@TEXTOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @textarray_to_stringlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @textarray_to_stringlist(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** @NIL, align 8
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @TEXTOID, align 4
  %11 = call i32 @deconstruct_array(i32* %9, i32 %10, i32 -1, i32 0, i8 signext 105, i32** %4, i32* null, i32* %5)
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32*, i32** @NIL, align 8
  store i32* %15, i32** %2, align 8
  br label %36

16:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @TextDatumGetCString(i32 %27)
  %29 = call i32 @makeString(i32 %28)
  %30 = call i32* @lappend(i32* %22, i32 %29)
  store i32* %30, i32** %7, align 8
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load i32*, i32** %7, align 8
  store i32* %35, i32** %2, align 8
  br label %36

36:                                               ; preds = %34, %14
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32**, i32*, i32*) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @makeString(i32) #1

declare dso_local i32 @TextDatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
