; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_transformColumnRef.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_transformColumnRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32* (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*)*, i32, {}* }
%struct.TYPE_18__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"cannot use column reference in DEFAULT expression\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"cannot use column reference in partition bound expression\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@String = common dso_local global i32 0, align 4
@A_Star = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@ERRCODE_AMBIGUOUS_COLUMN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"column reference \22%s\22 is ambiguous\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"cross-database references are not implemented: %s\00", align 1
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"improper qualified name (too many dotted names): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*, %struct.TYPE_18__*)* @transformColumnRef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transformColumnRef(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %36 [
    i32 147, label %29
    i32 144, label %31
    i32 150, label %31
    i32 149, label %31
    i32 158, label %31
    i32 159, label %31
    i32 133, label %31
    i32 141, label %31
    i32 154, label %31
    i32 160, label %31
    i32 128, label %31
    i32 129, label %31
    i32 131, label %31
    i32 130, label %31
    i32 132, label %31
    i32 139, label %31
    i32 151, label %31
    i32 137, label %31
    i32 136, label %31
    i32 155, label %31
    i32 145, label %31
    i32 163, label %31
    i32 148, label %31
    i32 146, label %31
    i32 140, label %31
    i32 135, label %31
    i32 134, label %31
    i32 166, label %31
    i32 162, label %31
    i32 157, label %31
    i32 153, label %31
    i32 152, label %31
    i32 168, label %31
    i32 161, label %31
    i32 138, label %31
    i32 142, label %31
    i32 167, label %31
    i32 164, label %31
    i32 156, label %31
    i32 165, label %32
    i32 143, label %34
  ]

29:                                               ; preds = %2
  %30 = call i32 @Assert(i32 0)
  br label %36

31:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %36

32:                                               ; preds = %2
  %33 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %13, align 8
  br label %36

34:                                               ; preds = %2
  %35 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %13, align 8
  br label %36

36:                                               ; preds = %2, %34, %32, %31, %29
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @errmsg_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @parser_errposition(%struct.TYPE_17__* %45, i32 %48)
  %50 = call i32 @ereport(i32 %40, i32 %49)
  br label %51

51:                                               ; preds = %39, %36
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  %54 = bitcast {}** %53 to i32* (%struct.TYPE_17__*, %struct.TYPE_18__*)**
  %55 = load i32* (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32* (%struct.TYPE_17__*, %struct.TYPE_18__*)** %54, align 8
  %56 = icmp ne i32* (%struct.TYPE_17__*, %struct.TYPE_18__*)* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  %60 = bitcast {}** %59 to i32* (%struct.TYPE_17__*, %struct.TYPE_18__*)**
  %61 = load i32* (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32* (%struct.TYPE_17__*, %struct.TYPE_18__*)** %60, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = call i32* %61(%struct.TYPE_17__* %62, %struct.TYPE_18__* %63)
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32*, i32** %6, align 8
  store i32* %68, i32** %3, align 8
  br label %474

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %51
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @list_length(i32 %73)
  switch i32 %74, label %381 [
    i32 1, label %75
    i32 2, label %113
    i32 3, label %189
    i32 4, label %276
  ]

75:                                               ; preds = %70
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @linitial(i32 %78)
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* @String, align 4
  %83 = call i32 @IsA(i32* %81, i32 %82)
  %84 = call i32 @Assert(i32 %83)
  %85 = load i32*, i32** %14, align 8
  %86 = call i8* @strVal(i32* %85)
  store i8* %86, i8** %9, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32* @colNameToVar(%struct.TYPE_17__* %87, i8* %88, i32 0, i32 %91)
  store i32* %92, i32** %6, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %75
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32* @refnameRangeTblEntry(%struct.TYPE_17__* %96, i8* null, i8* %97, i32 %100, i32* %11)
  store i32* %101, i32** %10, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32* @transformWholeRowRef(%struct.TYPE_17__* %105, i32* %106, i32 %109)
  store i32* %110, i32** %6, align 8
  br label %111

111:                                              ; preds = %104, %95
  br label %112

112:                                              ; preds = %111, %75
  br label %382

113:                                              ; preds = %70
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @linitial(i32 %116)
  %118 = inttoptr i64 %117 to i32*
  store i32* %118, i32** %15, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @lsecond(i32 %121)
  %123 = inttoptr i64 %122 to i32*
  store i32* %123, i32** %16, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = load i32, i32* @String, align 4
  %126 = call i32 @IsA(i32* %124, i32 %125)
  %127 = call i32 @Assert(i32 %126)
  %128 = load i32*, i32** %15, align 8
  %129 = call i8* @strVal(i32* %128)
  store i8* %129, i8** %8, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32* @refnameRangeTblEntry(%struct.TYPE_17__* %130, i8* %131, i8* %132, i32 %135, i32* %11)
  store i32* %136, i32** %10, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %113
  store i32 1, i32* %12, align 4
  br label %382

140:                                              ; preds = %113
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* @A_Star, align 4
  %143 = call i32 @IsA(i32* %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32* @transformWholeRowRef(%struct.TYPE_17__* %146, i32* %147, i32 %150)
  store i32* %151, i32** %6, align 8
  br label %382

152:                                              ; preds = %140
  %153 = load i32*, i32** %16, align 8
  %154 = load i32, i32* @String, align 4
  %155 = call i32 @IsA(i32* %153, i32 %154)
  %156 = call i32 @Assert(i32 %155)
  %157 = load i32*, i32** %16, align 8
  %158 = call i8* @strVal(i32* %157)
  store i8* %158, i8** %9, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32* @scanRTEForColumn(%struct.TYPE_17__* %159, i32* %160, i8* %161, i32 %164, i32 0, i32* null)
  store i32* %165, i32** %6, align 8
  %166 = load i32*, i32** %6, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %188

168:                                              ; preds = %152
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32* @transformWholeRowRef(%struct.TYPE_17__* %169, i32* %170, i32 %173)
  store i32* %174, i32** %6, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = call i32* @makeString(i8* %176)
  %178 = call i32 @list_make1(i32* %177)
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 @list_make1(i32* %179)
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32* @ParseFuncOrColumn(%struct.TYPE_17__* %175, i32 %178, i32 %180, i32 %183, i32* null, i32 0, i32 %186)
  store i32* %187, i32** %6, align 8
  br label %188

188:                                              ; preds = %168, %152
  br label %382

189:                                              ; preds = %70
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @linitial(i32 %192)
  %194 = inttoptr i64 %193 to i32*
  store i32* %194, i32** %17, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @lsecond(i32 %197)
  %199 = inttoptr i64 %198 to i32*
  store i32* %199, i32** %18, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @lthird(i32 %202)
  %204 = inttoptr i64 %203 to i32*
  store i32* %204, i32** %19, align 8
  %205 = load i32*, i32** %17, align 8
  %206 = load i32, i32* @String, align 4
  %207 = call i32 @IsA(i32* %205, i32 %206)
  %208 = call i32 @Assert(i32 %207)
  %209 = load i32*, i32** %17, align 8
  %210 = call i8* @strVal(i32* %209)
  store i8* %210, i8** %7, align 8
  %211 = load i32*, i32** %18, align 8
  %212 = load i32, i32* @String, align 4
  %213 = call i32 @IsA(i32* %211, i32 %212)
  %214 = call i32 @Assert(i32 %213)
  %215 = load i32*, i32** %18, align 8
  %216 = call i8* @strVal(i32* %215)
  store i8* %216, i8** %8, align 8
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %218 = load i8*, i8** %7, align 8
  %219 = load i8*, i8** %8, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32* @refnameRangeTblEntry(%struct.TYPE_17__* %217, i8* %218, i8* %219, i32 %222, i32* %11)
  store i32* %223, i32** %10, align 8
  %224 = load i32*, i32** %10, align 8
  %225 = icmp eq i32* %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %189
  store i32 1, i32* %12, align 4
  br label %382

227:                                              ; preds = %189
  %228 = load i32*, i32** %19, align 8
  %229 = load i32, i32* @A_Star, align 4
  %230 = call i32 @IsA(i32* %228, i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %234 = load i32*, i32** %10, align 8
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32* @transformWholeRowRef(%struct.TYPE_17__* %233, i32* %234, i32 %237)
  store i32* %238, i32** %6, align 8
  br label %382

239:                                              ; preds = %227
  %240 = load i32*, i32** %19, align 8
  %241 = load i32, i32* @String, align 4
  %242 = call i32 @IsA(i32* %240, i32 %241)
  %243 = call i32 @Assert(i32 %242)
  %244 = load i32*, i32** %19, align 8
  %245 = call i8* @strVal(i32* %244)
  store i8* %245, i8** %9, align 8
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %247 = load i32*, i32** %10, align 8
  %248 = load i8*, i8** %9, align 8
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32* @scanRTEForColumn(%struct.TYPE_17__* %246, i32* %247, i8* %248, i32 %251, i32 0, i32* null)
  store i32* %252, i32** %6, align 8
  %253 = load i32*, i32** %6, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %275

255:                                              ; preds = %239
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %257 = load i32*, i32** %10, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32* @transformWholeRowRef(%struct.TYPE_17__* %256, i32* %257, i32 %260)
  store i32* %261, i32** %6, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %263 = load i8*, i8** %9, align 8
  %264 = call i32* @makeString(i8* %263)
  %265 = call i32 @list_make1(i32* %264)
  %266 = load i32*, i32** %6, align 8
  %267 = call i32 @list_make1(i32* %266)
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32* @ParseFuncOrColumn(%struct.TYPE_17__* %262, i32 %265, i32 %267, i32 %270, i32* null, i32 0, i32 %273)
  store i32* %274, i32** %6, align 8
  br label %275

275:                                              ; preds = %255, %239
  br label %382

276:                                              ; preds = %70
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @linitial(i32 %279)
  %281 = inttoptr i64 %280 to i32*
  store i32* %281, i32** %20, align 8
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i64 @lsecond(i32 %284)
  %286 = inttoptr i64 %285 to i32*
  store i32* %286, i32** %21, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call i64 @lthird(i32 %289)
  %291 = inttoptr i64 %290 to i32*
  store i32* %291, i32** %22, align 8
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i64 @lfourth(i32 %294)
  %296 = inttoptr i64 %295 to i32*
  store i32* %296, i32** %23, align 8
  %297 = load i32*, i32** %20, align 8
  %298 = load i32, i32* @String, align 4
  %299 = call i32 @IsA(i32* %297, i32 %298)
  %300 = call i32 @Assert(i32 %299)
  %301 = load i32*, i32** %20, align 8
  %302 = call i8* @strVal(i32* %301)
  store i8* %302, i8** %24, align 8
  %303 = load i32*, i32** %21, align 8
  %304 = load i32, i32* @String, align 4
  %305 = call i32 @IsA(i32* %303, i32 %304)
  %306 = call i32 @Assert(i32 %305)
  %307 = load i32*, i32** %21, align 8
  %308 = call i8* @strVal(i32* %307)
  store i8* %308, i8** %7, align 8
  %309 = load i32*, i32** %22, align 8
  %310 = load i32, i32* @String, align 4
  %311 = call i32 @IsA(i32* %309, i32 %310)
  %312 = call i32 @Assert(i32 %311)
  %313 = load i32*, i32** %22, align 8
  %314 = call i8* @strVal(i32* %313)
  store i8* %314, i8** %8, align 8
  %315 = load i8*, i8** %24, align 8
  %316 = load i32, i32* @MyDatabaseId, align 4
  %317 = call i32 @get_database_name(i32 %316)
  %318 = call i32 @strcmp(i8* %315, i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %276
  store i32 2, i32* %12, align 4
  br label %382

321:                                              ; preds = %276
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %323 = load i8*, i8** %7, align 8
  %324 = load i8*, i8** %8, align 8
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32* @refnameRangeTblEntry(%struct.TYPE_17__* %322, i8* %323, i8* %324, i32 %327, i32* %11)
  store i32* %328, i32** %10, align 8
  %329 = load i32*, i32** %10, align 8
  %330 = icmp eq i32* %329, null
  br i1 %330, label %331, label %332

331:                                              ; preds = %321
  store i32 1, i32* %12, align 4
  br label %382

332:                                              ; preds = %321
  %333 = load i32*, i32** %23, align 8
  %334 = load i32, i32* @A_Star, align 4
  %335 = call i32 @IsA(i32* %333, i32 %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %332
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %339 = load i32*, i32** %10, align 8
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i32* @transformWholeRowRef(%struct.TYPE_17__* %338, i32* %339, i32 %342)
  store i32* %343, i32** %6, align 8
  br label %382

344:                                              ; preds = %332
  %345 = load i32*, i32** %23, align 8
  %346 = load i32, i32* @String, align 4
  %347 = call i32 @IsA(i32* %345, i32 %346)
  %348 = call i32 @Assert(i32 %347)
  %349 = load i32*, i32** %23, align 8
  %350 = call i8* @strVal(i32* %349)
  store i8* %350, i8** %9, align 8
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %352 = load i32*, i32** %10, align 8
  %353 = load i8*, i8** %9, align 8
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = call i32* @scanRTEForColumn(%struct.TYPE_17__* %351, i32* %352, i8* %353, i32 %356, i32 0, i32* null)
  store i32* %357, i32** %6, align 8
  %358 = load i32*, i32** %6, align 8
  %359 = icmp eq i32* %358, null
  br i1 %359, label %360, label %380

360:                                              ; preds = %344
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %362 = load i32*, i32** %10, align 8
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = call i32* @transformWholeRowRef(%struct.TYPE_17__* %361, i32* %362, i32 %365)
  store i32* %366, i32** %6, align 8
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %368 = load i8*, i8** %9, align 8
  %369 = call i32* @makeString(i8* %368)
  %370 = call i32 @list_make1(i32* %369)
  %371 = load i32*, i32** %6, align 8
  %372 = call i32 @list_make1(i32* %371)
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32* @ParseFuncOrColumn(%struct.TYPE_17__* %367, i32 %370, i32 %372, i32 %375, i32* null, i32 0, i32 %378)
  store i32* %379, i32** %6, align 8
  br label %380

380:                                              ; preds = %360, %344
  br label %382

381:                                              ; preds = %70
  store i32 3, i32* %12, align 4
  br label %382

382:                                              ; preds = %381, %380, %337, %331, %320, %275, %232, %226, %188, %145, %139, %112
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 1
  %385 = load i32* (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*)*, i32* (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*)** %384, align 8
  %386 = icmp ne i32* (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*)* %385, null
  br i1 %386, label %387, label %419

387:                                              ; preds = %382
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 1
  %390 = load i32* (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*)*, i32* (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*)** %389, align 8
  %391 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %393 = load i32*, i32** %6, align 8
  %394 = call i32* %390(%struct.TYPE_17__* %391, %struct.TYPE_18__* %392, i32* %393)
  store i32* %394, i32** %25, align 8
  %395 = load i32*, i32** %6, align 8
  %396 = icmp eq i32* %395, null
  br i1 %396, label %397, label %399

397:                                              ; preds = %387
  %398 = load i32*, i32** %25, align 8
  store i32* %398, i32** %6, align 8
  br label %418

399:                                              ; preds = %387
  %400 = load i32*, i32** %25, align 8
  %401 = icmp ne i32* %400, null
  br i1 %401, label %402, label %417

402:                                              ; preds = %399
  %403 = load i32, i32* @ERROR, align 4
  %404 = load i32, i32* @ERRCODE_AMBIGUOUS_COLUMN, align 4
  %405 = call i32 @errcode(i32 %404)
  %406 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = call i32 @NameListToString(i32 %408)
  %410 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %409)
  %411 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %412 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @parser_errposition(%struct.TYPE_17__* %411, i32 %414)
  %416 = call i32 @ereport(i32 %403, i32 %415)
  br label %417

417:                                              ; preds = %402, %399
  br label %418

418:                                              ; preds = %417, %397
  br label %419

419:                                              ; preds = %418, %382
  %420 = load i32*, i32** %6, align 8
  %421 = icmp eq i32* %420, null
  br i1 %421, label %422, label %472

422:                                              ; preds = %419
  %423 = load i32, i32* %12, align 4
  switch i32 %423, label %471 [
    i32 0, label %424
    i32 1, label %432
    i32 2, label %441
    i32 3, label %456
  ]

424:                                              ; preds = %422
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %426 = load i8*, i8** %8, align 8
  %427 = load i8*, i8** %9, align 8
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @errorMissingColumn(%struct.TYPE_17__* %425, i8* %426, i8* %427, i32 %430)
  br label %471

432:                                              ; preds = %422
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %434 = load i8*, i8** %7, align 8
  %435 = load i8*, i8** %8, align 8
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @makeRangeVar(i8* %434, i8* %435, i32 %438)
  %440 = call i32 @errorMissingRTE(%struct.TYPE_17__* %433, i32 %439)
  br label %471

441:                                              ; preds = %422
  %442 = load i32, i32* @ERROR, align 4
  %443 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %444 = call i32 @errcode(i32 %443)
  %445 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @NameListToString(i32 %447)
  %449 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %448)
  %450 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %451 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @parser_errposition(%struct.TYPE_17__* %450, i32 %453)
  %455 = call i32 @ereport(i32 %442, i32 %454)
  br label %471

456:                                              ; preds = %422
  %457 = load i32, i32* @ERROR, align 4
  %458 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %459 = call i32 @errcode(i32 %458)
  %460 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @NameListToString(i32 %462)
  %464 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %463)
  %465 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @parser_errposition(%struct.TYPE_17__* %465, i32 %468)
  %470 = call i32 @ereport(i32 %457, i32 %469)
  br label %471

471:                                              ; preds = %422, %456, %441, %432, %424
  br label %472

472:                                              ; preds = %471, %419
  %473 = load i32*, i32** %6, align 8
  store i32* %473, i32** %3, align 8
  br label %474

474:                                              ; preds = %472, %67
  %475 = load i32*, i32** %3, align 8
  ret i32* %475
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i8*) #1

declare dso_local i32 @parser_errposition(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i64 @linitial(i32) #1

declare dso_local i32 @IsA(i32*, i32) #1

declare dso_local i8* @strVal(i32*) #1

declare dso_local i32* @colNameToVar(%struct.TYPE_17__*, i8*, i32, i32) #1

declare dso_local i32* @refnameRangeTblEntry(%struct.TYPE_17__*, i8*, i8*, i32, i32*) #1

declare dso_local i32* @transformWholeRowRef(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i64 @lsecond(i32) #1

declare dso_local i32* @scanRTEForColumn(%struct.TYPE_17__*, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32* @ParseFuncOrColumn(%struct.TYPE_17__*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @list_make1(i32*) #1

declare dso_local i32* @makeString(i8*) #1

declare dso_local i64 @lthird(i32) #1

declare dso_local i64 @lfourth(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @get_database_name(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @NameListToString(i32) #1

declare dso_local i32 @errorMissingColumn(%struct.TYPE_17__*, i8*, i8*, i32) #1

declare dso_local i32 @errorMissingRTE(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @makeRangeVar(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
