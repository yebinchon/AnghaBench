; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_method_eql.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-method/src/extr_method.c_method_eql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }
%struct.RProc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_klass\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"_owner\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"_recv\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"_proc\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"_name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @method_eql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_eql(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.RClass*, align 8
  %11 = alloca %struct.RClass*, align 8
  %12 = alloca %struct.RProc*, align 8
  %13 = alloca %struct.RProc*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @mrb_get_args(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @mrb_class(i32* %18, i32 %19)
  %21 = call i32 @mrb_obj_is_instance_of(i32* %16, i32 %17, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 (...) @mrb_false_value()
  store i32 %24, i32* %3, align 4
  br label %152

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @mrb_class(i32* %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @mrb_class(i32* %29, i32 %30)
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 (...) @mrb_false_value()
  store i32 %34, i32* %3, align 4
  br label %152

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @IV_GET(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %38 = call %struct.RClass* @mrb_class_ptr(i32 %37)
  store %struct.RClass* %38, %struct.RClass** %11, align 8
  %39 = load %struct.RClass*, %struct.RClass** %11, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @IV_GET(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %42 = call %struct.RClass* @mrb_class_ptr(i32 %41)
  %43 = icmp ne %struct.RClass* %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i32 (...) @mrb_false_value()
  store i32 %45, i32* %3, align 4
  br label %152

46:                                               ; preds = %35
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @IV_GET(i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %49 = call %struct.RClass* @mrb_class_ptr(i32 %48)
  store %struct.RClass* %49, %struct.RClass** %10, align 8
  %50 = load %struct.RClass*, %struct.RClass** %10, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @IV_GET(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %53 = call %struct.RClass* @mrb_class_ptr(i32 %52)
  %54 = icmp ne %struct.RClass* %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = call i32 (...) @mrb_false_value()
  store i32 %56, i32* %3, align 4
  br label %152

57:                                               ; preds = %46
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @IV_GET(i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %59, i32* %7, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @IV_GET(i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i32 @mrb_obj_equal(i32* %60, i32 %61, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = call i32 (...) @mrb_false_value()
  store i32 %67, i32* %3, align 4
  br label %152

68:                                               ; preds = %57
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @IV_GET(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @IV_GET(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @mrb_nil_p(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @mrb_nil_p(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @IV_GET(i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %83 = call i64 @mrb_symbol(i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @IV_GET(i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %86 = call i64 @mrb_symbol(i32 %85)
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = call i32 (...) @mrb_true_value()
  store i32 %89, i32* %3, align 4
  br label %152

90:                                               ; preds = %80
  %91 = call i32 (...) @mrb_false_value()
  store i32 %91, i32* %3, align 4
  br label %152

92:                                               ; preds = %76, %68
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @mrb_nil_p(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 (...) @mrb_false_value()
  store i32 %97, i32* %3, align 4
  br label %152

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @mrb_nil_p(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 (...) @mrb_false_value()
  store i32 %103, i32* %3, align 4
  br label %152

104:                                              ; preds = %98
  %105 = load i32, i32* %8, align 4
  %106 = call %struct.RProc* @mrb_proc_ptr(i32 %105)
  store %struct.RProc* %106, %struct.RProc** %12, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call %struct.RProc* @mrb_proc_ptr(i32 %107)
  store %struct.RProc* %108, %struct.RProc** %13, align 8
  %109 = load %struct.RProc*, %struct.RProc** %12, align 8
  %110 = call i64 @MRB_PROC_CFUNC_P(%struct.RProc* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %104
  %113 = load %struct.RProc*, %struct.RProc** %13, align 8
  %114 = call i64 @MRB_PROC_CFUNC_P(%struct.RProc* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = call i32 (...) @mrb_false_value()
  store i32 %117, i32* %3, align 4
  br label %152

118:                                              ; preds = %112
  %119 = load %struct.RProc*, %struct.RProc** %12, align 8
  %120 = getelementptr inbounds %struct.RProc, %struct.RProc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.RProc*, %struct.RProc** %13, align 8
  %124 = getelementptr inbounds %struct.RProc, %struct.RProc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %122, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = call i32 (...) @mrb_false_value()
  store i32 %129, i32* %3, align 4
  br label %152

130:                                              ; preds = %118
  br label %150

131:                                              ; preds = %104
  %132 = load %struct.RProc*, %struct.RProc** %13, align 8
  %133 = call i64 @MRB_PROC_CFUNC_P(%struct.RProc* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i32 (...) @mrb_false_value()
  store i32 %136, i32* %3, align 4
  br label %152

137:                                              ; preds = %131
  %138 = load %struct.RProc*, %struct.RProc** %12, align 8
  %139 = getelementptr inbounds %struct.RProc, %struct.RProc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.RProc*, %struct.RProc** %13, align 8
  %143 = getelementptr inbounds %struct.RProc, %struct.RProc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %141, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = call i32 (...) @mrb_false_value()
  store i32 %148, i32* %3, align 4
  br label %152

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %149, %130
  %151 = call i32 (...) @mrb_true_value()
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %147, %135, %128, %116, %102, %96, %90, %88, %66, %55, %44, %33, %23
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @mrb_obj_is_instance_of(i32*, i32, i64) #1

declare dso_local i64 @mrb_class(i32*, i32) #1

declare dso_local i32 @mrb_false_value(...) #1

declare dso_local %struct.RClass* @mrb_class_ptr(i32) #1

declare dso_local i32 @IV_GET(i32, i8*) #1

declare dso_local i32 @mrb_obj_equal(i32*, i32, i32) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i64 @mrb_symbol(i32) #1

declare dso_local i32 @mrb_true_value(...) #1

declare dso_local %struct.RProc* @mrb_proc_ptr(i32) #1

declare dso_local i64 @MRB_PROC_CFUNC_P(%struct.RProc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
