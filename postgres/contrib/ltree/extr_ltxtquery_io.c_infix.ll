; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltxtquery_io.c_infix.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltxtquery_io.c_infix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i64 }

@VAL = common dso_local global i64 0, align 8
@LVAR_SUBLEXEME = common dso_local global i32 0, align 4
@LVAR_INCASE = common dso_local global i32 0, align 4
@LVAR_ANYEND = common dso_local global i32 0, align 4
@OPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"( \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" )\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" %c %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @infix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infix(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @check_stack_depth()
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %112

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %20, i64 %26
  store i8* %27, i8** %5, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 2
  %35 = add nsw i32 %34, 5
  %36 = call i32 @RESIZEBUF(%struct.TYPE_6__* %28, i32 %35)
  br label %37

37:                                               ; preds = %41, %17
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8 %43, i8* %46, align 1
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %5, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %50, align 8
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @LVAR_SUBLEXEME, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8 37, i8* %65, align 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %67, align 8
  br label %70

70:                                               ; preds = %62, %53
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LVAR_INCASE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %70
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  store i8 64, i8* %82, align 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %84, align 8
  br label %87

87:                                               ; preds = %79, %70
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @LVAR_ANYEND, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  store i8 42, i8* %99, align 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %101, align 8
  br label %104

104:                                              ; preds = %96, %87
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  store i8 0, i8* %107, align 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 1
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %109, align 8
  br label %274

112:                                              ; preds = %2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 33
  br i1 %118, label %119, label %175

119:                                              ; preds = %112
  store i32 0, i32* %6, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = call i32 @RESIZEBUF(%struct.TYPE_6__* %120, i32 1)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  store i8 33, i8* %124, align 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %126, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  store i8 0, i8* %131, align 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 1
  store %struct.TYPE_5__* %135, %struct.TYPE_5__** %133, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @OPR, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %119
  store i32 1, i32* %6, align 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = call i32 @RESIZEBUF(%struct.TYPE_6__* %144, i32 2)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i8*, i8*, ...) @sprintf(i8* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @strchr(i8* %152, i8 signext 0)
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %143, %119
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %158 = load i32, i32* %6, align 4
  call void @infix(%struct.TYPE_6__* %157, i32 %158)
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %156
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = call i32 @RESIZEBUF(%struct.TYPE_6__* %162, i32 2)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @strchr(i8* %170, i8 signext 0)
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %161, %156
  br label %273

175:                                              ; preds = %112
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %7, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 1
  store %struct.TYPE_5__* %184, %struct.TYPE_5__** %182, align 8
  %185 = load i64, i64* %7, align 8
  %186 = icmp eq i64 %185, 124
  br i1 %186, label %187, label %203

187:                                              ; preds = %175
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %187
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %192 = call i32 @RESIZEBUF(%struct.TYPE_6__* %191, i32 2)
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 (i8*, i8*, ...) @sprintf(i8* %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = call i8* @strchr(i8* %199, i8 signext 0)
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %190, %187, %175
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  store %struct.TYPE_5__* %206, %struct.TYPE_5__** %207, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i8* %210, i8** %211, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 16, i32* %212, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = mul i64 1, %215
  %217 = trunc i64 %216 to i32
  %218 = call i64 @palloc(i32 %217)
  %219 = inttoptr i64 %218 to i8*
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  store i8* %219, i8** %220, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i8* %219, i8** %221, align 8
  call void @infix(%struct.TYPE_6__* %8, i32 0)
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 4
  store %struct.TYPE_5__* %223, %struct.TYPE_5__** %225, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  call void @infix(%struct.TYPE_6__* %226, i32 0)
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %231 = load i8*, i8** %230, align 8
  %232 = ptrtoint i8* %229 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  %235 = add nsw i64 3, %234
  %236 = trunc i64 %235 to i32
  %237 = call i32 @RESIZEBUF(%struct.TYPE_6__* %227, i32 %236)
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = load i64, i64* %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i8*, i8*, ...) @sprintf(i8* %240, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %241, i8* %243)
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = call i8* @strchr(i8* %247, i8 signext 0)
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @pfree(i8* %252)
  %254 = load i64, i64* %7, align 8
  %255 = icmp eq i64 %254, 124
  br i1 %255, label %256, label %272

256:                                              ; preds = %203
  %257 = load i32, i32* %4, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %272, label %259

259:                                              ; preds = %256
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %261 = call i32 @RESIZEBUF(%struct.TYPE_6__* %260, i32 2)
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 (i8*, i8*, ...) @sprintf(i8* %264, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = call i8* @strchr(i8* %268, i8 signext 0)
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  store i8* %269, i8** %271, align 8
  br label %272

272:                                              ; preds = %259, %256, %203
  br label %273

273:                                              ; preds = %272, %174
  br label %274

274:                                              ; preds = %273, %104
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @RESIZEBUF(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
