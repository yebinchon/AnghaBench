; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_rep_call.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_rep_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, %struct.TYPE_5__*, i32**)* @rep_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rep_call(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_5__* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i32** %5, i32*** %13, align 8
  %20 = load i32, i32* @S_OK, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 3
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32* @heap_alloc_zero(i32 %28)
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %33, i32* %7, align 4
  br label %192

34:                                               ; preds = %6
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @jsstr_alloc_len(i32* %43, i32 %46)
  store i32* %47, i32** %17, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %34
  %51 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %51, i32* %19, align 4
  br label %52

52:                                               ; preds = %50, %34
  %53 = load i32*, i32** %17, align 8
  %54 = call i32 @jsval_string(i32* %53)
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %19, align 4
  %58 = call i64 @SUCCEEDED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %112

60:                                               ; preds = %52
  store i64 0, i64* %18, align 8
  br label %61

61:                                               ; preds = %108, %60
  %62 = load i64, i64* %18, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %62, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %61
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %94

77:                                               ; preds = %68
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i64, i64* %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32* @jsstr_substr(i32* %78, i32 %85, i32 %92)
  store i32* %93, i32** %17, align 8
  br label %96

94:                                               ; preds = %68
  %95 = call i32* (...) @jsstr_empty()
  store i32* %95, i32** %17, align 8
  br label %96

96:                                               ; preds = %94, %77
  %97 = load i32*, i32** %17, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %100, i32* %19, align 4
  br label %111

101:                                              ; preds = %96
  %102 = load i32*, i32** %17, align 8
  %103 = call i32 @jsval_string(i32* %102)
  %104 = load i32*, i32** %14, align 8
  %105 = load i64, i64* %18, align 8
  %106 = add i64 %105, 1
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %101
  %109 = load i64, i64* %18, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %18, align 8
  br label %61

111:                                              ; preds = %99, %61
  br label %112

112:                                              ; preds = %111, %52
  %113 = load i32, i32* %19, align 4
  %114 = call i64 @SUCCEEDED(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %112
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = ptrtoint i32* %119 to i64
  %122 = ptrtoint i32* %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = sub nsw i64 %124, %128
  %130 = trunc i64 %129 to i32
  %131 = call i32 @jsval_number(i32 %130)
  %132 = load i32*, i32** %14, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %132, i64 %137
  store i32 %131, i32* %138, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @jsval_string(i32* %139)
  %141 = load i32*, i32** %14, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %141, i64 %146
  store i32 %140, i32* %147, align 4
  br label %148

148:                                              ; preds = %116, %112
  %149 = load i32, i32* %19, align 4
  %150 = call i64 @SUCCEEDED(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* @DISPATCH_METHOD, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @jsdisp_call_value(i32* %153, i32* null, i32 %154, i32 %155, i32* %156, i32* %16)
  store i32 %157, i32* %19, align 4
  br label %158

158:                                              ; preds = %152, %148
  store i64 0, i64* %18, align 8
  br label %159

159:                                              ; preds = %173, %158
  %160 = load i64, i64* %18, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = icmp ule i64 %160, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %159
  %167 = load i32*, i32** %14, align 8
  %168 = load i64, i64* %18, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @get_string(i32 %170)
  %172 = call i32 @jsstr_release(i32 %171)
  br label %173

173:                                              ; preds = %166
  %174 = load i64, i64* %18, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %18, align 8
  br label %159

176:                                              ; preds = %159
  %177 = load i32*, i32** %14, align 8
  %178 = call i32 @heap_free(i32* %177)
  %179 = load i32, i32* %19, align 4
  %180 = call i64 @FAILED(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i32, i32* %19, align 4
  store i32 %183, i32* %7, align 4
  br label %192

184:                                              ; preds = %176
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %16, align 4
  %187 = load i32**, i32*** %13, align 8
  %188 = call i32 @to_string(i32* %185, i32 %186, i32** %187)
  store i32 %188, i32* %19, align 4
  %189 = load i32, i32* %16, align 4
  %190 = call i32 @jsval_release(i32 %189)
  %191 = load i32, i32* %19, align 4
  store i32 %191, i32* %7, align 4
  br label %192

192:                                              ; preds = %184, %182, %32
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local i32* @heap_alloc_zero(i32) #1

declare dso_local i32* @jsstr_alloc_len(i32*, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32* @jsstr_substr(i32*, i32, i32) #1

declare dso_local i32* @jsstr_empty(...) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @jsdisp_call_value(i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @jsstr_release(i32) #1

declare dso_local i32 @get_string(i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i32 @jsval_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
