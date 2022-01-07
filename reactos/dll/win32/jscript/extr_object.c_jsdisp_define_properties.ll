; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_jsdisp_define_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_jsdisp_define_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@DISPID_STARTENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"non-JS list obj\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32)* @jsdisp_define_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsdisp_define_properties(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @DISPID_STARTENUM, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @to_object(i32* %17, i32 %18, i32** %10)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %4, align 4
  br label %109

25:                                               ; preds = %3
  %26 = load i32*, i32** %10, align 8
  %27 = call %struct.TYPE_9__* @to_jsdisp(i32* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %11, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @IDispatch_Release(i32* %31)
  %33 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %33, i32* %4, align 4
  br label %109

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %96
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @jsdisp_next_prop(%struct.TYPE_9__* %36, i32 %37, i32 %38, i32* %8)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @S_OK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %97

44:                                               ; preds = %35
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @jsdisp_propget(%struct.TYPE_9__* %45, i32 %46, i32* %13)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i64 @FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %97

52:                                               ; preds = %44
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @is_object_instance(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = call i32* @get_object(i32 %57)
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = call i32* @get_object(i32 %61)
  %63 = call %struct.TYPE_9__* @to_jsdisp(i32* %62)
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %12, align 8
  %64 = icmp ne %struct.TYPE_9__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60, %56, %52
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @jsval_release(i32 %66)
  br label %97

68:                                               ; preds = %60
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %71 = call i32 @to_property_descriptor(i32* %69, %struct.TYPE_9__* %70, i32* %9)
  store i32 %71, i32* %15, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %73 = call i32 @jsdisp_release(%struct.TYPE_9__* %72)
  %74 = load i32, i32* %15, align 4
  %75 = call i64 @FAILED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %97

78:                                               ; preds = %68
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @IDispatchEx_GetMemberName(i32* %80, i32 %81, i32* %14)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i64 @SUCCEEDED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @jsdisp_define_property(%struct.TYPE_9__* %87, i32 %88, i32* %9)
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %86, %78
  %91 = call i32 @release_property_descriptor(i32* %9)
  %92 = load i32, i32* %15, align 4
  %93 = call i64 @FAILED(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %97

96:                                               ; preds = %90
  br label %35

97:                                               ; preds = %95, %77, %65, %51, %43
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %99 = call i32 @jsdisp_release(%struct.TYPE_9__* %98)
  %100 = load i32, i32* %15, align 4
  %101 = call i64 @FAILED(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %15, align 4
  br label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @S_OK, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %29, %23
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @to_object(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_9__* @to_jsdisp(i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @jsdisp_next_prop(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @jsdisp_propget(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32* @get_object(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @to_property_descriptor(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @jsdisp_release(%struct.TYPE_9__*) #1

declare dso_local i32 @IDispatchEx_GetMemberName(i32*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsdisp_define_property(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @release_property_descriptor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
