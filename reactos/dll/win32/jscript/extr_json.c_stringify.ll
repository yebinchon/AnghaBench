; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_stringify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_json.c_stringify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@S_FALSE = common dso_local global i64 0, align 8
@toJSONW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Use toJSON.\0A\00", align 1
@nullW = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@trueW = common dso_local global i32 0, align 4
@falseW = common dso_local global i32 0, align 4
@JSCLASS_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"VARIANT\0A\00", align 1
@E_NOTIMPL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32)* @stringify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stringify(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @is_object_instance(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @get_object(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @get_object(i32 %24)
  %26 = call i32* @iface_to_jsdisp(i64 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* @S_FALSE, align 8
  store i64 %30, i64* %3, align 8
  br label %184

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @toJSONW, align 4
  %34 = call i64 @jsdisp_get_id(i32* %32, i32 %33, i32 0, i32* %9)
  store i64 %34, i64* %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @jsdisp_release(i32* %35)
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = call i32 @FIXME(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %31
  br label %43

43:                                               ; preds = %42, %19, %2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @maybe_to_primitive(i32 %46, i32 %47, i32* %6)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @FAILED(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %3, align 8
  br label %184

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @jsval_type(i32 %55)
  switch i32 %56, label %180 [
    i32 133, label %57
    i32 134, label %65
    i32 130, label %81
    i32 132, label %97
    i32 131, label %143
    i32 129, label %175
    i32 128, label %177
  ]

57:                                               ; preds = %54
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = load i32, i32* @nullW, align 4
  %60 = call i32 @append_string(%struct.TYPE_8__* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %62, %57
  br label %180

65:                                               ; preds = %54
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @get_bool(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @trueW, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @falseW, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = call i32 @append_string(%struct.TYPE_8__* %66, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %78, %74
  br label %180

81:                                               ; preds = %54
  %82 = load i32, i32* %6, align 4
  %83 = call i32* @get_string(i32 %82)
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32* @jsstr_flatten(i32* %84)
  store i32* %85, i32** %11, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @jsstr_length(i32* %91)
  %93 = call i64 @json_quote(%struct.TYPE_8__* %89, i32* %90, i32 %92)
  store i64 %93, i64* %7, align 8
  br label %96

94:                                               ; preds = %81
  %95 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %94, %88
  br label %180

97:                                               ; preds = %54
  %98 = load i32, i32* %6, align 4
  %99 = call double @get_number(i32 %98)
  store double %99, double* %12, align 8
  %100 = load double, double* %12, align 8
  %101 = call i32 @is_finite(double %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %97
  %104 = load double, double* %12, align 8
  %105 = call i64 @double_to_string(double %104, i32** %14)
  store i64 %105, i64* %7, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @FAILED(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %180

110:                                              ; preds = %103
  %111 = load i32*, i32** %14, align 8
  %112 = call i32* @jsstr_flatten(i32* %111)
  store i32* %112, i32** %13, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = icmp ne i32* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i32*, i32** %13, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %110
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @jsstr_length(i32* %122)
  %124 = call i32 @append_string_len(%struct.TYPE_8__* %120, i32* %121, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %119
  %127 = load i64, i64* @E_OUTOFMEMORY, align 8
  br label %130

128:                                              ; preds = %119, %110
  %129 = load i64, i64* @S_OK, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i64 [ %127, %126 ], [ %129, %128 ]
  store i64 %131, i64* %7, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = call i32 @jsstr_release(i32* %132)
  br label %142

134:                                              ; preds = %97
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = load i32, i32* @nullW, align 4
  %137 = call i32 @append_string(%struct.TYPE_8__* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %140, i64* %7, align 8
  br label %141

141:                                              ; preds = %139, %134
  br label %142

142:                                              ; preds = %141, %130
  br label %180

143:                                              ; preds = %54
  %144 = load i32, i32* %6, align 4
  %145 = call i64 @get_object(i32 %144)
  %146 = call i32* @iface_to_jsdisp(i64 %145)
  store i32* %146, i32** %15, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %143
  %150 = load i64, i64* @S_FALSE, align 8
  store i64 %150, i64* %7, align 8
  br label %180

151:                                              ; preds = %143
  %152 = load i32*, i32** %15, align 8
  %153 = call i32 @is_callable(i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %170, label %155

155:                                              ; preds = %151
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* @JSCLASS_ARRAY, align 4
  %158 = call i32 @is_class(i32* %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = load i32*, i32** %15, align 8
  %163 = call i64 @stringify_array(%struct.TYPE_8__* %161, i32* %162)
  br label %168

164:                                              ; preds = %155
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %166 = load i32*, i32** %15, align 8
  %167 = call i64 @stringify_object(%struct.TYPE_8__* %165, i32* %166)
  br label %168

168:                                              ; preds = %164, %160
  %169 = phi i64 [ %163, %160 ], [ %167, %164 ]
  store i64 %169, i64* %7, align 8
  br label %172

170:                                              ; preds = %151
  %171 = load i64, i64* @S_FALSE, align 8
  store i64 %171, i64* %7, align 8
  br label %172

172:                                              ; preds = %170, %168
  %173 = load i32*, i32** %15, align 8
  %174 = call i32 @jsdisp_release(i32* %173)
  br label %180

175:                                              ; preds = %54
  %176 = load i64, i64* @S_FALSE, align 8
  store i64 %176, i64* %7, align 8
  br label %180

177:                                              ; preds = %54
  %178 = call i32 @FIXME(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %179 = load i64, i64* @E_NOTIMPL, align 8
  store i64 %179, i64* %7, align 8
  br label %180

180:                                              ; preds = %54, %177, %175, %172, %149, %142, %109, %96, %80, %64
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @jsval_release(i32 %181)
  %183 = load i64, i64* %7, align 8
  store i64 %183, i64* %3, align 8
  br label %184

184:                                              ; preds = %180, %52, %29
  %185 = load i64, i64* %3, align 8
  ret i64 %185
}

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i64 @get_object(i32) #1

declare dso_local i32* @iface_to_jsdisp(i64) #1

declare dso_local i64 @jsdisp_get_id(i32*, i32, i32, i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @maybe_to_primitive(i32, i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @jsval_type(i32) #1

declare dso_local i32 @append_string(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @get_bool(i32) #1

declare dso_local i32* @get_string(i32) #1

declare dso_local i32* @jsstr_flatten(i32*) #1

declare dso_local i64 @json_quote(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local double @get_number(i32) #1

declare dso_local i32 @is_finite(double) #1

declare dso_local i64 @double_to_string(double, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @append_string_len(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @is_callable(i32*) #1

declare dso_local i32 @is_class(i32*, i32) #1

declare dso_local i64 @stringify_array(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @stringify_object(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @jsval_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
