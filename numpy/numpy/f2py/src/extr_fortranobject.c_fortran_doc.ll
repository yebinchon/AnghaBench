; ModuleID = '/home/carl/AnghaBench/numpy/numpy/f2py/src/extr_fortranobject.c_fortran_doc.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/f2py/src/extr_fortranobject.c_fortran_doc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s - no docs available\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"'%c'-\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [95 x i8] c"fortranobject.c: fortran_doc: len(p)=%zd>%zd=size: too long docstring required, increase size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*)* @fortran_doc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fortran_doc(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32* null, i32** %5, align 8
  store i32 100, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %13, %1
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @PyMem_Malloc(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %4, align 8
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32* (...) @PyErr_NoMemory()
  store i32* %27, i32** %2, align 8
  br label %196

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %79

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %184

44:                                               ; preds = %36
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @memcpy(i8* %45, i8* %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %78

57:                                               ; preds = %32
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PyOS_snprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %57
  br label %184

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %70, %44
  br label %164

79:                                               ; preds = %28
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.TYPE_7__* @PyArray_DescrFromType(i32 %81)
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %9, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PyOS_snprintf(i8* %83, i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = call i32 @Py_DECREF(%struct.TYPE_7__* %89)
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %79
  br label %184

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = load i8*, i8** %4, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %126

109:                                              ; preds = %98
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @format_def(i8* %110, i32 %111, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0)
  %113 = icmp eq i32 %112, -1
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %184

118:                                              ; preds = %109
  %119 = load i32, i32* %6, align 4
  %120 = load i8*, i8** %4, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %8, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %163

126:                                              ; preds = %98
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %126
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @format_def(i8* %131, i32 %132, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %184

137:                                              ; preds = %130
  %138 = load i32, i32* %6, align 4
  %139 = load i8*, i8** %4, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %8, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %8, align 4
  br label %162

145:                                              ; preds = %126
  %146 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %184

151:                                              ; preds = %145
  %152 = load i8*, i8** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @memcpy(i8* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %6, align 4
  %156 = load i8*, i8** %4, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %8, align 4
  %161 = sub nsw i32 %160, %159
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %151, %137
  br label %163

163:                                              ; preds = %162, %118
  br label %164

164:                                              ; preds = %163, %78
  %165 = load i32, i32* %8, align 4
  %166 = icmp sle i32 %165, 1
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %184

168:                                              ; preds = %164
  %169 = load i8*, i8** %4, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %4, align 8
  store i8 10, i8* %169, align 1
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %8, align 4
  %173 = load i8*, i8** %3, align 8
  %174 = load i8*, i8** %4, align 8
  %175 = load i8*, i8** %3, align 8
  %176 = ptrtoint i8* %174 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = trunc i64 %178 to i32
  %180 = call i32* @PyString_FromStringAndSize(i8* %173, i32 %179)
  store i32* %180, i32** %5, align 8
  %181 = load i8*, i8** %3, align 8
  %182 = call i32 @PyMem_Free(i8* %181)
  %183 = load i32*, i32** %5, align 8
  store i32* %183, i32** %2, align 8
  br label %196

184:                                              ; preds = %167, %150, %136, %117, %97, %69, %43
  %185 = load i32, i32* @stderr, align 4
  %186 = load i8*, i8** %4, align 8
  %187 = load i8*, i8** %3, align 8
  %188 = ptrtoint i8* %186 to i64
  %189 = ptrtoint i8* %187 to i64
  %190 = sub i64 %188, %189
  %191 = trunc i64 %190 to i32
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @fprintf(i32 %185, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0), i32 %191, i32 %192)
  %194 = load i8*, i8** %3, align 8
  %195 = call i32 @PyMem_Free(i8* %194)
  store i32* null, i32** %2, align 8
  br label %196

196:                                              ; preds = %184, %168, %26
  %197 = load i32*, i32** %2, align 8
  ret i32* %197
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @PyMem_Malloc(i32) #1

declare dso_local i32* @PyErr_NoMemory(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @PyOS_snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @PyArray_DescrFromType(i32) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_7__*) #1

declare dso_local i32 @format_def(i8*, i32, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32* @PyString_FromStringAndSize(i8*, i32) #1

declare dso_local i32 @PyMem_Free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
