; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLyObject_ToComposite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLyObject_ToComposite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_24__*, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_20__ = type { i32 }

@Py_None = common dso_local global i32* null, align 8
@RECORDOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32*, i32*, i32)* @PLyObject_ToComposite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PLyObject_ToComposite(%struct.TYPE_25__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** @Py_None, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  store i32 1, i32* %16, align 4
  store i32 0, i32* %5, align 4
  br label %153

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @PyString_Check(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @PyUnicode_Check(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %17
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @PLyString_ToComposite(%struct.TYPE_25__* %27, i32* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %153

31:                                               ; preds = %22
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RECORDOID, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %31
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_24__* @lookup_rowtype_tupdesc(i64 %40, i32 %43)
  store %struct.TYPE_24__* %44, %struct.TYPE_24__** %11, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = icmp eq %struct.TYPE_24__* %45, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %60, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %37
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %72 = call %struct.TYPE_20__* (...) @PLy_current_execution_context()
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PLy_output_setup_tuple(%struct.TYPE_25__* %70, %struct.TYPE_24__* %71, i32 %74)
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  store i64 %82, i64* %86, align 8
  br label %87

87:                                               ; preds = %69, %37
  br label %113

88:                                               ; preds = %31
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %11, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %95 = icmp eq %struct.TYPE_24__* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %88
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.TYPE_24__* @lookup_rowtype_tupdesc(i64 %99, i32 %102)
  store %struct.TYPE_24__* %103, %struct.TYPE_24__** %11, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 2
  store %struct.TYPE_24__* %104, %struct.TYPE_24__** %108, align 8
  br label %112

109:                                              ; preds = %88
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %111 = call i32 @PinTupleDesc(%struct.TYPE_24__* %110)
  br label %112

112:                                              ; preds = %109, %96
  br label %113

113:                                              ; preds = %112, %87
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %116, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @Assert(i32 %123)
  %125 = load i32*, i32** %7, align 8
  %126 = call i64 @PySequence_Check(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %113
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @PLySequence_ToComposite(%struct.TYPE_25__* %129, %struct.TYPE_24__* %130, i32* %131)
  store i32 %132, i32* %10, align 4
  br label %149

133:                                              ; preds = %113
  %134 = load i32*, i32** %7, align 8
  %135 = call i64 @PyMapping_Check(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @PLyMapping_ToComposite(%struct.TYPE_25__* %138, %struct.TYPE_24__* %139, i32* %140)
  store i32 %141, i32* %10, align 4
  br label %148

142:                                              ; preds = %133
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @PLyGenericObject_ToComposite(%struct.TYPE_25__* %143, %struct.TYPE_24__* %144, i32* %145, i32 %146)
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %142, %137
  br label %149

149:                                              ; preds = %148, %128
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %151 = call i32 @ReleaseTupleDesc(%struct.TYPE_24__* %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %149, %26, %15
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i64 @PyString_Check(i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32 @PLyString_ToComposite(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local %struct.TYPE_24__* @lookup_rowtype_tupdesc(i64, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PLy_output_setup_tuple(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_20__* @PLy_current_execution_context(...) #1

declare dso_local i32 @PinTupleDesc(%struct.TYPE_24__*) #1

declare dso_local i64 @PySequence_Check(i32*) #1

declare dso_local i32 @PLySequence_ToComposite(%struct.TYPE_25__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i64 @PyMapping_Check(i32*) #1

declare dso_local i32 @PLyMapping_ToComposite(%struct.TYPE_25__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @PLyGenericObject_ToComposite(%struct.TYPE_25__*, %struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @ReleaseTupleDesc(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
