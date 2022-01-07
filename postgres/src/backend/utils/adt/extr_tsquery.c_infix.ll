; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_infix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_infix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i32, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }

@QI_VAL = common dso_local global i64 0, align 8
@OP_NOT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"( \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" )\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" | %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" & %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" <%d> %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" <-> %s\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"unrecognized operator type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32)* @infix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infix(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = call i32 (...) @check_stack_depth()
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @QI_VAL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %203

24:                                               ; preds = %3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %7, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  store i8* %36, i8** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (...) @pg_database_encoding_max_length()
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %40, %42
  %44 = add nsw i32 %43, 2
  %45 = add nsw i32 %44, 6
  %46 = call i32 @RESIZEBUF(%struct.TYPE_9__* %37, i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8 39, i8* %49, align 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %51, align 8
  br label %54

54:                                               ; preds = %83, %24
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %101

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @t_iseq(i8* %59, i8 signext 39)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8 39, i8* %65, align 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %67, align 8
  br label %83

70:                                               ; preds = %58
  %71 = load i8*, i8** %8, align 8
  %72 = call i64 @t_iseq(i8* %71, i8 signext 92)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  store i8 92, i8* %77, align 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %79, align 8
  br label %82

82:                                               ; preds = %74, %70
  br label %83

83:                                               ; preds = %82, %62
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @COPYCHAR(i8* %86, i8* %87)
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @pg_mblen(i8* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = sext i32 %95 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %97, align 8
  br label %54

101:                                              ; preds = %54
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  store i8 39, i8* %104, align 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %106, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %101
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %195

118:                                              ; preds = %113, %101
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  store i8 58, i8* %121, align 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %123, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %118
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  store i8 42, i8* %133, align 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %135, align 8
  br label %138

138:                                              ; preds = %130, %118
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %138
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  store i8 65, i8* %147, align 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %149, align 8
  br label %152

152:                                              ; preds = %144, %138
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  store i8 66, i8* %161, align 1
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %163, align 8
  br label %166

166:                                              ; preds = %158, %152
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, 2
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  store i8 67, i8* %175, align 1
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %177, align 8
  br label %180

180:                                              ; preds = %172, %166
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, 1
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  store i8 68, i8* %189, align 1
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %191, align 8
  br label %194

194:                                              ; preds = %186, %180
  br label %195

195:                                              ; preds = %194, %113
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  store i8 0, i8* %198, align 1
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 1
  store %struct.TYPE_10__* %202, %struct.TYPE_10__** %200, align 8
  br label %418

203:                                              ; preds = %3
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @OP_NOT, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %269

212:                                              ; preds = %203
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = call i32 @QO_PRIORITY(%struct.TYPE_10__* %215)
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %5, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %233

220:                                              ; preds = %212
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %222 = call i32 @RESIZEBUF(%struct.TYPE_9__* %221, i32 2)
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (i8*, i8*, ...) @sprintf(i8* %225, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = call i8* @strchr(i8* %229, i8 signext 0)
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  store i8* %230, i8** %232, align 8
  br label %233

233:                                              ; preds = %220, %212
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %235 = call i32 @RESIZEBUF(%struct.TYPE_9__* %234, i32 1)
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  store i8 33, i8* %238, align 1
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %240, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  store i8 0, i8* %245, align 1
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 4
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 1
  store %struct.TYPE_10__* %249, %struct.TYPE_10__** %247, align 8
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %251 = load i32, i32* %10, align 4
  call void @infix(%struct.TYPE_9__* %250, i32 %251, i32 0)
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %5, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %268

255:                                              ; preds = %233
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %257 = call i32 @RESIZEBUF(%struct.TYPE_9__* %256, i32 2)
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 (i8*, i8*, ...) @sprintf(i8* %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = call i8* @strchr(i8* %264, i8 signext 0)
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  store i8* %265, i8** %267, align 8
  br label %268

268:                                              ; preds = %255, %233
  br label %417

269:                                              ; preds = %203
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %11, align 4
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  %280 = call i32 @QO_PRIORITY(%struct.TYPE_10__* %279)
  store i32 %280, i32* %12, align 4
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 4
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  store i32 %286, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 4
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 1
  store %struct.TYPE_10__* %290, %struct.TYPE_10__** %288, align 8
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* %5, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %300, label %294

294:                                              ; preds = %269
  %295 = load i32, i32* %11, align 4
  %296 = icmp eq i32 %295, 128
  br i1 %296, label %297, label %313

297:                                              ; preds = %294
  %298 = load i32, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %297, %269
  store i32 1, i32* %15, align 4
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %302 = call i32 @RESIZEBUF(%struct.TYPE_9__* %301, i32 2)
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 (i8*, i8*, ...) @sprintf(i8* %305, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = call i8* @strchr(i8* %309, i8 signext 0)
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 1
  store i8* %310, i8** %312, align 8
  br label %313

313:                                              ; preds = %300, %297, %294
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 4
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  store %struct.TYPE_10__* %316, %struct.TYPE_10__** %317, align 8
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i8* %320, i8** %321, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i32 16, i32* %322, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = sext i32 %324 to i64
  %326 = mul i64 1, %325
  %327 = trunc i64 %326 to i32
  %328 = call i64 @palloc(i32 %327)
  %329 = inttoptr i64 %328 to i8*
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  store i8* %329, i8** %330, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i8* %329, i8** %331, align 8
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %11, align 4
  %334 = icmp eq i32 %333, 128
  %335 = zext i1 %334 to i32
  call void @infix(%struct.TYPE_9__* %14, i32 %332, i32 %335)
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %336, align 8
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 4
  store %struct.TYPE_10__* %337, %struct.TYPE_10__** %339, align 8
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %341 = load i32, i32* %12, align 4
  call void @infix(%struct.TYPE_9__* %340, i32 %341, i32 0)
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %344 = load i8*, i8** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %346 = load i8*, i8** %345, align 8
  %347 = ptrtoint i8* %344 to i64
  %348 = ptrtoint i8* %346 to i64
  %349 = sub i64 %347, %348
  %350 = add nsw i64 15, %349
  %351 = trunc i64 %350 to i32
  %352 = call i32 @RESIZEBUF(%struct.TYPE_9__* %342, i32 %351)
  %353 = load i32, i32* %11, align 4
  switch i32 %353, label %387 [
    i32 129, label %354
    i32 130, label %361
    i32 128, label %368
  ]

354:                                              ; preds = %313
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 1
  %357 = load i8*, i8** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %359 = load i8*, i8** %358, align 8
  %360 = call i32 (i8*, i8*, ...) @sprintf(i8* %357, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %359)
  br label %391

361:                                              ; preds = %313
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 1
  %364 = load i8*, i8** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %366 = load i8*, i8** %365, align 8
  %367 = call i32 (i8*, i8*, ...) @sprintf(i8* %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %366)
  br label %391

368:                                              ; preds = %313
  %369 = load i32, i32* %13, align 4
  %370 = icmp ne i32 %369, 1
  br i1 %370, label %371, label %379

371:                                              ; preds = %368
  %372 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 1
  %374 = load i8*, i8** %373, align 8
  %375 = load i32, i32* %13, align 4
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %377 = load i8*, i8** %376, align 8
  %378 = call i32 (i8*, i8*, ...) @sprintf(i8* %374, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %375, i8* %377)
  br label %386

379:                                              ; preds = %368
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 1
  %382 = load i8*, i8** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 (i8*, i8*, ...) @sprintf(i8* %382, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %384)
  br label %386

386:                                              ; preds = %379, %371
  br label %391

387:                                              ; preds = %313
  %388 = load i32, i32* @ERROR, align 4
  %389 = load i32, i32* %11, align 4
  %390 = call i32 @elog(i32 %388, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %389)
  br label %391

391:                                              ; preds = %387, %386, %361, %354
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 1
  %394 = load i8*, i8** %393, align 8
  %395 = call i8* @strchr(i8* %394, i8 signext 0)
  %396 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 1
  store i8* %395, i8** %397, align 8
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %399 = load i8*, i8** %398, align 8
  %400 = call i32 @pfree(i8* %399)
  %401 = load i32, i32* %15, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %416

403:                                              ; preds = %391
  %404 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %405 = call i32 @RESIZEBUF(%struct.TYPE_9__* %404, i32 2)
  %406 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 1
  %408 = load i8*, i8** %407, align 8
  %409 = call i32 (i8*, i8*, ...) @sprintf(i8* %408, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 1
  %412 = load i8*, i8** %411, align 8
  %413 = call i8* @strchr(i8* %412, i8 signext 0)
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 1
  store i8* %413, i8** %415, align 8
  br label %416

416:                                              ; preds = %403, %391
  br label %417

417:                                              ; preds = %416, %268
  br label %418

418:                                              ; preds = %417, %195
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @RESIZEBUF(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i64 @t_iseq(i8*, i8 signext) #1

declare dso_local i32 @COPYCHAR(i8*, i8*) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i32 @QO_PRIORITY(%struct.TYPE_10__*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
