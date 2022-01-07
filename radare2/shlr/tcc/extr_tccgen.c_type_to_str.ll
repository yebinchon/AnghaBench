; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_type_to_str.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_type_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }

@VT_TYPE = common dso_local global i32 0, align 4
@VT_BTYPE = common dso_local global i32 0, align 4
@VT_CONSTANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"const \00", align 1
@VT_VOLATILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@VT_UNSIGNED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"uint8_t\00", align 1
@VT_CHAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"int8_t\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"uint16_t\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"int16_t\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"int32_t\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"int64_t\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@SYM_STRUCT = common dso_local global i32 0, align 4
@SYM_FIRST_ANOM = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c")\00", align 1
@VT_ARRAY = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_5__*, i8*)* @type_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @type_to_str(i8* %0, i32 %1, %struct.TYPE_5__* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VT_TYPE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @VT_BTYPE, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @VT_CONSTANT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pstrcat(i8* %31, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @VT_VOLATILE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @pstrcat(i8* %40, i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %225 [
    i32 128, label %45
    i32 142, label %46
    i32 134, label %47
    i32 137, label %62
    i32 136, label %70
    i32 132, label %78
    i32 135, label %79
    i32 139, label %87
    i32 141, label %88
    i32 133, label %89
    i32 140, label %116
    i32 130, label %116
    i32 129, label %116
    i32 138, label %156
    i32 131, label %196
  ]

45:                                               ; preds = %43
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %90

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %90

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @VT_UNSIGNED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  br label %61

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @VT_CHAR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %15, align 8
  br label %60

59:                                               ; preds = %53
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  br label %60

60:                                               ; preds = %59, %58
  br label %61

61:                                               ; preds = %60, %52
  br label %90

62:                                               ; preds = %43
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @VT_UNSIGNED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %15, align 8
  br label %69

68:                                               ; preds = %62
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %15, align 8
  br label %69

69:                                               ; preds = %68, %67
  br label %90

70:                                               ; preds = %43
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @VT_UNSIGNED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %15, align 8
  br label %77

76:                                               ; preds = %70
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %15, align 8
  br label %77

77:                                               ; preds = %76, %75
  br label %90

78:                                               ; preds = %43
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %15, align 8
  br label %90

79:                                               ; preds = %43
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @VT_UNSIGNED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %15, align 8
  br label %86

85:                                               ; preds = %79
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %15, align 8
  br label %86

86:                                               ; preds = %85, %84
  br label %90

87:                                               ; preds = %43
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %15, align 8
  br label %90

88:                                               ; preds = %43
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %15, align 8
  br label %90

89:                                               ; preds = %43
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8** %15, align 8
  br label %90

90:                                               ; preds = %89, %88, %87, %86, %78, %77, %69, %61, %46, %45
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @pstrcat(i8* %91, i32 %92, i8* %93)
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @VT_UNSIGNED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %90
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 134
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 137
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 136
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 135
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @pstrcat(i8* %112, i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %108, %105, %102, %99, %90
  br label %225

116:                                              ; preds = %43, %43, %43
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 130
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %15, align 8
  br label %126

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 129
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8** %15, align 8
  br label %125

124:                                              ; preds = %120
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8** %15, align 8
  br label %125

125:                                              ; preds = %124, %123
  br label %126

126:                                              ; preds = %125, %119
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @pstrcat(i8* %127, i32 %128, i8* %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SYM_STRUCT, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @SYM_FIRST_ANOM, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %126
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @SYM_FIRST_ANOM, align 4
  %147 = sub nsw i32 %145, %146
  %148 = call i32 @strcat_printf(i8* %143, i32 %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 %147)
  br label %155

149:                                              ; preds = %126
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i8* @get_tok_str(i32 %152, i32* null)
  %154 = call i32 @pstrcat(i8* %150, i32 %151, i8* %153)
  br label %155

155:                                              ; preds = %149, %142
  br label %225

156:                                              ; preds = %43
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  store %struct.TYPE_4__* %159, %struct.TYPE_4__** %12, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i8*, i8** %8, align 8
  call void @type_to_str(i8* %160, i32 %161, %struct.TYPE_5__* %163, i8* %164)
  %165 = load i8*, i8** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @pstrcat(i8* %165, i32 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  store %struct.TYPE_4__* %170, %struct.TYPE_4__** %13, align 8
  br label %171

171:                                              ; preds = %191, %156
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %173 = icmp ne %struct.TYPE_4__* %172, null
  br i1 %173, label %174, label %192

174:                                              ; preds = %171
  %175 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  call void @type_to_str(i8* %175, i32 256, %struct.TYPE_5__* %177, i8* null)
  %178 = load i8*, i8** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %181 = call i32 @pstrcat(i8* %178, i32 %179, i8* %180)
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  store %struct.TYPE_4__* %184, %struct.TYPE_4__** %13, align 8
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %186 = icmp ne %struct.TYPE_4__* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %174
  %188 = load i8*, i8** %5, align 8
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @pstrcat(i8* %188, i32 %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  br label %191

191:                                              ; preds = %187, %174
  br label %171

192:                                              ; preds = %171
  %193 = load i8*, i8** %5, align 8
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @pstrcat(i8* %193, i32 %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %237

196:                                              ; preds = %43
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  store %struct.TYPE_4__* %199, %struct.TYPE_4__** %12, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @VT_ARRAY, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %196
  %205 = load i8*, i8** %5, align 8
  %206 = load i32, i32* %6, align 4
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  call void @type_to_str(i8* %205, i32 %206, %struct.TYPE_5__* %208, i8* null)
  br label %224

209:                                              ; preds = %196
  %210 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %211 = call i32 @pstrcpy(i8* %210, i32 256, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %212 = load i8*, i8** %8, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %216 = load i8*, i8** %8, align 8
  %217 = call i32 @pstrcat(i8* %215, i32 256, i8* %216)
  br label %218

218:                                              ; preds = %214, %209
  %219 = load i8*, i8** %5, align 8
  %220 = load i32, i32* %6, align 4
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  call void @type_to_str(i8* %219, i32 %220, %struct.TYPE_5__* %222, i8* %223)
  br label %224

224:                                              ; preds = %218, %204
  br label %237

225:                                              ; preds = %43, %155, %115
  %226 = load i8*, i8** %8, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %236

228:                                              ; preds = %225
  %229 = load i8*, i8** %5, align 8
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @pstrcat(i8* %229, i32 %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %232 = load i8*, i8** %5, align 8
  %233 = load i32, i32* %6, align 4
  %234 = load i8*, i8** %8, align 8
  %235 = call i32 @pstrcat(i8* %232, i32 %233, i8* %234)
  br label %236

236:                                              ; preds = %228, %225
  br label %237

237:                                              ; preds = %236, %224, %192
  ret void
}

declare dso_local i32 @pstrcat(i8*, i32, i8*) #1

declare dso_local i32 @strcat_printf(i8*, i32, i8*, i32) #1

declare dso_local i8* @get_tok_str(i32, i32*) #1

declare dso_local i32 @pstrcpy(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
