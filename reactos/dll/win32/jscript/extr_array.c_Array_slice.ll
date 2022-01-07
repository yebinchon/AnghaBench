; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_slice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Array_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Array_slice(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @get_length(i32* %24, i32* %25, i32** %15, i32* %17)
  store i32 %26, i32* %21, align 4
  %27 = load i32, i32* %21, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* %21, align 4
  store i32 %31, i32* %7, align 4
  br label %188

32:                                               ; preds = %6
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @to_number(i32* %36, i32 %39, i32* %16)
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %21, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %21, align 4
  store i32 %45, i32* %7, align 4
  br label %188

46:                                               ; preds = %35
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @floor(i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = sub nsw i32 0, %49
  %51 = load i32, i32* %17, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %16, align 4
  %55 = call i64 @isnan(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %46
  store i32 0, i32* %18, align 4
  br label %75

58:                                               ; preds = %53
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %18, align 4
  br label %74

65:                                               ; preds = %58
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %18, align 4
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %18, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %74, %57
  br label %77

76:                                               ; preds = %32
  store i32 0, i32* %18, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load i32, i32* %11, align 4
  %79 = icmp ugt i32 %78, 1
  br i1 %79, label %80, label %117

80:                                               ; preds = %77
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @to_number(i32* %81, i32 %84, i32* %16)
  store i32 %85, i32* %21, align 4
  %86 = load i32, i32* %21, align 4
  %87 = call i64 @FAILED(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %21, align 4
  store i32 %90, i32* %7, align 4
  br label %188

91:                                               ; preds = %80
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @floor(i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = sub nsw i32 0, %94
  %96 = load i32, i32* %17, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 0, i32* %19, align 4
  br label %116

99:                                               ; preds = %91
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %19, align 4
  br label %115

106:                                              ; preds = %99
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %19, align 4
  br label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %17, align 4
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %112, %110
  br label %115

115:                                              ; preds = %114, %102
  br label %116

116:                                              ; preds = %115, %98
  br label %119

117:                                              ; preds = %77
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %19, align 4
  br label %119

119:                                              ; preds = %117, %116
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %18, align 4
  %127 = sub nsw i32 %125, %126
  br label %129

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %124
  %130 = phi i32 [ %127, %124 ], [ 0, %128 ]
  %131 = call i32 @create_array(i32* %120, i32 %130, i32** %14)
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = call i64 @FAILED(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %21, align 4
  store i32 %136, i32* %7, align 4
  br label %188

137:                                              ; preds = %129
  %138 = load i32, i32* %18, align 4
  store i32 %138, i32* %20, align 4
  br label %139

139:                                              ; preds = %173, %137
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %19, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %176

143:                                              ; preds = %139
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %20, align 4
  %146 = call i32 @jsdisp_get_idx(i32* %144, i32 %145, i32* %22)
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %21, align 4
  %148 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %173

151:                                              ; preds = %143
  %152 = load i32, i32* %21, align 4
  %153 = call i64 @SUCCEEDED(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load i32*, i32** %14, align 8
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %18, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load i32, i32* %22, align 4
  %161 = call i32 @jsdisp_propput_idx(i32* %156, i32 %159, i32 %160)
  store i32 %161, i32* %21, align 4
  %162 = load i32, i32* %22, align 4
  %163 = call i32 @jsval_release(i32 %162)
  br label %164

164:                                              ; preds = %155, %151
  %165 = load i32, i32* %21, align 4
  %166 = call i64 @FAILED(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32*, i32** %14, align 8
  %170 = call i32 @jsdisp_release(i32* %169)
  %171 = load i32, i32* %21, align 4
  store i32 %171, i32* %7, align 4
  br label %188

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %150
  %174 = load i32, i32* %20, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %20, align 4
  br label %139

176:                                              ; preds = %139
  %177 = load i32*, i32** %13, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32*, i32** %14, align 8
  %181 = call i32 @jsval_obj(i32* %180)
  %182 = load i32*, i32** %13, align 8
  store i32 %181, i32* %182, align 4
  br label %186

183:                                              ; preds = %176
  %184 = load i32*, i32** %14, align 8
  %185 = call i32 @jsdisp_release(i32* %184)
  br label %186

186:                                              ; preds = %183, %179
  %187 = load i32, i32* @S_OK, align 4
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %186, %168, %135, %89, %44, %30
  %189 = load i32, i32* %7, align 4
  ret i32 %189
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_length(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_number(i32*, i32, i32*) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i64 @isnan(i32) #1

declare dso_local i32 @create_array(i32*, i32, i32**) #1

declare dso_local i32 @jsdisp_get_idx(i32*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsdisp_propput_idx(i32*, i32, i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @jsval_obj(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
