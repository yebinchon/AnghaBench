; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_getOwnPropertyDescriptor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_getOwnPropertyDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_OBJECT_EXPECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"not implemented non-JS object\0A\00", align 1
@E_NOTIMPL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@getW = common dso_local global i32 0, align 4
@PROPF_ALL = common dso_local global i32 0, align 4
@setW = common dso_local global i32 0, align 4
@valueW = common dso_local global i32 0, align 4
@writableW = common dso_local global i32 0, align 4
@PROPF_WRITABLE = common dso_local global i32 0, align 4
@enumerableW = common dso_local global i32 0, align 4
@PROPF_ENUMERABLE = common dso_local global i32 0, align 4
@configurableW = common dso_local global i32 0, align 4
@PROPF_CONFIGURABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32*, i32*)* @Object_getOwnPropertyDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Object_getOwnPropertyDescriptor(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %11, align 4
  %22 = icmp ult i32 %21, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %6
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @is_object_instance(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23, %6
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @JS_E_OBJECT_EXPECTED, align 4
  %32 = call i64 @throw_type_error(i32* %30, i32 %31, i32* null)
  store i64 %32, i64* %7, align 8
  br label %215

33:                                               ; preds = %23
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_object(i32 %36)
  %38 = call i32* @to_jsdisp(i32 %37)
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i64, i64* @E_NOTIMPL, align 8
  store i64 %43, i64* %7, align 8
  br label %215

44:                                               ; preds = %33
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp uge i32 %46, 2
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  br label %54

52:                                               ; preds = %44
  %53 = call i32 (...) @jsval_undefined()
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %51, %48 ], [ %53, %52 ]
  %56 = call i64 @to_flat_string(i32* %45, i32 %55, i32** %18, i32** %17)
  store i64 %56, i64* %19, align 8
  %57 = load i64, i64* %19, align 8
  %58 = call i64 @FAILED(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* %19, align 8
  store i64 %61, i64* %7, align 8
  br label %215

62:                                               ; preds = %54
  %63 = load i32*, i32** %15, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = call i64 @jsdisp_get_own_property(i32* %63, i32* %64, i32 %65, %struct.TYPE_4__* %14)
  store i64 %66, i64* %19, align 8
  %67 = load i32*, i32** %18, align 8
  %68 = call i32 @jsstr_release(i32* %67)
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = call i32 (...) @jsval_undefined()
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i64, i64* @S_OK, align 8
  store i64 %79, i64* %7, align 8
  br label %215

80:                                               ; preds = %62
  %81 = load i64, i64* %19, align 8
  %82 = call i64 @FAILED(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i64, i64* %19, align 8
  store i64 %85, i64* %7, align 8
  br label %215

86:                                               ; preds = %80
  %87 = load i32*, i32** %8, align 8
  %88 = call i64 @create_object(i32* %87, i32* null, i32** %16)
  store i64 %88, i64* %19, align 8
  %89 = load i64, i64* %19, align 8
  %90 = call i64 @FAILED(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i64, i64* %19, align 8
  store i64 %93, i64* %7, align 8
  br label %215

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %138

102:                                              ; preds = %98, %94
  %103 = load i32*, i32** %16, align 8
  %104 = load i32, i32* @getW, align 4
  %105 = load i32, i32* @PROPF_ALL, align 4
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @jsval_obj(i32* %111)
  br label %115

113:                                              ; preds = %102
  %114 = call i32 (...) @jsval_undefined()
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi i32 [ %112, %109 ], [ %114, %113 ]
  %117 = call i64 @jsdisp_define_data_property(i32* %103, i32 %104, i32 %105, i32 %116)
  store i64 %117, i64* %19, align 8
  %118 = load i64, i64* %19, align 8
  %119 = call i64 @SUCCEEDED(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %115
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* @setW, align 4
  %124 = load i32, i32* @PROPF_ALL, align 4
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @jsval_obj(i32* %130)
  br label %134

132:                                              ; preds = %121
  %133 = call i32 (...) @jsval_undefined()
  br label %134

134:                                              ; preds = %132, %128
  %135 = phi i32 [ %131, %128 ], [ %133, %132 ]
  %136 = call i64 @jsdisp_define_data_property(i32* %122, i32 %123, i32 %124, i32 %135)
  store i64 %136, i64* %19, align 8
  br label %137

137:                                              ; preds = %134, %115
  br label %162

138:                                              ; preds = %98
  %139 = load i32*, i32** %16, align 8
  %140 = load i32, i32* @valueW, align 4
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @jsdisp_propput_name(i32* %139, i32 %140, i32 %142)
  store i64 %143, i64* %19, align 8
  %144 = load i64, i64* %19, align 8
  %145 = call i64 @SUCCEEDED(i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %138
  %148 = load i32*, i32** %16, align 8
  %149 = load i32, i32* @writableW, align 4
  %150 = load i32, i32* @PROPF_ALL, align 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @PROPF_WRITABLE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 @jsval_bool(i32 %158)
  %160 = call i64 @jsdisp_define_data_property(i32* %148, i32 %149, i32 %150, i32 %159)
  store i64 %160, i64* %19, align 8
  br label %161

161:                                              ; preds = %147, %138
  br label %162

162:                                              ; preds = %161, %137
  %163 = load i64, i64* %19, align 8
  %164 = call i64 @SUCCEEDED(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %162
  %167 = load i32*, i32** %16, align 8
  %168 = load i32, i32* @enumerableW, align 4
  %169 = load i32, i32* @PROPF_ALL, align 4
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @PROPF_ENUMERABLE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = call i32 @jsval_bool(i32 %177)
  %179 = call i64 @jsdisp_define_data_property(i32* %167, i32 %168, i32 %169, i32 %178)
  store i64 %179, i64* %19, align 8
  br label %180

180:                                              ; preds = %166, %162
  %181 = load i64, i64* %19, align 8
  %182 = call i64 @SUCCEEDED(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %180
  %185 = load i32*, i32** %16, align 8
  %186 = load i32, i32* @configurableW, align 4
  %187 = load i32, i32* @PROPF_ALL, align 4
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i32 @jsval_bool(i32 %195)
  %197 = call i64 @jsdisp_define_data_property(i32* %185, i32 %186, i32 %187, i32 %196)
  store i64 %197, i64* %19, align 8
  br label %198

198:                                              ; preds = %184, %180
  %199 = call i32 @release_property_descriptor(%struct.TYPE_4__* %14)
  %200 = load i64, i64* %19, align 8
  %201 = call i64 @SUCCEEDED(i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load i32*, i32** %13, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load i32*, i32** %16, align 8
  %208 = call i32 @jsval_obj(i32* %207)
  %209 = load i32*, i32** %13, align 8
  store i32 %208, i32* %209, align 4
  br label %213

210:                                              ; preds = %203, %198
  %211 = load i32*, i32** %16, align 8
  %212 = call i32 @jsdisp_release(i32* %211)
  br label %213

213:                                              ; preds = %210, %206
  %214 = load i64, i64* %19, align 8
  store i64 %214, i64* %7, align 8
  br label %215

215:                                              ; preds = %213, %92, %84, %78, %60, %41, %29
  %216 = load i64, i64* %7, align 8
  ret i64 %216
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i64 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32* @to_jsdisp(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @to_flat_string(i32*, i32, i32**, i32**) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @jsdisp_get_own_property(i32*, i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @create_object(i32*, i32*, i32**) #1

declare dso_local i64 @jsdisp_define_data_property(i32*, i32, i32, i32) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @jsdisp_propput_name(i32*, i32, i32) #1

declare dso_local i32 @jsval_bool(i32) #1

declare dso_local i32 @release_property_descriptor(%struct.TYPE_4__*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
