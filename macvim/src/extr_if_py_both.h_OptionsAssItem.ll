; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_OptionsAssItem.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_OptionsAssItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 (i32)* }

@NUL = common dso_local global i64 0, align 8
@RAISE_NO_EMPTY_KEYS = common dso_local global i32 0, align 4
@PyExc_KeyError = common dso_local global i32 0, align 4
@SREQ_GLOBAL = common dso_local global i64 0, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to unset global option %s\00", align 1
@SOPT_GLOBAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"unable to unset option %s which does not have global value\00", align 1
@OPT_LOCAL = common dso_local global i32 0, align 4
@OPT_GLOBAL = common dso_local global i32 0, align 4
@SOPT_BOOL = common dso_local global i32 0, align 4
@SOPT_NUM = common dso_local global i32 0, align 4
@NUMBER_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*)* @OptionsAssItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OptionsAssItem(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64 (i32)*, i64 (i32)** %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 %19(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %175

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = call i64* @StringToChars(i32* %27, i32** %12)
  store i64* %28, i64** %8, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %175

31:                                               ; preds = %26
  %32 = load i64*, i64** %8, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NUL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @RAISE_NO_EMPTY_KEYS, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @Py_XDECREF(i32* %38)
  store i32 -1, i32* %4, align 4
  br label %175

40:                                               ; preds = %31
  %41 = load i64*, i64** %8, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @get_option_value_strict(i64* %41, i32* null, i32* null, i64 %44, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load i32, i32* @PyExc_KeyError, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @PyErr_SetObject(i32 %52, i32* %53)
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @Py_XDECREF(i32* %55)
  store i32 -1, i32* %4, align 4
  br label %175

57:                                               ; preds = %40
  %58 = load i32*, i32** %7, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %93

60:                                               ; preds = %57
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SREQ_GLOBAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @PyExc_ValueError, align 4
  %68 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %69 = load i64*, i64** %8, align 8
  %70 = call i32 @PyErr_FORMAT(i32 %67, i32 %68, i64* %69)
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @Py_XDECREF(i32* %71)
  store i32 -1, i32* %4, align 4
  br label %175

73:                                               ; preds = %60
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @SOPT_GLOBAL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @PyExc_ValueError, align 4
  %80 = call i32 @N_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i64*, i64** %8, align 8
  %82 = call i32 @PyErr_FORMAT(i32 %79, i32 %80, i64* %81)
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @Py_XDECREF(i32* %83)
  store i32 -1, i32* %4, align 4
  br label %175

85:                                               ; preds = %73
  %86 = load i64*, i64** %8, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @unset_global_local_option(i64* %86, i32 %89)
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @Py_XDECREF(i32* %91)
  store i32 0, i32* %4, align 4
  br label %175

93:                                               ; preds = %57
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @OPT_LOCAL, align 4
  br label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @OPT_GLOBAL, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @SOPT_BOOL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @PyObject_IsTrue(i32* %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 -1, i32* %11, align 4
  br label %125

114:                                              ; preds = %108
  %115 = load i64*, i64** %8, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @set_option_value_for(i64* %115, i32 %116, i64* null, i32 %117, i64 %120, i32 %123)
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %114, %113
  br label %171

126:                                              ; preds = %102
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @SOPT_NUM, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %126
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* @NUMBER_INT, align 4
  %134 = call i64 @NumberToLong(i32* %132, i64* %14, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @Py_XDECREF(i32* %137)
  store i32 -1, i32* %4, align 4
  br label %175

139:                                              ; preds = %131
  %140 = load i64*, i64** %8, align 8
  %141 = load i64, i64* %14, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @set_option_value_for(i64* %140, i32 %142, i64* null, i32 %143, i64 %146, i32 %149)
  store i32 %150, i32* %11, align 4
  br label %170

151:                                              ; preds = %126
  %152 = load i32*, i32** %7, align 8
  %153 = call i64* @StringToChars(i32* %152, i32** %16)
  store i64* %153, i64** %15, align 8
  %154 = icmp ne i64* %153, null
  br i1 %154, label %155, label %168

155:                                              ; preds = %151
  %156 = load i64*, i64** %8, align 8
  %157 = load i64*, i64** %15, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @set_option_value_for(i64* %156, i32 0, i64* %157, i32 %158, i64 %161, i32 %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32*, i32** %16, align 8
  %167 = call i32 @Py_XDECREF(i32* %166)
  br label %169

168:                                              ; preds = %151
  store i32 -1, i32* %11, align 4
  br label %169

169:                                              ; preds = %168, %155
  br label %170

170:                                              ; preds = %169, %139
  br label %171

171:                                              ; preds = %170, %125
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @Py_XDECREF(i32* %172)
  %174 = load i32, i32* %11, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %171, %136, %85, %78, %66, %51, %36, %30, %25
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i64* @StringToChars(i32*, i32**) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @get_option_value_strict(i64*, i32*, i32*, i64, i32) #1

declare dso_local i32 @PyErr_SetObject(i32, i32*) #1

declare dso_local i32 @PyErr_FORMAT(i32, i32, i64*) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @unset_global_local_option(i64*, i32) #1

declare dso_local i32 @PyObject_IsTrue(i32*) #1

declare dso_local i32 @set_option_value_for(i64*, i32, i64*, i32, i64, i32) #1

declare dso_local i64 @NumberToLong(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
