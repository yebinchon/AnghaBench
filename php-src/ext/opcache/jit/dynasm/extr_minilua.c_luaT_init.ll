; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaT_init.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_luaT_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@luaT_init.luaT_eventname = internal constant [17 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"__eq\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"__add\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"__sub\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"__mod\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"__pow\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"__unm\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"__lt\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"__le\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"__concat\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"__call\00", align 1
@TM_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @luaT_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaT_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %31, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @TM_N, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [17 x i8*], [17 x i8*]* @luaT_init.luaT_eventname, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @luaS_new(i32* %9, i8* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call %struct.TYPE_2__* @G(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %14, i32* %21, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call %struct.TYPE_2__* @G(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @luaS_fix(i32 %29)
  br label %31

31:                                               ; preds = %8
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %4

34:                                               ; preds = %4
  ret void
}

declare dso_local i32 @luaS_new(i32*, i8*) #1

declare dso_local %struct.TYPE_2__* @G(i32*) #1

declare dso_local i32 @luaS_fix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
