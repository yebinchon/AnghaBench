; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_DateConstr_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_DateConstr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NO_HINT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@TIME_EPOCH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unimplemented flags %x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @DateConstr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DateConstr_value(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.TYPE_8__, align 4
  %21 = alloca %struct.TYPE_8__, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %130 [
    i32 129, label %25
    i32 128, label %114
  ]

25:                                               ; preds = %6
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %80 [
    i32 0, label %27
    i32 1, label %37
  ]

27:                                               ; preds = %25
  %28 = load i32*, i32** %8, align 8
  %29 = call double (...) @date_now()
  %30 = call i32 @create_date(i32* %28, i32* null, double %29, i32** %14)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @FAILED(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %7, align 4
  br label %134

36:                                               ; preds = %27
  br label %109

37:                                               ; preds = %25
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NO_HINT, align 4
  %43 = call i32 @to_primitive(i32* %38, i32 %41, i32* %16, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @FAILED(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %7, align 4
  br label %134

49:                                               ; preds = %37
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @is_string(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @get_string(i32 %54)
  %56 = call i32 @date_parse(i32 %55, double* %17)
  store i32 %56, i32* %15, align 4
  br label %61

57:                                               ; preds = %49
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @to_number(i32* %58, i32 %59, double* %17)
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @jsval_release(i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @FAILED(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %7, align 4
  br label %134

69:                                               ; preds = %61
  %70 = load i32*, i32** %8, align 8
  %71 = load double, double* %17, align 8
  %72 = call double @time_clip(double %71)
  %73 = call i32 @create_date(i32* %70, i32* null, double %72, i32** %14)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @FAILED(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %7, align 4
  br label %134

79:                                               ; preds = %69
  br label %109

80:                                               ; preds = %25
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @date_utc(i32* %81, i32 %82, i32* %83, double* %18)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @FAILED(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %7, align 4
  br label %134

90:                                               ; preds = %80
  %91 = load i32*, i32** %8, align 8
  %92 = load double, double* %18, align 8
  %93 = call i32 @create_date(i32* %91, i32* null, double %92, i32** %14)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @FAILED(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %7, align 4
  br label %134

99:                                               ; preds = %90
  %100 = load i32*, i32** %14, align 8
  %101 = call %struct.TYPE_9__* @date_from_jsdisp(i32* %100)
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %19, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %106 = call i32 @utc(i32 %104, %struct.TYPE_9__* %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %99, %79, %36
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @jsval_obj(i32* %110)
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @S_OK, align 4
  store i32 %113, i32* %7, align 4
  br label %134

114:                                              ; preds = %6
  %115 = call i32 @GetSystemTimeAsFileTime(%struct.TYPE_8__* %20)
  %116 = call i32 @FileTimeToLocalFileTime(%struct.TYPE_8__* %20, %struct.TYPE_8__* %21)
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 32
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %119, %121
  store i32 %122, i32* %22, align 4
  %123 = load i32, i32* %22, align 4
  %124 = sdiv i32 %123, 10000
  %125 = load i32, i32* @TIME_EPOCH, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i32, i32* @FALSE, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = call i32 @date_to_string(i32 %126, i32 %127, i32 0, i32* %128)
  store i32 %129, i32* %7, align 4
  br label %134

130:                                              ; preds = %6
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %130, %114, %109, %97, %88, %77, %67, %47, %34
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @create_date(i32*, i32*, double, i32**) #1

declare dso_local double @date_now(...) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @to_primitive(i32*, i32, i32*, i32) #1

declare dso_local i32 @is_string(i32) #1

declare dso_local i32 @date_parse(i32, double*) #1

declare dso_local i32 @get_string(i32) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local double @time_clip(double) #1

declare dso_local i32 @date_utc(i32*, i32, i32*, double*) #1

declare dso_local %struct.TYPE_9__* @date_from_jsdisp(i32*) #1

declare dso_local i32 @utc(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @GetSystemTimeAsFileTime(%struct.TYPE_8__*) #1

declare dso_local i32 @FileTimeToLocalFileTime(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @date_to_string(i32, i32, i32, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
