; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_JSON_stringify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_JSON_stringify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32*, i32, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Replacer %s not yet supported\0A\00", align 1
@E_NOTIMPL = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32*, i32*)* @JSON_stringify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @JSON_stringify(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %24 = load i32*, i32** %8, align 8
  %25 = bitcast i32* %24 to i8*
  store i8* %25, i8** %23, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 6
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 7
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 8
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 9
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 10
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 11
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 12
  store i32* null, i32** %38, align 8
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %6
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call i32 (...) @jsval_undefined()
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i64, i64* @S_OK, align 8
  store i64 %49, i64* %7, align 8
  br label %186

50:                                               ; preds = %6
  %51 = load i32, i32* %11, align 4
  %52 = icmp uge i32 %51, 2
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @is_object_instance(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @debugstr_jsval(i32 %62)
  %64 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i64, i64* @E_NOTIMPL, align 8
  store i64 %65, i64* %7, align 8
  br label %186

66:                                               ; preds = %53, %50
  %67 = load i32, i32* %11, align 4
  %68 = icmp uge i32 %67, 3
  br i1 %68, label %69, label %138

69:                                               ; preds = %66
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @maybe_to_primitive(i32* %70, i32 %73, i32* %16)
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %15, align 8
  %76 = call i64 @FAILED(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i64, i64* %15, align 8
  store i64 %79, i64* %7, align 8
  br label %186

80:                                               ; preds = %69
  %81 = load i32, i32* %16, align 4
  %82 = call i64 @is_number(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %116

84:                                               ; preds = %80
  %85 = load i32, i32* %16, align 4
  %86 = call double @get_number(i32 %85)
  store double %86, double* %17, align 8
  %87 = load double, double* %17, align 8
  %88 = fcmp oge double %87, 1.000000e+00
  br i1 %88, label %89, label %115

89:                                               ; preds = %84
  %90 = load double, double* %17, align 8
  %91 = fcmp ogt double %90, 1.000000e+01
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store double 1.000000e+01, double* %17, align 8
  br label %93

93:                                               ; preds = %92, %89
  %94 = load double, double* %17, align 8
  %95 = call i32 @floor(double %94)
  store i32 %95, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %96

96:                                               ; preds = %106, %93
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %19, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 32, i8* %105, align 1
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  br label %96

109:                                              ; preds = %96
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8 0, i8* %114, align 1
  br label %115

115:                                              ; preds = %109, %84
  br label %135

116:                                              ; preds = %80
  %117 = load i32, i32* %16, align 4
  %118 = call i64 @is_string(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load i32, i32* %16, align 4
  %122 = call i32* @get_string(i32 %121)
  store i32* %122, i32** %20, align 8
  %123 = load i32*, i32** %20, align 8
  %124 = call i64 @jsstr_length(i32* %123)
  store i64 %124, i64* %21, align 8
  %125 = load i64, i64* %21, align 8
  %126 = icmp ugt i64 %125, 10
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i64 10, i64* %21, align 8
  br label %128

128:                                              ; preds = %127, %120
  %129 = load i32*, i32** %20, align 8
  %130 = load i64, i64* %21, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @jsstr_extract(i32* %129, i32 0, i64 %130, i8* %132)
  br label %134

134:                                              ; preds = %128, %116
  br label %135

135:                                              ; preds = %134, %115
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @jsval_release(i32 %136)
  br label %138

138:                                              ; preds = %135, %66
  %139 = load i32*, i32** %12, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @stringify(%struct.TYPE_5__* %14, i32 %141)
  store i64 %142, i64* %15, align 8
  %143 = load i64, i64* %15, align 8
  %144 = call i64 @SUCCEEDED(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %178

146:                                              ; preds = %138
  %147 = load i32*, i32** %13, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %178

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load i64, i64* %15, align 8
  %157 = load i64, i64* @S_OK, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i32* @jsstr_alloc_len(i32 %161, i32 %163)
  store i32* %164, i32** %22, align 8
  %165 = load i32*, i32** %22, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i32*, i32** %22, align 8
  %169 = call i32 @jsval_string(i32* %168)
  %170 = load i32*, i32** %13, align 8
  store i32 %169, i32* %170, align 4
  br label %173

171:                                              ; preds = %159
  %172 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %172, i64* %15, align 8
  br label %173

173:                                              ; preds = %171, %167
  br label %177

174:                                              ; preds = %149
  %175 = call i32 (...) @jsval_undefined()
  %176 = load i32*, i32** %13, align 8
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %173
  br label %178

178:                                              ; preds = %177, %146, %138
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @heap_free(i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @heap_free(i32 %183)
  %185 = load i64, i64* %15, align 8
  store i64 %185, i64* %7, align 8
  br label %186

186:                                              ; preds = %178, %78, %59, %48
  %187 = load i64, i64* %7, align 8
  ret i64 %187
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_jsval(i32) #1

declare dso_local i64 @maybe_to_primitive(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @is_number(i32) #1

declare dso_local double @get_number(i32) #1

declare dso_local i32 @floor(double) #1

declare dso_local i64 @is_string(i32) #1

declare dso_local i32* @get_string(i32) #1

declare dso_local i64 @jsstr_length(i32*) #1

declare dso_local i32 @jsstr_extract(i32*, i32, i64, i8*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @stringify(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @jsstr_alloc_len(i32, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @heap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
