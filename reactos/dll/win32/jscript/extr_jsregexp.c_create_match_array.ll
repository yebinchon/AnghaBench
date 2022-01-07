; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_create_match_array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_create_match_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@create_match_array.indexW = internal constant [6 x i8] c"index\00", align 1
@create_match_array.inputW = internal constant [6 x i8] c"input\00", align 1
@create_match_array.lastIndexW = internal constant [10 x i8] c"lastIndex\00", align 1
@create_match_array.zeroW = internal constant [2 x i8] c"0\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*, i32**)* @create_match_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_match_array(i32* %0, i32* %1, %struct.TYPE_5__* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32** %3, i32*** %9, align 8
  %15 = load i32, i32* @S_OK, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i8* @jsstr_flatten(i32* %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %21, i32* %5, align 4
  br label %181

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 1
  %28 = call i32 @create_array(i32* %23, i64 %27, i32** %11)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %181

34:                                               ; preds = %22
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %88, %34
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %91

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %67

50:                                               ; preds = %41
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @jsstr_substr(i32* %51, i32 %58, i32 %65)
  store i32* %66, i32** %12, align 8
  br label %69

67:                                               ; preds = %41
  %68 = call i32* (...) @jsstr_empty()
  store i32* %68, i32** %12, align 8
  br label %69

69:                                               ; preds = %67, %50
  %70 = load i32*, i32** %12, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %73, i32* %14, align 4
  br label %91

74:                                               ; preds = %69
  %75 = load i32*, i32** %11, align 8
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @jsval_string(i32* %78)
  %80 = call i32 @jsdisp_propput_idx(i32* %75, i64 %77, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @jsstr_release(i32* %81)
  %83 = load i32, i32* %14, align 4
  %84 = call i64 @FAILED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %91

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %13, align 8
  br label %35

91:                                               ; preds = %86, %72, %35
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %14, align 4
  %94 = call i64 @SUCCEEDED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %168

96:                                               ; preds = %92
  %97 = load i32*, i32** %11, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %104, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @jsval_number(i32 %110)
  %112 = call i32 @jsdisp_propput_name(i32* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @create_match_array.indexW, i64 0, i64 0), i32 %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i64 @FAILED(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %96
  br label %168

117:                                              ; preds = %96
  %118 = load i32*, i32** %11, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = call i32 @jsval_number(i32 %126)
  %128 = call i32 @jsdisp_propput_name(i32* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @create_match_array.lastIndexW, i64 0, i64 0), i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i64 @FAILED(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %117
  br label %168

133:                                              ; preds = %117
  %134 = load i32*, i32** %11, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = call i32* @jsstr_addref(i32* %135)
  %137 = call i32 @jsval_string(i32* %136)
  %138 = call i32 @jsdisp_propput_name(i32* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @create_match_array.inputW, i64 0, i64 0), i32 %137)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = call i64 @FAILED(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %168

143:                                              ; preds = %133
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = sub i64 0, %150
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32* @jsstr_alloc_len(i8* %152, i32 %155)
  store i32* %156, i32** %12, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %143
  %160 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %160, i32* %14, align 4
  br label %168

161:                                              ; preds = %143
  %162 = load i32*, i32** %11, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = call i32 @jsval_string(i32* %163)
  %165 = call i32 @jsdisp_propput_name(i32* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @create_match_array.zeroW, i64 0, i64 0), i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = call i32 @jsstr_release(i32* %166)
  br label %168

168:                                              ; preds = %161, %159, %142, %132, %116, %92
  %169 = load i32, i32* %14, align 4
  %170 = call i64 @FAILED(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i32*, i32** %11, align 8
  %174 = call i32 @jsdisp_release(i32* %173)
  %175 = load i32, i32* %14, align 4
  store i32 %175, i32* %5, align 4
  br label %181

176:                                              ; preds = %168
  %177 = load i32*, i32** %11, align 8
  %178 = call i32* @to_disp(i32* %177)
  %179 = load i32**, i32*** %9, align 8
  store i32* %178, i32** %179, align 8
  %180 = load i32, i32* @S_OK, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %176, %172, %32, %20
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i8* @jsstr_flatten(i32*) #1

declare dso_local i32 @create_array(i32*, i64, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32* @jsstr_substr(i32*, i32, i32) #1

declare dso_local i32* @jsstr_empty(...) #1

declare dso_local i32 @jsdisp_propput_idx(i32*, i64, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsdisp_propput_name(i32*, i8*, i32) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32* @jsstr_addref(i32*) #1

declare dso_local i32* @jsstr_alloc_len(i8*, i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32* @to_disp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
