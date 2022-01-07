; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_stringify_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_stringify_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i64* }
%struct.TYPE_16__ = type { i32 }

@DISPID_STARTENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Found a cycle\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@fdexEnumDefault = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_16__*)* @stringify_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stringify_object(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %13 = load i32, i32* @DISPID_STARTENUM, align 4
  store i32 %13, i32* %6, align 4
  %14 = call i32 (...) @jsval_undefined()
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = call i64 @is_on_stack(%struct.TYPE_15__* %15, %struct.TYPE_16__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 @FIXME(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @E_FAIL, align 8
  store i64 %21, i64* %3, align 8
  br label %215

22:                                               ; preds = %2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = call i32 @stringify_push_obj(%struct.TYPE_15__* %23, %struct.TYPE_16__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %28, i64* %3, align 8
  br label %215

29:                                               ; preds = %22
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = call i32 @append_char(%struct.TYPE_15__* %30, i8 signext 123)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %34, i64* %3, align 8
  br label %215

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %158, %154, %59, %35
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* @fdexEnumDefault, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @IDispatchEx_GetNextDispID(i32* %38, i32 %39, i32 %40, i32* %6)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %161

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @jsval_release(i32 %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @jsdisp_propget(%struct.TYPE_16__* %47, i32 %48, i32* %7)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @FAILED(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i64, i64* %12, align 8
  store i64 %54, i64* %3, align 8
  br label %215

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @is_undefined(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %36

60:                                               ; preds = %55
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = call i32 @append_char(%struct.TYPE_15__* %67, i8 signext 44)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %71, i64* %12, align 8
  br label %161

72:                                               ; preds = %66, %60
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %72
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = call i32 @append_char(%struct.TYPE_15__* %79, i8 signext 10)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %83, i64* %12, align 8
  br label %161

84:                                               ; preds = %78
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %101, %84
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = call i32 @append_string(%struct.TYPE_15__* %92, i64* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %91
  %99 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %99, i64* %12, align 8
  br label %104

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %85

104:                                              ; preds = %98, %85
  br label %105

105:                                              ; preds = %104, %72
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @IDispatchEx_GetMemberName(i32* %107, i32 %108, i32* %11)
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i64 @FAILED(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %161

114:                                              ; preds = %105
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @SysStringLen(i32 %117)
  %119 = call i64 @json_quote(%struct.TYPE_15__* %115, i32 %116, i32 %118)
  store i64 %119, i64* %12, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @SysFreeString(i32 %120)
  %122 = load i64, i64* %12, align 8
  %123 = call i64 @FAILED(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %161

126:                                              ; preds = %114
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = call i32 @append_char(%struct.TYPE_15__* %127, i8 signext 58)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = call i32 @append_char(%struct.TYPE_15__* %137, i8 signext 32)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136, %126
  %141 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %141, i64* %12, align 8
  br label %161

142:                                              ; preds = %136, %130
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i64 @stringify(%struct.TYPE_15__* %143, i32 %144)
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %12, align 8
  %147 = call i64 @FAILED(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %161

150:                                              ; preds = %142
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* @S_FALSE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  br label %36

158:                                              ; preds = %150
  %159 = load i32, i32* %8, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %36

161:                                              ; preds = %149, %140, %125, %113, %82, %70, %36
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @jsval_release(i32 %162)
  %164 = load i64, i64* %12, align 8
  %165 = call i64 @FAILED(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i64, i64* %12, align 8
  store i64 %168, i64* %3, align 8
  br label %215

169:                                              ; preds = %161
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %205

172:                                              ; preds = %169
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load i64*, i64** %174, align 8
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %205

178:                                              ; preds = %172
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %180 = call i32 @append_char(%struct.TYPE_15__* %179, i8 signext 10)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %183, i64* %3, align 8
  br label %215

184:                                              ; preds = %178
  store i32 1, i32* %9, align 4
  br label %185

185:                                              ; preds = %201, %184
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = icmp ult i32 %186, %189
  br i1 %190, label %191, label %204

191:                                              ; preds = %185
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 2
  %195 = load i64*, i64** %194, align 8
  %196 = call i32 @append_string(%struct.TYPE_15__* %192, i64* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %191
  %199 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %199, i64* %12, align 8
  br label %204

200:                                              ; preds = %191
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %9, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %185

204:                                              ; preds = %198, %185
  br label %205

205:                                              ; preds = %204, %172, %169
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %207 = call i32 @append_char(%struct.TYPE_15__* %206, i8 signext 125)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %210, i64* %3, align 8
  br label %215

211:                                              ; preds = %205
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %213 = call i32 @stringify_pop_obj(%struct.TYPE_15__* %212)
  %214 = load i64, i64* @S_OK, align 8
  store i64 %214, i64* %3, align 8
  br label %215

215:                                              ; preds = %211, %209, %182, %167, %53, %33, %27, %19
  %216 = load i64, i64* %3, align 8
  ret i64 %216
}

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i64 @is_on_stack(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @stringify_push_obj(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @append_char(%struct.TYPE_15__*, i8 signext) #1

declare dso_local i64 @IDispatchEx_GetNextDispID(i32*, i32, i32, i32*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @jsdisp_propget(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @is_undefined(i32) #1

declare dso_local i32 @append_string(%struct.TYPE_15__*, i64*) #1

declare dso_local i64 @IDispatchEx_GetMemberName(i32*, i32, i32*) #1

declare dso_local i64 @json_quote(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @SysStringLen(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @stringify(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @stringify_pop_obj(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
