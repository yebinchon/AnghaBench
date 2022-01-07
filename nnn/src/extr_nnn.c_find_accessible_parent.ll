; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_find_accessible_parent.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_find_accessible_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAME_MAX = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"cannot access dir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32*)* @find_accessible_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_accessible_parent(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @xbasename(i8* %11)
  %13 = load i64, i64* @NAME_MAX, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @xstrlcpy(i8* %10, i8* %12, i64 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* @PATH_MAX, align 8
  %19 = call i32 @xstrlcpy(i8* %16, i8* %17, i64 %18)
  br label %20

20:                                               ; preds = %4, %42
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i8* @visit_parent(i8* %21, i8* %22, i32* %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @istopdir(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @istopdir(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28, %20
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @dirname(i8* %36)
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %35, %32
  br label %48

39:                                               ; preds = %28
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* @PATH_MAX, align 8
  %46 = call i32 @xstrlcpy(i8* %43, i8* %44, i64 %45)
  br label %20

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* @PATH_MAX, align 8
  %52 = call i32 @xstrlcpy(i8* %49, i8* %50, i64 %51)
  %53 = call i32 @printmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %54 = call i32 (...) @xdelay()
  ret void
}

declare dso_local i32 @xstrlcpy(i8*, i8*, i64) #1

declare dso_local i8* @xbasename(i8*) #1

declare dso_local i8* @visit_parent(i8*, i8*, i32*) #1

declare dso_local i64 @istopdir(i8*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @printmsg(i8*) #1

declare dso_local i32 @xdelay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
