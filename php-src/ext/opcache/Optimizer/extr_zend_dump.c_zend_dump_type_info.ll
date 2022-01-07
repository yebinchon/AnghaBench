; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_type_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_type_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" [\00", align 1
@MAY_BE_UNDEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@MAY_BE_REF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@ZEND_DUMP_RC_INFERENCE = common dso_local global i32 0, align 4
@MAY_BE_RC1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"rc1\00", align 1
@MAY_BE_RCN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"rcn\00", align 1
@MAY_BE_CLASS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c" (instanceof %s)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@MAY_BE_ANY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@MAY_BE_NULL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@MAY_BE_FALSE = common dso_local global i32 0, align 4
@MAY_BE_TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@MAY_BE_LONG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@MAY_BE_DOUBLE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@MAY_BE_STRING = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@MAY_BE_ARRAY = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@MAY_BE_ARRAY_KEY_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_KEY_LONG = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_KEY_STRING = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@MAY_BE_ARRAY_OF_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_REF = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c" of [\00", align 1
@MAY_BE_ARRAY_OF_NULL = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_FALSE = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_TRUE = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_LONG = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_DOUBLE = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_STRING = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_ARRAY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_OBJECT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@MAY_BE_ARRAY_OF_RESOURCE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@MAY_BE_OBJECT = common dso_local global i32 0, align 4
@MAY_BE_RESOURCE = common dso_local global i32 0, align 4
@MAY_BE_IN_REG = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*, i32, i32)* @zend_dump_type_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_dump_type_info(i32 %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAY_BE_UNDEF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %21
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MAY_BE_REF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %28
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @ZEND_DUMP_RC_INFERENCE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MAY_BE_RC1, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %48
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @MAY_BE_RCN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %71
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %63
  br label %79

79:                                               ; preds = %78, %43
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @MAY_BE_CLASS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %117

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %9, align 4
  br label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %87
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = icmp ne %struct.TYPE_5__* %94, null
  br i1 %95, label %96, label %116

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i32, i32* @stderr, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %105)
  br label %115

107:                                              ; preds = %96
  %108 = load i32, i32* @stderr, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %107, %99
  br label %116

116:                                              ; preds = %115, %91
  br label %540

117:                                              ; preds = %79
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @MAY_BE_ANY, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @MAY_BE_ANY, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 0, i32* %9, align 4
  br label %130

127:                                              ; preds = %123
  %128 = load i32, i32* @stderr, align 4
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %126
  %131 = load i32, i32* @stderr, align 4
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %539

133:                                              ; preds = %117
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @MAY_BE_NULL, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 0, i32* %9, align 4
  br label %145

142:                                              ; preds = %138
  %143 = load i32, i32* @stderr, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %141
  %146 = load i32, i32* @stderr, align 4
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %133
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @MAY_BE_FALSE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %148
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @MAY_BE_TRUE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* %9, align 4
  br label %165

162:                                              ; preds = %158
  %163 = load i32, i32* @stderr, align 4
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %161
  %166 = load i32, i32* @stderr, align 4
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %200

168:                                              ; preds = %153, %148
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @MAY_BE_FALSE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 0, i32* %9, align 4
  br label %180

177:                                              ; preds = %173
  %178 = load i32, i32* @stderr, align 4
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %176
  %181 = load i32, i32* @stderr, align 4
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %199

183:                                              ; preds = %168
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @MAY_BE_TRUE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store i32 0, i32* %9, align 4
  br label %195

192:                                              ; preds = %188
  %193 = load i32, i32* @stderr, align 4
  %194 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %195

195:                                              ; preds = %192, %191
  %196 = load i32, i32* @stderr, align 4
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %198

198:                                              ; preds = %195, %183
  br label %199

199:                                              ; preds = %198, %180
  br label %200

200:                                              ; preds = %199, %165
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @MAY_BE_LONG, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %200
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 0, i32* %9, align 4
  br label %212

209:                                              ; preds = %205
  %210 = load i32, i32* @stderr, align 4
  %211 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %208
  %213 = load i32, i32* @stderr, align 4
  %214 = call i32 (i32, i8*, ...) @fprintf(i32 %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %200
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* @MAY_BE_DOUBLE, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %215
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i32 0, i32* %9, align 4
  br label %227

224:                                              ; preds = %220
  %225 = load i32, i32* @stderr, align 4
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %225, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %223
  %228 = load i32, i32* @stderr, align 4
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %230

230:                                              ; preds = %227, %215
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @MAY_BE_STRING, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %230
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 0, i32* %9, align 4
  br label %242

239:                                              ; preds = %235
  %240 = load i32, i32* @stderr, align 4
  %241 = call i32 (i32, i8*, ...) @fprintf(i32 %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %242

242:                                              ; preds = %239, %238
  %243 = load i32, i32* @stderr, align 4
  %244 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %230
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* @MAY_BE_ARRAY, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %485

250:                                              ; preds = %245
  %251 = load i32, i32* %9, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  store i32 0, i32* %9, align 4
  br label %257

254:                                              ; preds = %250
  %255 = load i32, i32* @stderr, align 4
  %256 = call i32 (i32, i8*, ...) @fprintf(i32 %255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %253
  %258 = load i32, i32* @stderr, align 4
  %259 = call i32 (i32, i8*, ...) @fprintf(i32 %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %305

264:                                              ; preds = %257
  %265 = load i32, i32* %5, align 4
  %266 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %267 = and i32 %265, %266
  %268 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %305

270:                                              ; preds = %264
  store i32 1, i32* %10, align 4
  %271 = load i32, i32* @stderr, align 4
  %272 = call i32 (i32, i8*, ...) @fprintf(i32 %271, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %273 = load i32, i32* %5, align 4
  %274 = load i32, i32* @MAY_BE_ARRAY_KEY_LONG, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %270
  %278 = load i32, i32* %10, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  store i32 0, i32* %10, align 4
  br label %284

281:                                              ; preds = %277
  %282 = load i32, i32* @stderr, align 4
  %283 = call i32 (i32, i8*, ...) @fprintf(i32 %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %284

284:                                              ; preds = %281, %280
  %285 = load i32, i32* @stderr, align 4
  %286 = call i32 (i32, i8*, ...) @fprintf(i32 %285, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %287

287:                                              ; preds = %284, %270
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* @MAY_BE_ARRAY_KEY_STRING, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %302

292:                                              ; preds = %287
  %293 = load i32, i32* %10, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %292
  store i32 0, i32* %10, align 4
  br label %299

296:                                              ; preds = %292
  %297 = load i32, i32* @stderr, align 4
  %298 = call i32 (i32, i8*, ...) @fprintf(i32 %297, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %299

299:                                              ; preds = %296, %295
  %300 = load i32, i32* @stderr, align 4
  %301 = call i32 (i32, i8*, ...) @fprintf(i32 %300, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %302

302:                                              ; preds = %299, %287
  %303 = load i32, i32* @stderr, align 4
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %303, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %305

305:                                              ; preds = %302, %264, %257
  %306 = load i32, i32* %5, align 4
  %307 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %308 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %309 = or i32 %307, %308
  %310 = and i32 %306, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %484

312:                                              ; preds = %305
  store i32 1, i32* %11, align 4
  %313 = load i32, i32* @stderr, align 4
  %314 = call i32 (i32, i8*, ...) @fprintf(i32 %313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %315 = load i32, i32* %5, align 4
  %316 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %317 = and i32 %315, %316
  %318 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %330

320:                                              ; preds = %312
  %321 = load i32, i32* %11, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  store i32 0, i32* %11, align 4
  br label %327

324:                                              ; preds = %320
  %325 = load i32, i32* @stderr, align 4
  %326 = call i32 (i32, i8*, ...) @fprintf(i32 %325, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %327

327:                                              ; preds = %324, %323
  %328 = load i32, i32* @stderr, align 4
  %329 = call i32 (i32, i8*, ...) @fprintf(i32 %328, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %466

330:                                              ; preds = %312
  %331 = load i32, i32* %5, align 4
  %332 = load i32, i32* @MAY_BE_ARRAY_OF_NULL, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %345

335:                                              ; preds = %330
  %336 = load i32, i32* %11, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  store i32 0, i32* %11, align 4
  br label %342

339:                                              ; preds = %335
  %340 = load i32, i32* @stderr, align 4
  %341 = call i32 (i32, i8*, ...) @fprintf(i32 %340, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %342

342:                                              ; preds = %339, %338
  %343 = load i32, i32* @stderr, align 4
  %344 = call i32 (i32, i8*, ...) @fprintf(i32 %343, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %345

345:                                              ; preds = %342, %330
  %346 = load i32, i32* %5, align 4
  %347 = load i32, i32* @MAY_BE_ARRAY_OF_FALSE, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %360

350:                                              ; preds = %345
  %351 = load i32, i32* %11, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  store i32 0, i32* %11, align 4
  br label %357

354:                                              ; preds = %350
  %355 = load i32, i32* @stderr, align 4
  %356 = call i32 (i32, i8*, ...) @fprintf(i32 %355, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %357

357:                                              ; preds = %354, %353
  %358 = load i32, i32* @stderr, align 4
  %359 = call i32 (i32, i8*, ...) @fprintf(i32 %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %360

360:                                              ; preds = %357, %345
  %361 = load i32, i32* %5, align 4
  %362 = load i32, i32* @MAY_BE_ARRAY_OF_TRUE, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %360
  %366 = load i32, i32* %11, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %365
  store i32 0, i32* %11, align 4
  br label %372

369:                                              ; preds = %365
  %370 = load i32, i32* @stderr, align 4
  %371 = call i32 (i32, i8*, ...) @fprintf(i32 %370, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %372

372:                                              ; preds = %369, %368
  %373 = load i32, i32* @stderr, align 4
  %374 = call i32 (i32, i8*, ...) @fprintf(i32 %373, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %375

375:                                              ; preds = %372, %360
  %376 = load i32, i32* %5, align 4
  %377 = load i32, i32* @MAY_BE_ARRAY_OF_LONG, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %390

380:                                              ; preds = %375
  %381 = load i32, i32* %11, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %380
  store i32 0, i32* %11, align 4
  br label %387

384:                                              ; preds = %380
  %385 = load i32, i32* @stderr, align 4
  %386 = call i32 (i32, i8*, ...) @fprintf(i32 %385, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %387

387:                                              ; preds = %384, %383
  %388 = load i32, i32* @stderr, align 4
  %389 = call i32 (i32, i8*, ...) @fprintf(i32 %388, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %390

390:                                              ; preds = %387, %375
  %391 = load i32, i32* %5, align 4
  %392 = load i32, i32* @MAY_BE_ARRAY_OF_DOUBLE, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %405

395:                                              ; preds = %390
  %396 = load i32, i32* %11, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %395
  store i32 0, i32* %11, align 4
  br label %402

399:                                              ; preds = %395
  %400 = load i32, i32* @stderr, align 4
  %401 = call i32 (i32, i8*, ...) @fprintf(i32 %400, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %402

402:                                              ; preds = %399, %398
  %403 = load i32, i32* @stderr, align 4
  %404 = call i32 (i32, i8*, ...) @fprintf(i32 %403, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %405

405:                                              ; preds = %402, %390
  %406 = load i32, i32* %5, align 4
  %407 = load i32, i32* @MAY_BE_ARRAY_OF_STRING, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %420

410:                                              ; preds = %405
  %411 = load i32, i32* %11, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  store i32 0, i32* %11, align 4
  br label %417

414:                                              ; preds = %410
  %415 = load i32, i32* @stderr, align 4
  %416 = call i32 (i32, i8*, ...) @fprintf(i32 %415, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %417

417:                                              ; preds = %414, %413
  %418 = load i32, i32* @stderr, align 4
  %419 = call i32 (i32, i8*, ...) @fprintf(i32 %418, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %420

420:                                              ; preds = %417, %405
  %421 = load i32, i32* %5, align 4
  %422 = load i32, i32* @MAY_BE_ARRAY_OF_ARRAY, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %435

425:                                              ; preds = %420
  %426 = load i32, i32* %11, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %425
  store i32 0, i32* %11, align 4
  br label %432

429:                                              ; preds = %425
  %430 = load i32, i32* @stderr, align 4
  %431 = call i32 (i32, i8*, ...) @fprintf(i32 %430, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %432

432:                                              ; preds = %429, %428
  %433 = load i32, i32* @stderr, align 4
  %434 = call i32 (i32, i8*, ...) @fprintf(i32 %433, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %435

435:                                              ; preds = %432, %420
  %436 = load i32, i32* %5, align 4
  %437 = load i32, i32* @MAY_BE_ARRAY_OF_OBJECT, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %450

440:                                              ; preds = %435
  %441 = load i32, i32* %11, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %440
  store i32 0, i32* %11, align 4
  br label %447

444:                                              ; preds = %440
  %445 = load i32, i32* @stderr, align 4
  %446 = call i32 (i32, i8*, ...) @fprintf(i32 %445, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %447

447:                                              ; preds = %444, %443
  %448 = load i32, i32* @stderr, align 4
  %449 = call i32 (i32, i8*, ...) @fprintf(i32 %448, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  br label %450

450:                                              ; preds = %447, %435
  %451 = load i32, i32* %5, align 4
  %452 = load i32, i32* @MAY_BE_ARRAY_OF_RESOURCE, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %465

455:                                              ; preds = %450
  %456 = load i32, i32* %11, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %455
  store i32 0, i32* %11, align 4
  br label %462

459:                                              ; preds = %455
  %460 = load i32, i32* @stderr, align 4
  %461 = call i32 (i32, i8*, ...) @fprintf(i32 %460, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %462

462:                                              ; preds = %459, %458
  %463 = load i32, i32* @stderr, align 4
  %464 = call i32 (i32, i8*, ...) @fprintf(i32 %463, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %465

465:                                              ; preds = %462, %450
  br label %466

466:                                              ; preds = %465, %327
  %467 = load i32, i32* %5, align 4
  %468 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %469 = and i32 %467, %468
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %481

471:                                              ; preds = %466
  %472 = load i32, i32* %11, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %475

474:                                              ; preds = %471
  store i32 0, i32* %11, align 4
  br label %478

475:                                              ; preds = %471
  %476 = load i32, i32* @stderr, align 4
  %477 = call i32 (i32, i8*, ...) @fprintf(i32 %476, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %478

478:                                              ; preds = %475, %474
  %479 = load i32, i32* @stderr, align 4
  %480 = call i32 (i32, i8*, ...) @fprintf(i32 %479, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %481

481:                                              ; preds = %478, %466
  %482 = load i32, i32* @stderr, align 4
  %483 = call i32 (i32, i8*, ...) @fprintf(i32 %482, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %484

484:                                              ; preds = %481, %305
  br label %485

485:                                              ; preds = %484, %245
  %486 = load i32, i32* %5, align 4
  %487 = load i32, i32* @MAY_BE_OBJECT, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %523

490:                                              ; preds = %485
  %491 = load i32, i32* %9, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %494

493:                                              ; preds = %490
  store i32 0, i32* %9, align 4
  br label %497

494:                                              ; preds = %490
  %495 = load i32, i32* @stderr, align 4
  %496 = call i32 (i32, i8*, ...) @fprintf(i32 %495, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %497

497:                                              ; preds = %494, %493
  %498 = load i32, i32* @stderr, align 4
  %499 = call i32 (i32, i8*, ...) @fprintf(i32 %498, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %500 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %501 = icmp ne %struct.TYPE_5__* %500, null
  br i1 %501, label %502, label %522

502:                                              ; preds = %497
  %503 = load i32, i32* %7, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %513

505:                                              ; preds = %502
  %506 = load i32, i32* @stderr, align 4
  %507 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %507, i32 0, i32 0
  %509 = load %struct.TYPE_4__*, %struct.TYPE_4__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %509, i32 0, i32 0
  %511 = load i8*, i8** %510, align 8
  %512 = call i32 (i32, i8*, ...) @fprintf(i32 %506, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %511)
  br label %521

513:                                              ; preds = %502
  %514 = load i32, i32* @stderr, align 4
  %515 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %515, i32 0, i32 0
  %517 = load %struct.TYPE_4__*, %struct.TYPE_4__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %517, i32 0, i32 0
  %519 = load i8*, i8** %518, align 8
  %520 = call i32 (i32, i8*, ...) @fprintf(i32 %514, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %519)
  br label %521

521:                                              ; preds = %513, %505
  br label %522

522:                                              ; preds = %521, %497
  br label %523

523:                                              ; preds = %522, %485
  %524 = load i32, i32* %5, align 4
  %525 = load i32, i32* @MAY_BE_RESOURCE, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %538

528:                                              ; preds = %523
  %529 = load i32, i32* %9, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %528
  store i32 0, i32* %9, align 4
  br label %535

532:                                              ; preds = %528
  %533 = load i32, i32* @stderr, align 4
  %534 = call i32 (i32, i8*, ...) @fprintf(i32 %533, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %535

535:                                              ; preds = %532, %531
  %536 = load i32, i32* @stderr, align 4
  %537 = call i32 (i32, i8*, ...) @fprintf(i32 %536, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %538

538:                                              ; preds = %535, %523
  br label %539

539:                                              ; preds = %538, %130
  br label %540

540:                                              ; preds = %539, %116
  %541 = load i32, i32* %5, align 4
  %542 = load i32, i32* @MAY_BE_IN_REG, align 4
  %543 = and i32 %541, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %555

545:                                              ; preds = %540
  %546 = load i32, i32* %9, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %545
  store i32 0, i32* %9, align 4
  br label %552

549:                                              ; preds = %545
  %550 = load i32, i32* @stderr, align 4
  %551 = call i32 (i32, i8*, ...) @fprintf(i32 %550, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %552

552:                                              ; preds = %549, %548
  %553 = load i32, i32* @stderr, align 4
  %554 = call i32 (i32, i8*, ...) @fprintf(i32 %553, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %555

555:                                              ; preds = %552, %540
  %556 = load i32, i32* @stderr, align 4
  %557 = call i32 (i32, i8*, ...) @fprintf(i32 %556, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
