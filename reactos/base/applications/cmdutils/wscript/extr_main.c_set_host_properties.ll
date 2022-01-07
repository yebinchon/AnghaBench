; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_set_host_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_set_host_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_host_properties.nologoW = internal constant [7 x i8] c"nologo\00", align 1
@set_host_properties.iactive = internal constant [2 x i8] c"i\00", align 1
@set_host_properties.batch = internal constant [2 x i8] c"b\00", align 1
@VARIANT_TRUE = common dso_local global i32 0, align 4
@wshInteractive = common dso_local global i32 0, align 4
@VARIANT_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ignored %s switch\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unsupported switch %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @set_host_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_host_properties(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 47
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 47
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %15, %8
  br label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %19, %18
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @strcmpiW(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @set_host_properties.iactive, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @VARIANT_TRUE, align 4
  store i32 %27, i32* @wshInteractive, align 4
  br label %48

28:                                               ; preds = %22
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strcmpiW(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @set_host_properties.batch, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @VARIANT_FALSE, align 4
  store i32 %33, i32* @wshInteractive, align 4
  br label %47

34:                                               ; preds = %28
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @strcmpiW(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @set_host_properties.nologoW, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 @debugstr_w(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @set_host_properties.nologoW, i64 0, i64 0))
  %40 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %46

41:                                               ; preds = %34
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @debugstr_w(i8* %42)
  %44 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %26
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %41
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @strcmpiW(i8*, i8*) #1

declare dso_local i32 @WINE_FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
