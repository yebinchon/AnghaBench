; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLyList_FromArray_recurse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLyList_FromArray_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* (%struct.TYPE_4__*, i32)*, i32 }

@Py_None = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*, i32, i32, i8**, i32**, i32*)* @PLyList_FromArray_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PLyList_FromArray_recurse(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3, i8** %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @PyList_New(i32 %27)
  store i32* %28, i32** %17, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %150

32:                                               ; preds = %7
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %60, %37
  %39 = load i32, i32* %16, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %38
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i8**, i8*** %13, align 8
  %53 = load i32**, i32*** %14, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = call i32* @PLyList_FromArray_recurse(%struct.TYPE_4__* %47, i32* %48, i32 %49, i32 %51, i8** %52, i32** %53, i32* %54)
  store i32* %55, i32** %18, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i32*, i32** %18, align 8
  %59 = call i32 @PyList_SET_ITEM(i32* %56, i32 %57, i32* %58)
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %16, align 4
  br label %38

63:                                               ; preds = %38
  br label %148

64:                                               ; preds = %32
  %65 = load i8**, i8*** %13, align 8
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %19, align 8
  %67 = load i32**, i32*** %14, align 8
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %20, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %21, align 4
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %138, %64
  %72 = load i32, i32* %16, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %141

79:                                               ; preds = %71
  %80 = load i32*, i32** %20, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load i32*, i32** %20, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %21, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32*, i32** @Py_None, align 8
  %90 = call i32 @Py_INCREF(i32* %89)
  %91 = load i32*, i32** %17, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load i32*, i32** @Py_None, align 8
  %94 = call i32 @PyList_SET_ITEM(i32* %91, i32 %92, i32* %93)
  br label %125

95:                                               ; preds = %82, %79
  %96 = load i8*, i8** %19, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @fetch_att(i8* %96, i32 %99, i32 %102)
  store i32 %103, i32* %22, align 4
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32* (%struct.TYPE_4__*, i32)*, i32* (%struct.TYPE_4__*, i32)** %107, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %110 = load i32, i32* %22, align 4
  %111 = call i32* %108(%struct.TYPE_4__* %109, i32 %110)
  %112 = call i32 @PyList_SET_ITEM(i32* %104, i32 %105, i32* %111)
  %113 = load i8*, i8** %19, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %19, align 8
  %118 = call i8* @att_addlength_pointer(i8* %113, i32 %116, i8* %117)
  store i8* %118, i8** %19, align 8
  %119 = load i8*, i8** %19, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @att_align_nominal(i8* %119, i32 %122)
  %124 = inttoptr i64 %123 to i8*
  store i8* %124, i8** %19, align 8
  br label %125

125:                                              ; preds = %95, %88
  %126 = load i32*, i32** %20, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load i32, i32* %21, align 4
  %130 = shl i32 %129, 1
  store i32 %130, i32* %21, align 4
  %131 = load i32, i32* %21, align 4
  %132 = icmp eq i32 %131, 256
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32*, i32** %20, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %20, align 8
  store i32 1, i32* %21, align 4
  br label %136

136:                                              ; preds = %133, %128
  br label %137

137:                                              ; preds = %136, %125
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %16, align 4
  br label %71

141:                                              ; preds = %71
  %142 = load i8*, i8** %19, align 8
  %143 = load i8**, i8*** %13, align 8
  store i8* %142, i8** %143, align 8
  %144 = load i32*, i32** %20, align 8
  %145 = load i32**, i32*** %14, align 8
  store i32* %144, i32** %145, align 8
  %146 = load i32, i32* %21, align 4
  %147 = load i32*, i32** %15, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %63
  %149 = load i32*, i32** %17, align 8
  store i32* %149, i32** %8, align 8
  br label %150

150:                                              ; preds = %148, %31
  %151 = load i32*, i32** %8, align 8
  ret i32* %151
}

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32 @PyList_SET_ITEM(i32*, i32, i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @fetch_att(i8*, i32, i32) #1

declare dso_local i8* @att_addlength_pointer(i8*, i32, i8*) #1

declare dso_local i64 @att_align_nominal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
