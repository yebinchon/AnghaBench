; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_init_global.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_init_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }

@SCRIPTLANGUAGEVERSION_ES5 = common dso_local global i32 0, align 4
@PROPF_WRITABLE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@JSGlobal_info = common dso_local global i32 0, align 4
@MathW = common dso_local global i32 0, align 4
@JSONW = common dso_local global i32 0, align 4
@ActiveXObjectW = common dso_local global i32 0, align 4
@undefinedW = common dso_local global i32 0, align 4
@NaNW = common dso_local global i32 0, align 4
@NAN = common dso_local global i32 0, align 4
@InfinityW = common dso_local global i32 0, align 4
@INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_global(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SCRIPTLANGUAGEVERSION_ES5, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @PROPF_WRITABLE, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 0, %15 ], [ %17, %16 ]
  store i32 %19, i32* %4, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @S_OK, align 4
  store i32 %25, i32* %2, align 4
  br label %170

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = call i32 @create_dispex(%struct.TYPE_9__* %27, i32* @JSGlobal_info, i32* null, i64* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %170

36:                                               ; preds = %26
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = call i32 @create_object_prototype(%struct.TYPE_9__* %37, i32** %6)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %170

44:                                               ; preds = %36
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @init_constructors(%struct.TYPE_9__* %45, i32* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @jsdisp_release(i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %170

55:                                               ; preds = %44
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = call i32 @create_math(%struct.TYPE_9__* %56, i32** %5)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %170

63:                                               ; preds = %55
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @MathW, align 4
  %68 = load i32, i32* @PROPF_WRITABLE, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @jsval_obj(i32* %69)
  %71 = call i32 @jsdisp_define_data_property(i64 %66, i32 %67, i32 %68, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @jsdisp_release(i32* %72)
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @FAILED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %170

79:                                               ; preds = %63
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sge i32 %82, 2
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = call i32 @create_json(%struct.TYPE_9__* %85, i32** %9)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i64 @FAILED(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %170

92:                                               ; preds = %84
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @JSONW, align 4
  %97 = load i32, i32* @PROPF_WRITABLE, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @jsval_obj(i32* %98)
  %100 = call i32 @jsdisp_define_data_property(i64 %95, i32 %96, i32 %97, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @jsdisp_release(i32* %101)
  %103 = load i32, i32* %8, align 4
  %104 = call i64 @FAILED(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %92
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %170

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %108, %79
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = call i32 @create_activex_constr(%struct.TYPE_9__* %110, i32** %7)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i64 @FAILED(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %2, align 4
  br label %170

117:                                              ; preds = %109
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @ActiveXObjectW, align 4
  %122 = load i32, i32* @PROPF_WRITABLE, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @jsval_obj(i32* %123)
  %125 = call i32 @jsdisp_define_data_property(i64 %120, i32 %121, i32 %122, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @jsdisp_release(i32* %126)
  %128 = load i32, i32* %8, align 4
  %129 = call i64 @FAILED(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %117
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %2, align 4
  br label %170

133:                                              ; preds = %117
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @undefinedW, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 (...) @jsval_undefined()
  %140 = call i32 @jsdisp_define_data_property(i64 %136, i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i64 @FAILED(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %133
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %170

146:                                              ; preds = %133
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @NaNW, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @NAN, align 4
  %153 = call i32 @jsval_number(i32 %152)
  %154 = call i32 @jsdisp_define_data_property(i64 %149, i32 %150, i32 %151, i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i64 @FAILED(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %146
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %170

160:                                              ; preds = %146
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* @InfinityW, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @INFINITY, align 4
  %167 = call i32 @jsval_number(i32 %166)
  %168 = call i32 @jsdisp_define_data_property(i64 %163, i32 %164, i32 %165, i32 %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %160, %158, %144, %131, %115, %106, %90, %77, %61, %53, %42, %34, %24
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @create_dispex(%struct.TYPE_9__*, i32*, i32*, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @create_object_prototype(%struct.TYPE_9__*, i32**) #1

declare dso_local i32 @init_constructors(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @create_math(%struct.TYPE_9__*, i32**) #1

declare dso_local i32 @jsdisp_define_data_property(i64, i32, i32, i32) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @create_json(%struct.TYPE_9__*, i32**) #1

declare dso_local i32 @create_activex_constr(%struct.TYPE_9__*, i32**) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @jsval_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
