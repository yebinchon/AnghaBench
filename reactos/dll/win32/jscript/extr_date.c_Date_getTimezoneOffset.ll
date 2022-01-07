; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_getTimezoneOffset.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_getTimezoneOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_DATE_EXPECTED = common dso_local global i32 0, align 4
@MS_PER_MINUTE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Date_getTimezoneOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Date_getTimezoneOffset(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %9, align 8
  %17 = call %struct.TYPE_4__* @date_this(i32* %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %14, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* @JS_E_DATE_EXPECTED, align 4
  %22 = call i32 @throw_type_error(i32* %20, i32 %21, i32* null)
  store i32 %22, i32* %7, align 4
  br label %43

23:                                               ; preds = %6
  %24 = load i32*, i32** %13, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %34 = call i32 @local_time(i32 %32, %struct.TYPE_4__* %33)
  %35 = sub nsw i32 %29, %34
  %36 = load i32, i32* @MS_PER_MINUTE, align 4
  %37 = sdiv i32 %35, %36
  %38 = call i32 @floor(i32 %37)
  %39 = call i32 @jsval_number(i32 %38)
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %26, %23
  %42 = load i32, i32* @S_OK, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %19
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_4__* @date_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @local_time(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
