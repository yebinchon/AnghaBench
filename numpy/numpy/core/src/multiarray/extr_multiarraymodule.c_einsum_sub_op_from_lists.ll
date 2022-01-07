; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_einsum_sub_op_from_lists.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_einsum_sub_op_from_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"must provide at least an operand and a subscripts list to einsum\00", align 1
@NPY_MAXARGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"too many operands\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"subscripts list is too long\00", align 1
@NPY_ARRAY_ENSUREARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32**)* @einsum_sub_op_from_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @einsum_sub_op_from_lists(i32* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @PyTuple_Size(i32* %17)
  %19 = sdiv i32 %18, 2
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @PyExc_ValueError, align 4
  %25 = call i32 @PyErr_SetString(i32 %24, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %185

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @NPY_MAXARGS, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @PyExc_ValueError, align 4
  %32 = call i32 @PyErr_SetString(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %185

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %43, %34
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32**, i32*** %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %11, align 8
  br label %35

46:                                               ; preds = %35
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %109, %46
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %112

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = mul i64 2, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32* @PyTuple_GET_ITEM(i32* %52, i32 %55)
  store i32* %56, i32** %13, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %51
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 44, i8* %64, align 1
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @PyExc_ValueError, align 4
  %70 = call i32 @PyErr_SetString(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %167

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* @NPY_ARRAY_ENSUREARRAY, align 4
  %75 = call i64 @PyArray_FROM_OF(i32* %73, i32 %74)
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32**, i32*** %9, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  store i32* %76, i32** %79, align 8
  %80 = load i32**, i32*** %9, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i32*, i32** %80, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %167

86:                                               ; preds = %72
  %87 = load i32*, i32** %6, align 8
  %88 = load i64, i64* %11, align 8
  %89 = mul i64 2, %88
  %90 = add i64 %89, 1
  %91 = trunc i64 %90 to i32
  %92 = call i32* @PyTuple_GET_ITEM(i32* %87, i32 %91)
  store i32* %92, i32** %13, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %98, %99
  %101 = call i32 @einsum_list_to_subscripts(i32* %93, i8* %97, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %86
  br label %167

105:                                              ; preds = %86
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %11, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %11, align 8
  br label %47

112:                                              ; preds = %47
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @PyTuple_Size(i32* %113)
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %12, align 8
  %117 = mul i64 2, %116
  %118 = add i64 %117, 1
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %160

120:                                              ; preds = %112
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 2
  %123 = load i32, i32* %8, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @PyExc_ValueError, align 4
  %127 = call i32 @PyErr_SetString(i32 %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %167

128:                                              ; preds = %120
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 45, i8* %133, align 1
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 62, i8* %138, align 1
  %139 = load i32*, i32** %6, align 8
  %140 = load i64, i64* %12, align 8
  %141 = mul i64 2, %140
  %142 = trunc i64 %141 to i32
  %143 = call i32* @PyTuple_GET_ITEM(i32* %139, i32 %142)
  store i32* %143, i32** %15, align 8
  %144 = load i32*, i32** %15, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %10, align 4
  %151 = sub nsw i32 %149, %150
  %152 = call i32 @einsum_list_to_subscripts(i32* %144, i8* %148, i32 %151)
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %128
  br label %167

156:                                              ; preds = %128
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %156, %112
  %161 = load i8*, i8** %7, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  store i8 0, i8* %164, align 1
  %165 = load i64, i64* %12, align 8
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %5, align 4
  br label %185

167:                                              ; preds = %155, %125, %104, %85, %68
  store i64 0, i64* %11, align 8
  br label %168

168:                                              ; preds = %181, %167
  %169 = load i64, i64* %11, align 8
  %170 = load i64, i64* %12, align 8
  %171 = icmp ult i64 %169, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = load i32**, i32*** %9, align 8
  %174 = load i64, i64* %11, align 8
  %175 = getelementptr inbounds i32*, i32** %173, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @Py_XDECREF(i32* %176)
  %178 = load i32**, i32*** %9, align 8
  %179 = load i64, i64* %11, align 8
  %180 = getelementptr inbounds i32*, i32** %178, i64 %179
  store i32* null, i32** %180, align 8
  br label %181

181:                                              ; preds = %172
  %182 = load i64, i64* %11, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %11, align 8
  br label %168

184:                                              ; preds = %168
  store i32 -1, i32* %5, align 4
  br label %185

185:                                              ; preds = %184, %160, %30, %23
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @PyTuple_Size(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i64 @PyArray_FROM_OF(i32*, i32) #1

declare dso_local i32 @einsum_list_to_subscripts(i32*, i8*, i32) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
