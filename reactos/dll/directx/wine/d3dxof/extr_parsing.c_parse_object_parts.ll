; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_object_parts.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_object_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32, i64, %struct.TYPE_12__*, %struct.TYPE_10__**, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_12__**, i64, %struct.TYPE_10__*, i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TOKEN_OBRACE = common dso_local global i64 0, align 8
@TOKEN_NAME = common dso_local global i64 0, align 8
@TOKEN_CBRACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Found optional reference %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Reference to unknown object %s\0A\00", align 1
@MAX_SUBOBJECTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Too many sub-objects\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Enter optional %s\0A\00", align 1
@MAX_CHILDREN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Too many children %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i64)* @parse_object_parts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_object_parts(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = call i32 @parse_object_members_list(%struct.TYPE_13__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %3, align 8
  br label %312

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %294

21:                                               ; preds = %18
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %24, %29
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 6
  store i64 %30, i64* %34, align 8
  br label %35

35:                                               ; preds = %21, %292
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = call i64 @check_TOKEN(%struct.TYPE_13__* %36)
  %38 = load i64, i64* @TOKEN_OBRACE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %206

40:                                               ; preds = %35
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = call i64 @get_TOKEN(%struct.TYPE_13__* %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = call i64 @get_TOKEN(%struct.TYPE_13__* %43)
  %45 = load i64, i64* @TOKEN_NAME, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %3, align 8
  br label %312

49:                                               ; preds = %40
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = call i64 @get_TOKEN(%struct.TYPE_13__* %50)
  %52 = load i64, i64* @TOKEN_CBRACE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %3, align 8
  br label %312

56:                                               ; preds = %49
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %60)
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %108, %56
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %111

69:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %104, %69
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %74, i64 %76
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %71, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %70
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %86, i64 %88
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @strcmp(i32 %95, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %83
  br label %112

103:                                              ; preds = %83
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %70

107:                                              ; preds = %70
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %62

111:                                              ; preds = %62
  br label %112

112:                                              ; preds = %111, %102
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  %118 = icmp eq i32 %113, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %123)
  %125 = load i64, i64* @FALSE, align 8
  store i64 %125, i64* %3, align 8
  br label %312

126:                                              ; preds = %112
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @MAX_SUBOBJECTS, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i64, i64* @FALSE, align 8
  store i64 %138, i64* %3, align 8
  br label %312

139:                                              ; preds = %126
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %148, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %149
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %155, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %156, i64 %161
  store %struct.TYPE_12__* %151, %struct.TYPE_12__** %162, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %165, i64 %167
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i64 %171
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %176, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %177, i64 %182
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 4
  store %struct.TYPE_10__* %172, %struct.TYPE_10__** %185, align 8
  %186 = load i64, i64* @FALSE, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %190, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %191, i64 %196
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 3
  store i64 %186, i64* %199, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %203, align 8
  br label %292

206:                                              ; preds = %35
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %208 = call i64 @check_TOKEN(%struct.TYPE_13__* %207)
  %209 = load i64, i64* @TOKEN_NAME, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %290

211:                                              ; preds = %206
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  store %struct.TYPE_12__* %214, %struct.TYPE_12__** %8, align 8
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @MAX_SUBOBJECTS, align 8
  %223 = icmp sge i64 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %211
  %225 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %226 = load i64, i64* @FALSE, align 8
  store i64 %226, i64* %3, align 8
  br label %312

227:                                              ; preds = %211
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i64 %237
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %242, align 8
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %243, i64 %248
  store %struct.TYPE_12__* %238, %struct.TYPE_12__** %249, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  store %struct.TYPE_12__* %238, %struct.TYPE_12__** %251, align 8
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %256, 1
  store i64 %257, i64* %255, align 8
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = inttoptr i64 %260 to i8*
  %262 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %261)
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 8
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %268 = call i32 @parse_object(%struct.TYPE_13__* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %227
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %272, align 8
  %275 = load i64, i64* @FALSE, align 8
  store i64 %275, i64* %3, align 8
  br label %312

276:                                              ; preds = %227
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, -1
  store i32 %280, i32* %278, align 8
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 1
  store %struct.TYPE_12__* %281, %struct.TYPE_12__** %283, align 8
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %287, align 8
  br label %291

290:                                              ; preds = %206
  br label %293

291:                                              ; preds = %276
  br label %292

292:                                              ; preds = %291, %139
  br label %35

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %293, %18
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @MAX_CHILDREN, align 8
  %301 = icmp ugt i64 %299, %300
  br i1 %301, label %302, label %310

302:                                              ; preds = %294
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %307)
  %309 = load i64, i64* @FALSE, align 8
  store i64 %309, i64* %3, align 8
  br label %312

310:                                              ; preds = %294
  %311 = load i64, i64* @TRUE, align 8
  store i64 %311, i64* %3, align 8
  br label %312

312:                                              ; preds = %310, %302, %270, %224, %136, %119, %54, %47, %16
  %313 = load i64, i64* %3, align 8
  ret i64 %313
}

declare dso_local i32 @parse_object_members_list(%struct.TYPE_13__*) #1

declare dso_local i64 @check_TOKEN(%struct.TYPE_13__*) #1

declare dso_local i64 @get_TOKEN(%struct.TYPE_13__*) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @ERR(i8*, i8*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @parse_object(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
