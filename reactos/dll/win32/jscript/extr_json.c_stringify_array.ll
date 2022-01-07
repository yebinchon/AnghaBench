; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_stringify_array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_stringify_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64* }

@.str = private unnamed_addr constant [15 x i8] c"Found a cycle\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@nullW = common dso_local global i64* null, align 8
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i32*)* @stringify_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stringify_array(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @is_on_stack(%struct.TYPE_9__* %11, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @FIXME(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @E_FAIL, align 8
  store i64 %17, i64* %3, align 8
  br label %150

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @stringify_push_obj(%struct.TYPE_9__* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %24, i64* %3, align 8
  br label %150

25:                                               ; preds = %18
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i32 @append_char(%struct.TYPE_9__* %26, i8 signext 91)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %30, i64* %3, align 8
  br label %150

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @array_get_length(i32* %32)
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %124, %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %127

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = call i32 @append_char(%struct.TYPE_9__* %42, i8 signext 44)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %46, i64* %3, align 8
  br label %150

47:                                               ; preds = %41, %38
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = call i32 @append_char(%struct.TYPE_9__* %54, i8 signext 10)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %58, i64* %3, align 8
  br label %150

59:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = call i32 @append_string(%struct.TYPE_9__* %67, i64* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %74, i64* %3, align 8
  br label %150

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %60

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79, %47
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @jsdisp_get_idx(i32* %81, i32 %82, i32* %9)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @SUCCEEDED(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %80
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @stringify(%struct.TYPE_9__* %88, i32 %89)
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @FAILED(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i64, i64* %10, align 8
  store i64 %95, i64* %3, align 8
  br label %150

96:                                               ; preds = %87
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @S_FALSE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = load i64*, i64** @nullW, align 8
  %103 = call i32 @append_string(%struct.TYPE_9__* %101, i64* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %106, i64* %3, align 8
  br label %150

107:                                              ; preds = %100, %96
  br label %123

108:                                              ; preds = %80
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = load i64*, i64** @nullW, align 8
  %115 = call i32 @append_string(%struct.TYPE_9__* %113, i64* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %118, i64* %3, align 8
  br label %150

119:                                              ; preds = %112
  br label %122

120:                                              ; preds = %108
  %121 = load i64, i64* %10, align 8
  store i64 %121, i64* %3, align 8
  br label %150

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122, %107
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %34

127:                                              ; preds = %34
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = call i32 @append_char(%struct.TYPE_9__* %137, i8 signext 10)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136, %130, %127
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = call i32 @append_char(%struct.TYPE_9__* %141, i8 signext 93)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140, %136
  %145 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %145, i64* %3, align 8
  br label %150

146:                                              ; preds = %140
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %148 = call i32 @stringify_pop_obj(%struct.TYPE_9__* %147)
  %149 = load i64, i64* @S_OK, align 8
  store i64 %149, i64* %3, align 8
  br label %150

150:                                              ; preds = %146, %144, %120, %117, %105, %94, %73, %57, %45, %29, %23, %15
  %151 = load i64, i64* %3, align 8
  ret i64 %151
}

declare dso_local i64 @is_on_stack(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @stringify_push_obj(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @append_char(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @array_get_length(i32*) #1

declare dso_local i32 @append_string(%struct.TYPE_9__*, i64*) #1

declare dso_local i64 @jsdisp_get_idx(i32*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @stringify(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @stringify_pop_obj(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
