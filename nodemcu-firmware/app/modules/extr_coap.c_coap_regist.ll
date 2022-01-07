; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_coap.c_coap_regist.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_coap.c_coap_regist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, %struct.TYPE_4__* }

@COAP_CONTENTTYPE_TEXT_PLAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"name must be set.\00", align 1
@variable_entry = common dso_local global %struct.TYPE_4__* null, align 8
@function_entry = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"coap_regist is called.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @coap_regist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coap_regist(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i8* @luaL_checklstring(i32* %12, i32 2, i64* %8)
  store i8* %13, i8** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @COAP_CONTENTTYPE_TEXT_PLAIN, align 4
  %16 = call i32 @luaL_optint(i32* %14, i32 3, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @luaL_error(i32* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  br label %90

22:                                               ; preds = %3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @variable_entry, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %11, align 8
  br label %29

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @function_entry, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %11, align 8
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %48, %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* null, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %52

48:                                               ; preds = %40, %35
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %11, align 8
  br label %30

52:                                               ; preds = %47, %30
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @strcmp(i8* %60, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %57, %52
  %65 = call i64 @calloc(i32 1, i32 24)
  %66 = inttoptr i64 %65 to %struct.TYPE_4__*
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %11, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %73 = icmp eq %struct.TYPE_4__* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @luaL_error(i32* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %76, i32* %4, align 4
  br label %90

77:                                               ; preds = %64
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %79, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i8* null, i8** %81, align 8
  br label %82

82:                                               ; preds = %77, %57
  %83 = load i8*, i8** %9, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = call i32 @NODE_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %82, %74, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_optint(i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @NODE_DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
