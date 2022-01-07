; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_strfuncs.c_dump_data.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_strfuncs.c_dump_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHECK_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32*, i8*, i32, i32*, i32*, i32*)* @dump_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_data(i8** %0, i32* %1, i32* %2, i8* %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8** %0, i8*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %73

26:                                               ; preds = %8
  %27 = load i32*, i32** %17, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32* @PyArray_GETITEM(i32* %27, i8* %28)
  store i32* %29, i32** %18, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %9, align 4
  br label %191

32:                                               ; preds = %26
  %33 = load i32*, i32** %18, align 8
  %34 = call i32* @PyObject_Repr(i32* %33)
  store i32* %34, i32** %19, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 -1, i32* %23, align 4
  br label %185

38:                                               ; preds = %32
  %39 = load i32*, i32** %19, align 8
  %40 = call i8* @PyString_AsString(i32* %39)
  store i8* %40, i8** %20, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = call i32 @PyString_Size(i32* %41)
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 1
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %22, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load i8**, i8*** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 (i8**, i32, i32*, ...) bitcast (i32 (...)* @extend_str to i32 (i8**, i32, i32*, ...)*)(i8** %51, i32 %53, i32* %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 -1, i32* %23, align 4
  br label %185

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60
  %62 = load i8**, i8*** %10, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %22, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  %70 = load i8*, i8** %20, align 8
  %71 = load i32, i32* %22, align 4
  %72 = call i32 @memmove(i8* %69, i8* %70, i32 %71)
  br label %184

73:                                               ; preds = %8
  br label %74

74:                                               ; preds = %73
  %75 = load i8**, i8*** %10, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 (i8**, i32, i32*, ...) bitcast (i32 (...)* @extend_str to i32 (i8**, i32, i32*, ...)*)(i8** %75, i32 %77, i32* %78)
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 -1, i32* %23, align 4
  br label %185

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84
  %86 = load i8**, i8*** %10, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 91, i8* %91, align 1
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  store i32 0, i32* %21, align 4
  br label %95

95:                                               ; preds = %159, %85
  %96 = load i32, i32* %21, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %162

101:                                              ; preds = %95
  %102 = load i8**, i8*** %10, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %21, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %105, i64 %110
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load i32*, i32** %15, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32*, i32** %16, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32*, i32** %17, align 8
  %119 = call i32 @dump_data(i8** %102, i32* %103, i32* %104, i8* %111, i32 %113, i32* %115, i32* %117, i32* %118)
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %101
  store i32 -1, i32* %9, align 4
  br label %191

122:                                              ; preds = %101
  br label %123

123:                                              ; preds = %122
  %124 = load i8**, i8*** %10, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %12, align 8
  %128 = call i32 (i8**, i32, i32*, ...) bitcast (i32 (...)* @extend_str to i32 (i8**, i32, i32*, ...)*)(i8** %124, i32 %126, i32* %127)
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store i32 -1, i32* %23, align 4
  br label %185

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %21, align 4
  %136 = load i32*, i32** %15, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, 1
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %134
  %142 = load i8**, i8*** %10, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  store i8 44, i8* %147, align 1
  %148 = load i8**, i8*** %10, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  store i8 32, i8* %154, align 1
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 2
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %141, %134
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %21, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %21, align 4
  br label %95

162:                                              ; preds = %95
  br label %163

163:                                              ; preds = %162
  %164 = load i8**, i8*** %10, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 (i8**, i32, i32*, ...) bitcast (i32 (...)* @extend_str to i32 (i8**, i32, i32*, ...)*)(i8** %164, i32 %166, i32* %167)
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  store i32 -1, i32* %23, align 4
  br label %185

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173
  %175 = load i8**, i8*** %10, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  store i8 93, i8* %180, align 1
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %174, %61
  br label %185

185:                                              ; preds = %184, %172, %132, %83, %59, %37
  %186 = load i32*, i32** %18, align 8
  %187 = call i32 @Py_XDECREF(i32* %186)
  %188 = load i32*, i32** %19, align 8
  %189 = call i32 @Py_XDECREF(i32* %188)
  %190 = load i32, i32* %23, align 4
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %185, %121, %31
  %192 = load i32, i32* %9, align 4
  ret i32 %192
}

declare dso_local i32* @PyArray_GETITEM(i32*, i8*) #1

declare dso_local i32* @PyObject_Repr(i32*) #1

declare dso_local i8* @PyString_AsString(i32*) #1

declare dso_local i32 @PyString_Size(i32*) #1

declare dso_local i32 @extend_str(...) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
