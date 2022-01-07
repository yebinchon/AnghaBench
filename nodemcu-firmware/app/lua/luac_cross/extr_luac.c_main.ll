; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_luac.c_main.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_luac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32, i32, i32, i32, i64 }
%struct.Smain = type { i32, i8** }

@target = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@execute = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"no input files given\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"not enough memory for state\00", align 1
@pmain = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.Smain, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %8, align 4
  %10 = bitcast i32* %8 to i8*
  %11 = load i8, i8* %10, align 4
  store i8 %11, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @target, i32 0, i32 0), align 8
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @target, i32 0, i32 1), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @target, i32 0, i32 2), align 8
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @target, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @target, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @target, i32 0, i32 5), align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @doargs(i32 %12, i8** %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  store i8** %21, i8*** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i64, i64* @execute, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @usage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24, %2
  %30 = call i32* (...) @lua_open()
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 1
  store i8** %38, i8*** %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @pmain, align 4
  %42 = call i64 @lua_cpcall(i32* %40, i32 %41, %struct.Smain* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32*, i32** %6, align 8
  %46 = call i8* @lua_tostring(i32* %45, i32 -1)
  %47 = call i32 @fatal(i8* %46)
  br label %48

48:                                               ; preds = %44, %35
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @lua_close(i32* %49)
  %51 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %51
}

declare dso_local i32 @doargs(i32, i8**) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32* @lua_open(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @lua_cpcall(i32*, i32, %struct.Smain*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
