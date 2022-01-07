; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_getitem.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_getitem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"FA\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"FNC\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"FORC\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"CARRAY\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"FARRAY\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"FORTRAN\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"BEHAVED\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"OWNDATA\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ALIGNED\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"WRITEABLE\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"CONTIGUOUS\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"UPDATEIFCOPY\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"C_CONTIGUOUS\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"F_CONTIGUOUS\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"WRITEBACKIFCOPY\00", align 1
@PyExc_KeyError = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"Unknown flag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @arrayflags_getitem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @arrayflags_getitem(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @PyUnicode_Check(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @PyUnicode_AsASCIIString(i32* %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32* null, i32** %3, align 8
  br label %221

19:                                               ; preds = %13
  %20 = load i32*, i32** %9, align 8
  %21 = call i8* @PyBytes_AS_STRING(i32* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @PyBytes_GET_SIZE(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 16
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @Py_DECREF(i32* %27)
  br label %218

29:                                               ; preds = %19
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @Py_DECREF(i32* %34)
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  store i8* %36, i8** %6, align 8
  br label %48

37:                                               ; preds = %2
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @PyBytes_Check(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = call i8* @PyBytes_AS_STRING(i32* %42)
  store i8* %43, i8** %6, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @PyBytes_GET_SIZE(i32* %44)
  store i32 %45, i32* %8, align 4
  br label %47

46:                                               ; preds = %37
  br label %218

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %217 [
    i32 1, label %50
    i32 2, label %80
    i32 3, label %97
    i32 4, label %106
    i32 6, label %115
    i32 7, label %132
    i32 9, label %165
    i32 10, label %174
    i32 12, label %183
    i32 15, label %208
  ]

50:                                               ; preds = %48
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  switch i32 %54, label %79 [
    i32 67, label %55
    i32 70, label %58
    i32 87, label %61
    i32 66, label %64
    i32 79, label %67
    i32 65, label %70
    i32 88, label %73
    i32 85, label %76
  ]

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = call i32* @arrayflags_contiguous_get(i32* %56)
  store i32* %57, i32** %3, align 8
  br label %221

58:                                               ; preds = %50
  %59 = load i32*, i32** %4, align 8
  %60 = call i32* @arrayflags_fortran_get(i32* %59)
  store i32* %60, i32** %3, align 8
  br label %221

61:                                               ; preds = %50
  %62 = load i32*, i32** %4, align 8
  %63 = call i32* @arrayflags_writeable_get(i32* %62)
  store i32* %63, i32** %3, align 8
  br label %221

64:                                               ; preds = %50
  %65 = load i32*, i32** %4, align 8
  %66 = call i32* @arrayflags_behaved_get(i32* %65)
  store i32* %66, i32** %3, align 8
  br label %221

67:                                               ; preds = %50
  %68 = load i32*, i32** %4, align 8
  %69 = call i32* @arrayflags_owndata_get(i32* %68)
  store i32* %69, i32** %3, align 8
  br label %221

70:                                               ; preds = %50
  %71 = load i32*, i32** %4, align 8
  %72 = call i32* @arrayflags_aligned_get(i32* %71)
  store i32* %72, i32** %3, align 8
  br label %221

73:                                               ; preds = %50
  %74 = load i32*, i32** %4, align 8
  %75 = call i32* @arrayflags_writebackifcopy_get(i32* %74)
  store i32* %75, i32** %3, align 8
  br label %221

76:                                               ; preds = %50
  %77 = load i32*, i32** %4, align 8
  %78 = call i32* @arrayflags_updateifcopy_get(i32* %77)
  store i32* %78, i32** %3, align 8
  br label %221

79:                                               ; preds = %50
  br label %218

80:                                               ; preds = %48
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @strncmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32*, i32** %4, align 8
  %87 = call i32* @arrayflags_carray_get(i32* %86)
  store i32* %87, i32** %3, align 8
  br label %221

88:                                               ; preds = %80
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @strncmp(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32*, i32** %4, align 8
  %95 = call i32* @arrayflags_farray_get(i32* %94)
  store i32* %95, i32** %3, align 8
  br label %221

96:                                               ; preds = %88
  br label %217

97:                                               ; preds = %48
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @strncmp(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32*, i32** %4, align 8
  %104 = call i32* @arrayflags_fnc_get(i32* %103)
  store i32* %104, i32** %3, align 8
  br label %221

105:                                              ; preds = %97
  br label %217

106:                                              ; preds = %48
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @strncmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32*, i32** %4, align 8
  %113 = call i32* @arrayflags_forc_get(i32* %112)
  store i32* %113, i32** %3, align 8
  br label %221

114:                                              ; preds = %106
  br label %217

115:                                              ; preds = %48
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @strncmp(i8* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32*, i32** %4, align 8
  %122 = call i32* @arrayflags_carray_get(i32* %121)
  store i32* %122, i32** %3, align 8
  br label %221

123:                                              ; preds = %115
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @strncmp(i8* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32*, i32** %4, align 8
  %130 = call i32* @arrayflags_farray_get(i32* %129)
  store i32* %130, i32** %3, align 8
  br label %221

131:                                              ; preds = %123
  br label %217

132:                                              ; preds = %48
  %133 = load i8*, i8** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @strncmp(i8* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32*, i32** %4, align 8
  %139 = call i32* @arrayflags_fortran_get(i32* %138)
  store i32* %139, i32** %3, align 8
  br label %221

140:                                              ; preds = %132
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @strncmp(i8* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32*, i32** %4, align 8
  %147 = call i32* @arrayflags_behaved_get(i32* %146)
  store i32* %147, i32** %3, align 8
  br label %221

148:                                              ; preds = %140
  %149 = load i8*, i8** %6, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @strncmp(i8* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %150)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32*, i32** %4, align 8
  %155 = call i32* @arrayflags_owndata_get(i32* %154)
  store i32* %155, i32** %3, align 8
  br label %221

156:                                              ; preds = %148
  %157 = load i8*, i8** %6, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @strncmp(i8* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %158)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32*, i32** %4, align 8
  %163 = call i32* @arrayflags_aligned_get(i32* %162)
  store i32* %163, i32** %3, align 8
  br label %221

164:                                              ; preds = %156
  br label %217

165:                                              ; preds = %48
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @strncmp(i8* %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %167)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32*, i32** %4, align 8
  %172 = call i32* @arrayflags_writeable_get(i32* %171)
  store i32* %172, i32** %3, align 8
  br label %221

173:                                              ; preds = %165
  br label %217

174:                                              ; preds = %48
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @strncmp(i8* %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %176)
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32*, i32** %4, align 8
  %181 = call i32* @arrayflags_contiguous_get(i32* %180)
  store i32* %181, i32** %3, align 8
  br label %221

182:                                              ; preds = %174
  br label %217

183:                                              ; preds = %48
  %184 = load i8*, i8** %6, align 8
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @strncmp(i8* %184, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %185)
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i32*, i32** %4, align 8
  %190 = call i32* @arrayflags_updateifcopy_get(i32* %189)
  store i32* %190, i32** %3, align 8
  br label %221

191:                                              ; preds = %183
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @strncmp(i8* %192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %193)
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i32*, i32** %4, align 8
  %198 = call i32* @arrayflags_contiguous_get(i32* %197)
  store i32* %198, i32** %3, align 8
  br label %221

199:                                              ; preds = %191
  %200 = load i8*, i8** %6, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @strncmp(i8* %200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %201)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32*, i32** %4, align 8
  %206 = call i32* @arrayflags_fortran_get(i32* %205)
  store i32* %206, i32** %3, align 8
  br label %221

207:                                              ; preds = %199
  br label %217

208:                                              ; preds = %48
  %209 = load i8*, i8** %6, align 8
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @strncmp(i8* %209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %210)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load i32*, i32** %4, align 8
  %215 = call i32* @arrayflags_writebackifcopy_get(i32* %214)
  store i32* %215, i32** %3, align 8
  br label %221

216:                                              ; preds = %208
  br label %217

217:                                              ; preds = %48, %216, %207, %182, %173, %164, %131, %114, %105, %96
  br label %218

218:                                              ; preds = %217, %79, %46, %26
  %219 = load i32, i32* @PyExc_KeyError, align 4
  %220 = call i32 @PyErr_SetString(i32 %219, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %221

221:                                              ; preds = %218, %213, %204, %196, %188, %179, %170, %161, %153, %145, %137, %128, %120, %111, %102, %93, %85, %76, %73, %70, %67, %64, %61, %58, %55, %18
  %222 = load i32*, i32** %3, align 8
  ret i32* %222
}

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyUnicode_AsASCIIString(i32*) #1

declare dso_local i8* @PyBytes_AS_STRING(i32*) #1

declare dso_local i32 @PyBytes_GET_SIZE(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @PyBytes_Check(i32*) #1

declare dso_local i32* @arrayflags_contiguous_get(i32*) #1

declare dso_local i32* @arrayflags_fortran_get(i32*) #1

declare dso_local i32* @arrayflags_writeable_get(i32*) #1

declare dso_local i32* @arrayflags_behaved_get(i32*) #1

declare dso_local i32* @arrayflags_owndata_get(i32*) #1

declare dso_local i32* @arrayflags_aligned_get(i32*) #1

declare dso_local i32* @arrayflags_writebackifcopy_get(i32*) #1

declare dso_local i32* @arrayflags_updateifcopy_get(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @arrayflags_carray_get(i32*) #1

declare dso_local i32* @arrayflags_farray_get(i32*) #1

declare dso_local i32* @arrayflags_fnc_get(i32*) #1

declare dso_local i32* @arrayflags_forc_get(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
