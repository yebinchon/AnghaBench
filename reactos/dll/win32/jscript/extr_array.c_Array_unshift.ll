; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_unshift.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_unshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, i32*, i32*)* @Array_unshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Array_unshift(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [14 x i32], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = call i64 @get_length(%struct.TYPE_10__* %24, %struct.TYPE_9__* %25, i32** %14, i32* %19)
  store i64 %26, i64* %22, align 8
  %27 = load i64, i64* %22, align 8
  %28 = call i64 @FAILED(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i64, i64* %22, align 8
  store i64 %31, i64* %7, align 8
  br label %154

32:                                               ; preds = %6
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %97

35:                                               ; preds = %32
  %36 = getelementptr inbounds [14 x i32], [14 x i32]* %15, i64 0, i64 0
  %37 = getelementptr inbounds [14 x i32], [14 x i32]* %15, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = getelementptr inbounds i32, i32* %40, i64 -1
  store i32* %41, i32** %16, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 -1
  store i32* %43, i32** %16, align 8
  store i32 0, i32* %42, align 4
  %44 = load i32, i32* %19, align 4
  store i32 %44, i32* %18, align 4
  br label %45

45:                                               ; preds = %89, %35
  %46 = load i32, i32* %18, align 4
  %47 = add i32 %46, -1
  store i32 %47, i32* %18, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %45
  %50 = load i32, i32* %18, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = call i32* @idx_to_str(i32 %50, i32* %51)
  store i32* %52, i32** %17, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = call i64 @jsdisp_get_id(i32* %53, i32* %54, i32 0, i32* %21)
  store i64 %55, i64* %22, align 8
  %56 = load i64, i64* %22, align 8
  %57 = call i64 @SUCCEEDED(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %49
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* %21, align 4
  %62 = call i64 @jsdisp_propget(i32* %60, i32 %61, i32* %20)
  store i64 %62, i64* %22, align 8
  %63 = load i64, i64* %22, align 8
  %64 = call i64 @FAILED(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i64, i64* %22, align 8
  store i64 %67, i64* %7, align 8
  br label %154

68:                                               ; preds = %59
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %70, %71
  %73 = load i32, i32* %20, align 4
  %74 = call i64 @jsdisp_propput_idx(i32* %69, i32 %72, i32 %73)
  store i64 %74, i64* %22, align 8
  %75 = load i32, i32* %20, align 4
  %76 = call i32 @jsval_release(i32 %75)
  br label %89

77:                                               ; preds = %49
  %78 = load i64, i64* %22, align 8
  %79 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %21, align 4
  %87 = call i64 @IDispatchEx_DeleteMemberByDispID(i32 %85, i32 %86)
  store i64 %87, i64* %22, align 8
  br label %88

88:                                               ; preds = %81, %77
  br label %89

89:                                               ; preds = %88, %68
  br label %45

90:                                               ; preds = %45
  %91 = load i64, i64* %22, align 8
  %92 = call i64 @FAILED(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* %22, align 8
  store i64 %95, i64* %7, align 8
  br label %154

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %32
  store i32 0, i32* %18, align 4
  br label %98

98:                                               ; preds = %117, %97
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %18, align 4
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %18, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @jsdisp_propput_idx(i32* %103, i32 %104, i32 %109)
  store i64 %110, i64* %22, align 8
  %111 = load i64, i64* %22, align 8
  %112 = call i64 @FAILED(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load i64, i64* %22, align 8
  store i64 %115, i64* %7, align 8
  br label %154

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %18, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %18, align 4
  br label %98

120:                                              ; preds = %98
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %19, align 4
  %126 = add i32 %125, %124
  store i32 %126, i32* %19, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* %19, align 4
  %129 = call i64 @set_length(i32* %127, i32 %128)
  store i64 %129, i64* %22, align 8
  %130 = load i64, i64* %22, align 8
  %131 = call i64 @FAILED(i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i64, i64* %22, align 8
  store i64 %134, i64* %7, align 8
  br label %154

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %120
  %137 = load i32*, i32** %13, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = call i32 (...) @jsval_undefined()
  br label %149

146:                                              ; preds = %139
  %147 = load i32, i32* %19, align 4
  %148 = call i32 @jsval_number(i32 %147)
  br label %149

149:                                              ; preds = %146, %144
  %150 = phi i32 [ %145, %144 ], [ %148, %146 ]
  %151 = load i32*, i32** %13, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %136
  %153 = load i64, i64* @S_OK, align 8
  store i64 %153, i64* %7, align 8
  br label %154

154:                                              ; preds = %152, %133, %114, %94, %66, %30
  %155 = load i64, i64* %7, align 8
  ret i64 %155
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @get_length(%struct.TYPE_10__*, %struct.TYPE_9__*, i32**, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32* @idx_to_str(i32, i32*) #1

declare dso_local i64 @jsdisp_get_id(i32*, i32*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @jsdisp_propget(i32*, i32, i32*) #1

declare dso_local i64 @jsdisp_propput_idx(i32*, i32, i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @IDispatchEx_DeleteMemberByDispID(i32, i32) #1

declare dso_local i64 @set_length(i32*, i32) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @jsval_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
