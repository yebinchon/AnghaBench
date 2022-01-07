; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_regexp_string_match.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_regexp_string_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64 }

@regexp_string_match.indexW = internal constant [6 x i8] c"index\00", align 1
@regexp_string_match.inputW = internal constant [6 x i8] c"input\00", align 1
@regexp_string_match.lastIndexW = internal constant [10 x i8] c"lastIndex\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@REG_GLOB = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"no match\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @regexp_string_match(%struct.TYPE_14__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_16__* @regexp_from_jsdisp(i32* %21)
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i8* @jsstr_flatten(i32* %23)
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %28, i64* %5, align 8
  br label %235

29:                                               ; preds = %4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @REG_GLOB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %96, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = call i32* @heap_pool_mark(i32* %40)
  store i32* %41, i32** %18, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i8*, i8** %14, align 8
  %48 = call i32* @alloc_match_state(%struct.TYPE_13__* %44, i32* %46, i8* %47)
  store i32* %48, i32** %17, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %38
  %52 = load i32*, i32** %18, align 8
  %53 = call i32 @heap_pool_clear(i32* %52)
  %54 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %54, i64* %5, align 8
  br label %235

55:                                               ; preds = %38
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32*, i32** %8, align 8
  %60 = call i64 @regexp_match_next(%struct.TYPE_14__* %56, i32* %58, i32 0, i32* %59, i32** %17)
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %16, align 8
  %62 = call i64 @FAILED(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32*, i32** %18, align 8
  %66 = call i32 @heap_pool_clear(i32* %65)
  %67 = load i64, i64* %16, align 8
  store i64 %67, i64* %5, align 8
  br label %235

68:                                               ; preds = %55
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = call i64 @create_match_array(%struct.TYPE_14__* %76, i32* %77, i32* %78, i32** %19)
  store i64 %79, i64* %16, align 8
  %80 = load i64, i64* %16, align 8
  %81 = call i64 @SUCCEEDED(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i32*, i32** %19, align 8
  %85 = call i32 @jsval_disp(i32* %84)
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %75
  br label %91

88:                                               ; preds = %71
  %89 = call i32 (...) @jsval_null()
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %87
  br label %92

92:                                               ; preds = %91, %68
  %93 = load i32*, i32** %18, align 8
  %94 = call i32 @heap_pool_clear(i32* %93)
  %95 = load i64, i64* @S_OK, align 8
  store i64 %95, i64* %5, align 8
  br label %235

96:                                               ; preds = %29
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @FALSE, align 4
  %102 = call i64 @regexp_match(%struct.TYPE_14__* %97, i32* %99, i32* %100, i32 %101, %struct.TYPE_15__** %11, i32* %12)
  store i64 %102, i64* %16, align 8
  %103 = load i64, i64* %16, align 8
  %104 = call i64 @FAILED(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i64, i64* %16, align 8
  store i64 %107, i64* %5, align 8
  br label %235

108:                                              ; preds = %96
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %113 = load i32*, i32** %9, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = call i32 (...) @jsval_null()
  %117 = load i32*, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i64, i64* @S_OK, align 8
  store i64 %119, i64* %5, align 8
  br label %235

120:                                              ; preds = %108
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i64 @create_array(%struct.TYPE_14__* %121, i32 %122, i32** %15)
  store i64 %123, i64* %16, align 8
  %124 = load i64, i64* %16, align 8
  %125 = call i64 @FAILED(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i64, i64* %16, align 8
  store i64 %128, i64* %5, align 8
  br label %235

129:                                              ; preds = %120
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %166, %129
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %169

134:                                              ; preds = %130
  %135 = load i32*, i32** %8, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %137 = load i32, i32* %13, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %143 = load i32, i32* %13, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32* @jsstr_substr(i32* %135, i64 %141, i64 %147)
  store i32* %148, i32** %20, align 8
  %149 = load i32*, i32** %20, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %134
  %152 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %152, i64* %16, align 8
  br label %169

153:                                              ; preds = %134
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load i32*, i32** %20, align 8
  %157 = call i32 @jsval_string(i32* %156)
  %158 = call i64 @jsdisp_propput_idx(i32* %154, i32 %155, i32 %157)
  store i64 %158, i64* %16, align 8
  %159 = load i32*, i32** %20, align 8
  %160 = call i32 @jsstr_release(i32* %159)
  %161 = load i64, i64* %16, align 8
  %162 = call i64 @FAILED(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  br label %169

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %13, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %13, align 4
  br label %130

169:                                              ; preds = %164, %151, %130
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %16, align 8
  %172 = call i64 @SUCCEEDED(i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %217

174:                                              ; preds = %170
  %175 = load i32*, i32** %15, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sub i32 %177, 1
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @jsval_number(i64 %182)
  %184 = call i64 @jsdisp_propput_name(i32* %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @regexp_string_match.indexW, i64 0, i64 0), i32 %183)
  store i64 %184, i64* %16, align 8
  %185 = load i64, i64* %16, align 8
  %186 = call i64 @FAILED(i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %174
  br label %217

189:                                              ; preds = %174
  %190 = load i32*, i32** %15, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sub i32 %192, 1
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sub i32 %199, 1
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %197, %204
  %206 = call i32 @jsval_number(i64 %205)
  %207 = call i64 @jsdisp_propput_name(i32* %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @regexp_string_match.lastIndexW, i64 0, i64 0), i32 %206)
  store i64 %207, i64* %16, align 8
  %208 = load i64, i64* %16, align 8
  %209 = call i64 @FAILED(i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %189
  br label %217

212:                                              ; preds = %189
  %213 = load i32*, i32** %15, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = call i32 @jsval_string(i32* %214)
  %216 = call i64 @jsdisp_propput_name(i32* %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @regexp_string_match.inputW, i64 0, i64 0), i32 %215)
  store i64 %216, i64* %16, align 8
  br label %217

217:                                              ; preds = %212, %211, %188, %170
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %219 = call i32 @heap_free(%struct.TYPE_15__* %218)
  %220 = load i64, i64* %16, align 8
  %221 = call i64 @SUCCEEDED(i64 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %217
  %224 = load i32*, i32** %9, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i32*, i32** %15, align 8
  %228 = call i32 @jsval_obj(i32* %227)
  %229 = load i32*, i32** %9, align 8
  store i32 %228, i32* %229, align 4
  br label %233

230:                                              ; preds = %223, %217
  %231 = load i32*, i32** %15, align 8
  %232 = call i32 @jsdisp_release(i32* %231)
  br label %233

233:                                              ; preds = %230, %226
  %234 = load i64, i64* %16, align 8
  store i64 %234, i64* %5, align 8
  br label %235

235:                                              ; preds = %233, %127, %118, %106, %92, %64, %51, %27
  %236 = load i64, i64* %5, align 8
  ret i64 %236
}

declare dso_local %struct.TYPE_16__* @regexp_from_jsdisp(i32*) #1

declare dso_local i8* @jsstr_flatten(i32*) #1

declare dso_local i32* @heap_pool_mark(i32*) #1

declare dso_local i32* @alloc_match_state(%struct.TYPE_13__*, i32*, i8*) #1

declare dso_local i32 @heap_pool_clear(i32*) #1

declare dso_local i64 @regexp_match_next(%struct.TYPE_14__*, i32*, i32, i32*, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @create_match_array(%struct.TYPE_14__*, i32*, i32*, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @jsval_disp(i32*) #1

declare dso_local i32 @jsval_null(...) #1

declare dso_local i64 @regexp_match(%struct.TYPE_14__*, i32*, i32*, i32, %struct.TYPE_15__**, i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @create_array(%struct.TYPE_14__*, i32, i32**) #1

declare dso_local i32* @jsstr_substr(i32*, i64, i64) #1

declare dso_local i64 @jsdisp_propput_idx(i32*, i32, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @jsdisp_propput_name(i32*, i8*, i32) #1

declare dso_local i32 @jsval_number(i64) #1

declare dso_local i32 @heap_free(%struct.TYPE_15__*) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
