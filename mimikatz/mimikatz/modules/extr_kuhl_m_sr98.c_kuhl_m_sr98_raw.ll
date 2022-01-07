; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_raw.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 119, i32 105, i32 112, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 98, i32 48, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 98, i32 49, i32 0], align 4
@.str.3 = private unnamed_addr constant [3 x i32] [i32 98, i32 50, i32 0], align 4
@.str.4 = private unnamed_addr constant [3 x i32] [i32 98, i32 51, i32 0], align 4
@.str.5 = private unnamed_addr constant [3 x i32] [i32 98, i32 52, i32 0], align 4
@.str.6 = private unnamed_addr constant [3 x i32] [i32 98, i32 53, i32 0], align 4
@.str.7 = private unnamed_addr constant [3 x i32] [i32 98, i32 54, i32 0], align 4
@.str.8 = private unnamed_addr constant [3 x i32] [i32 98, i32 55, i32 0], align 4
@.str.9 = private unnamed_addr constant [69 x i32] [i32 10, i32 62, i32 32, i32 98, i32 108, i32 111, i32 99, i32 107, i32 115, i32 91, i32 48, i32 93, i32 32, i32 105, i32 110, i32 100, i32 105, i32 99, i32 97, i32 116, i32 101, i32 115, i32 32, i32 80, i32 87, i32 68, i32 44, i32 32, i32 98, i32 108, i32 111, i32 99, i32 107, i32 115, i32 91, i32 55, i32 93, i32 32, i32 119, i32 105, i32 108, i32 108, i32 32, i32 98, i32 101, i32 32, i32 116, i32 104, i32 101, i32 32, i32 112, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [23 x i32] [i32 10, i32 32, i32 42, i32 32, i32 87, i32 105, i32 112, i32 101, i32 32, i32 84, i32 53, i32 53, i32 55, i32 55, i32 32, i32 116, i32 97, i32 103, i32 46, i32 46, i32 46, i32 10, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i32] [i32 10, i32 32, i32 42, i32 32, i32 87, i32 114, i32 105, i32 116, i32 101, i32 32, i32 111, i32 112, i32 101, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 115, i32 46, i32 46, i32 46, i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [18 x i32] [i32 32, i32 32, i32 32, i32 91, i32 37, i32 104, i32 104, i32 117, i32 93, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [34 x i32] [i32 82, i32 101, i32 97, i32 100, i32 101, i32 114, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 117, i32 110, i32 105, i32 113, i32 117, i32 101, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@.str.14 = private unnamed_addr constant [14 x i32] [i32 78, i32 111, i32 32, i32 111, i32 112, i32 101, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sr98_raw(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca [8 x %struct.TYPE_7__], align 16
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32**, i32*** %4, align 8
  %15 = call i32 @kull_m_string_args_byName(i32 %13, i32** %14, i8* bitcast ([5 x i32]* @.str to i8*), i32* null, i32* null)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32**, i32*** %4, align 8
  %18 = call i32 @kull_m_string_args_byName(i32 %16, i32** %17, i8* bitcast ([3 x i32]* @.str.1 to i8*), i32* %8, i32* null)
  %19 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 16
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = call i8* @wcstoul(i32 %25, i32* null, i32 0)
  %27 = ptrtoint i8* %26 to i32
  %28 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kuhl_m_sr98_b0_descr(i32 %32)
  br label %34

34:                                               ; preds = %24, %2
  %35 = load i32, i32* %3, align 4
  %36 = load i32**, i32*** %4, align 8
  %37 = call i32 @kull_m_string_args_byName(i32 %35, i32** %36, i8* bitcast ([3 x i32]* @.str.2 to i8*), i32* %8, i32* null)
  %38 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @wcstoul(i32 %44, i32* null, i32 0)
  %46 = ptrtoint i8* %45 to i32
  %47 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %34
  %50 = load i32, i32* %3, align 4
  %51 = load i32**, i32*** %4, align 8
  %52 = call i32 @kull_m_string_args_byName(i32 %50, i32** %51, i8* bitcast ([3 x i32]* @.str.3 to i8*), i32* %8, i32* null)
  %53 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 16
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = call i8* @wcstoul(i32 %59, i32* null, i32 0)
  %61 = ptrtoint i8* %60 to i32
  %62 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %49
  %65 = load i32, i32* %3, align 4
  %66 = load i32**, i32*** %4, align 8
  %67 = call i32 @kull_m_string_args_byName(i32 %65, i32** %66, i8* bitcast ([3 x i32]* @.str.4 to i8*), i32* %8, i32* null)
  %68 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = call i8* @wcstoul(i32 %74, i32* null, i32 0)
  %76 = ptrtoint i8* %75 to i32
  %77 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %64
  %80 = load i32, i32* %3, align 4
  %81 = load i32**, i32*** %4, align 8
  %82 = call i32 @kull_m_string_args_byName(i32 %80, i32** %81, i8* bitcast ([3 x i32]* @.str.5 to i8*), i32* %8, i32* null)
  %83 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 16
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  %90 = call i8* @wcstoul(i32 %89, i32* null, i32 0)
  %91 = ptrtoint i8* %90 to i32
  %92 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 4
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %79
  %95 = load i32, i32* %3, align 4
  %96 = load i32**, i32*** %4, align 8
  %97 = call i32 @kull_m_string_args_byName(i32 %95, i32** %96, i8* bitcast ([3 x i32]* @.str.6 to i8*), i32* %8, i32* null)
  %98 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 5
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  %105 = call i8* @wcstoul(i32 %104, i32* null, i32 0)
  %106 = ptrtoint i8* %105 to i32
  %107 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 5
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %94
  %110 = load i32, i32* %3, align 4
  %111 = load i32**, i32*** %4, align 8
  %112 = call i32 @kull_m_string_args_byName(i32 %110, i32** %111, i8* bitcast ([3 x i32]* @.str.7 to i8*), i32* %8, i32* null)
  %113 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 6
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 16
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load i32, i32* %8, align 4
  %120 = call i8* @wcstoul(i32 %119, i32* null, i32 0)
  %121 = ptrtoint i8* %120 to i32
  %122 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 6
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %118, %109
  %125 = load i32, i32* %3, align 4
  %126 = load i32**, i32*** %4, align 8
  %127 = call i32 @kull_m_string_args_byName(i32 %125, i32** %126, i8* bitcast ([3 x i32]* @.str.8 to i8*), i32* %8, i32* null)
  %128 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 7
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %10, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %124
  %134 = load i32, i32* %8, align 4
  %135 = call i8* @wcstoul(i32 %134, i32* null, i32 0)
  %136 = ptrtoint i8* %135 to i32
  %137 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 7
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 16
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %133
  %144 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 16
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 7
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, ...) @kprintf(i8* bitcast ([69 x i32]* @.str.9 to i8*), i32 %152)
  br label %154

154:                                              ; preds = %149, %143, %133
  br label %155

155:                                              ; preds = %154, %124
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %224

161:                                              ; preds = %158, %155
  %162 = call i64 @sr98_devices_get(%struct.TYPE_6__** %6, i32* %7)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %223

164:                                              ; preds = %161
  %165 = load i32, i32* %7, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %217

167:                                              ; preds = %164
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = call i32 (i8*, ...) @kprintf(i8* bitcast ([23 x i32]* @.str.10 to i8*))
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @TRUE, align 4
  %176 = call i32 @sr98_t5577_wipe(i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %170, %167
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %216

180:                                              ; preds = %177
  %181 = call i32 (i8*, ...) @kprintf(i8* bitcast ([25 x i32]* @.str.11 to i8*))
  store i64 0, i64* %9, align 8
  br label %182

182:                                              ; preds = %212, %180
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 0
  %185 = call i64 @ARRAYSIZE(%struct.TYPE_7__* %184)
  %186 = icmp ult i64 %183, %185
  br i1 %186, label %187, label %215

187:                                              ; preds = %182
  %188 = load i64, i64* %9, align 8
  %189 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %187
  %194 = load i64, i64* %9, align 8
  %195 = load i64, i64* %9, align 8
  %196 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.12 to i8*), i64 %194, i32 %198)
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i64, i64* %9, align 8
  %204 = load i64, i64* %9, align 8
  %205 = getelementptr inbounds [8 x %struct.TYPE_7__], [8 x %struct.TYPE_7__]* %5, i64 0, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @_byteswap_ulong(i32 %207)
  %209 = load i32, i32* @FALSE, align 4
  %210 = call i32 @sr98_t5577_write_block(i32 %202, i32 0, i64 %203, i32 %208, i32 %209, i32 0)
  br label %211

211:                                              ; preds = %193, %187
  br label %212

212:                                              ; preds = %211
  %213 = load i64, i64* %9, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %9, align 8
  br label %182

215:                                              ; preds = %182
  br label %216

216:                                              ; preds = %215, %177
  br label %220

217:                                              ; preds = %164
  %218 = load i32, i32* %7, align 4
  %219 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([34 x i32]* @.str.13 to i8*), i32 %218)
  br label %220

220:                                              ; preds = %217, %216
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %222 = call i32 @sr98_devices_free(%struct.TYPE_6__* %221)
  br label %223

223:                                              ; preds = %220, %161
  br label %226

224:                                              ; preds = %158
  %225 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([14 x i32]* @.str.14 to i8*))
  br label %226

226:                                              ; preds = %224, %223
  %227 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %227
}

declare dso_local i32 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #1

declare dso_local i8* @wcstoul(i32, i32*, i32) #1

declare dso_local i32 @kuhl_m_sr98_b0_descr(i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @sr98_devices_get(%struct.TYPE_6__**, i32*) #1

declare dso_local i32 @sr98_t5577_wipe(i32, i32) #1

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @sr98_t5577_write_block(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @_byteswap_ulong(i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

declare dso_local i32 @sr98_devices_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
