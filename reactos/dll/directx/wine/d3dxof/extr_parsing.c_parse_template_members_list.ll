; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_template_members_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_template_members_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, i32, i8*, i32*, i32, i8** }

@FALSE = common dso_local global i8* null, align 8
@TOKEN_ARRAY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@TOKEN_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"indexColor\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Reference to a nonexistent template '%s'\0A\00", align 1
@TOKEN_OBRACKET = common dso_local global i64 0, align 8
@MAX_ARRAY_DIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Too many dimensions (%d) for multi-dimensional array\0A\00", align 1
@TOKEN_INTEGER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"Array cannot be used to specify variable array size\0A\00", align 1
@TOKEN_DWORD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"Only DWORD supported to specify variable array size\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Reference to unknown member %s\0A\00", align 1
@TOKEN_CBRACKET = common dso_local global i64 0, align 8
@TOKEN_SEMICOLON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*)* @parse_template_members_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_template_members_list(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %1, %327
  %10 = load i8*, i8** @FALSE, align 8
  store i8* %10, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %25
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %5, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = call i64 @check_TOKEN(%struct.TYPE_10__* %27)
  %29 = load i64, i64* @TOKEN_ARRAY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %9
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = call i64 @get_TOKEN(%struct.TYPE_10__* %32)
  %34 = load i8*, i8** @TRUE, align 8
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %31, %9
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = call i64 @check_TOKEN(%struct.TYPE_10__* %36)
  %38 = load i64, i64* @TOKEN_NAME, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %113

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = call i64 @get_TOKEN(%struct.TYPE_10__* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  br label %112

54:                                               ; preds = %40
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %88, %54
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %61, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %57
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @_strnicmp(i8* %72, i32 %84, i32 -1)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %68
  br label %93

88:                                               ; preds = %68
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %57

93:                                               ; preds = %87, %57
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %97, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %93
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %108)
  %110 = load i8*, i8** @FALSE, align 8
  store i8* %110, i8** %2, align 8
  br label %345

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %111, %51
  br label %125

113:                                              ; preds = %35
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = call i64 @check_TOKEN(%struct.TYPE_10__* %114)
  %116 = call i64 @is_primitive_type(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = call i64 @get_TOKEN(%struct.TYPE_10__* %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %124

123:                                              ; preds = %113
  br label %330

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %112
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = call i64 @get_TOKEN(%struct.TYPE_10__* %126)
  %128 = load i64, i64* @TOKEN_NAME, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i8*, i8** @FALSE, align 8
  store i8* %131, i8** %2, align 8
  br label %345

132:                                              ; preds = %125
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = call i32 @strcpy(i8* %135, i8* %139)
  %141 = load i8*, i8** %6, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %320

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %308, %143
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %146 = call i64 @check_TOKEN(%struct.TYPE_10__* %145)
  %147 = load i64, i64* @TOKEN_OBRACKET, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %311

149:                                              ; preds = %144
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @MAX_ARRAY_DIM, align 4
  %152 = icmp sge i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  %156 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load i8*, i8** @FALSE, align 8
  store i8* %157, i8** %2, align 8
  br label %345

158:                                              ; preds = %149
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %160 = call i64 @get_TOKEN(%struct.TYPE_10__* %159)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = call i64 @check_TOKEN(%struct.TYPE_10__* %161)
  %163 = load i64, i64* @TOKEN_INTEGER, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %186

165:                                              ; preds = %158
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %167 = call i64 @get_TOKEN(%struct.TYPE_10__* %166)
  %168 = load i8*, i8** @TRUE, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 5
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %168, i8** %174, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  br label %301

186:                                              ; preds = %158
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %188 = call i64 @get_TOKEN(%struct.TYPE_10__* %187)
  %189 = load i64, i64* @TOKEN_NAME, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i8*, i8** @FALSE, align 8
  store i8* %192, i8** %2, align 8
  br label %345

193:                                              ; preds = %186
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %272, %193
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %4, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %275

198:                                              ; preds = %194
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i8*
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @strcmp(i8* %202, i8* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %271, label %223

223:                                              ; preds = %198
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %223
  %244 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %245 = load i8*, i8** @FALSE, align 8
  store i8* %245, i8** %2, align 8
  br label %345

246:                                              ; preds = %223
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @TOKEN_DWORD, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %246
  %268 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %269 = load i8*, i8** @FALSE, align 8
  store i8* %269, i8** %2, align 8
  br label %345

270:                                              ; preds = %246
  br label %275

271:                                              ; preds = %198
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %8, align 4
  br label %194

275:                                              ; preds = %270, %194
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %4, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = inttoptr i64 %282 to i8*
  %284 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %283)
  %285 = load i8*, i8** @FALSE, align 8
  store i8* %285, i8** %2, align 8
  br label %345

286:                                              ; preds = %275
  %287 = load i8*, i8** @FALSE, align 8
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 5
  %290 = load i8**, i8*** %289, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8*, i8** %290, i64 %292
  store i8* %287, i8** %293, align 8
  %294 = load i32, i32* %8, align 4
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 3
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  store i32 %294, i32* %300, align 4
  br label %301

301:                                              ; preds = %286, %165
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %303 = call i64 @get_TOKEN(%struct.TYPE_10__* %302)
  %304 = load i64, i64* @TOKEN_CBRACKET, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = load i8*, i8** @FALSE, align 8
  store i8* %307, i8** %2, align 8
  br label %345

308:                                              ; preds = %301
  %309 = load i32, i32* %7, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %7, align 4
  br label %144

311:                                              ; preds = %144
  %312 = load i32, i32* %7, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  %315 = load i8*, i8** @FALSE, align 8
  store i8* %315, i8** %2, align 8
  br label %345

316:                                              ; preds = %311
  %317 = load i32, i32* %7, align 4
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 4
  store i32 %317, i32* %319, align 8
  br label %320

320:                                              ; preds = %316, %132
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %322 = call i64 @get_TOKEN(%struct.TYPE_10__* %321)
  %323 = load i64, i64* @TOKEN_SEMICOLON, align 8
  %324 = icmp ne i64 %322, %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %320
  %326 = load i8*, i8** @FALSE, align 8
  store i8* %326, i8** %2, align 8
  br label %345

327:                                              ; preds = %320
  %328 = load i32, i32* %4, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %4, align 4
  br label %9

330:                                              ; preds = %123
  %331 = load i32, i32* %4, align 4
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %335, align 8
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 0
  store i32 %331, i32* %343, align 8
  %344 = load i8*, i8** @TRUE, align 8
  store i8* %344, i8** %2, align 8
  br label %345

345:                                              ; preds = %330, %325, %314, %306, %279, %267, %243, %191, %153, %130, %104
  %346 = load i8*, i8** %2, align 8
  ret i8* %346
}

declare dso_local i64 @check_TOKEN(%struct.TYPE_10__*) #1

declare dso_local i64 @get_TOKEN(%struct.TYPE_10__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @_strnicmp(i8*, i32, i32) #1

declare dso_local i32 @WARN(i8*, i8*) #1

declare dso_local i64 @is_primitive_type(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @ERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
