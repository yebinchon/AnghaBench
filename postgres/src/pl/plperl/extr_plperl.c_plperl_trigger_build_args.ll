; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_trigger_build_args.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_trigger_build_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i32, i8** }

@dTHX = common dso_local global i32 0, align 4
@oidout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"relid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"TRUNCATE\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"relname\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"table_name\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"table_schema\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"BEFORE\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"AFTER\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"INSTEAD OF\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ROW\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"STATEMENT\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*)* @plperl_trigger_build_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @plperl_trigger_build_args(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %12 = load i32, i32* @dTHX, align 4
  %13 = call i32* (...) @newHV()
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 @hv_ksplit(i32* %14, i32 12)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %3, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @oidout, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ObjectIdGetDatum(i32 %30)
  %32 = call i32 @DirectFunctionCall1(i32 %25, i32 %31)
  %33 = call i8* @DatumGetCString(i32 %32)
  store i8* %33, i8** %8, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32* @cstr2sv(i8* %39)
  %41 = call i32 @hv_store_string(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32* @cstr2sv(i8* %43)
  %45 = call i32 @hv_store_string(i32* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @TRIGGER_FIRED_BY_INSERT(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @TRIGGER_FIRED_FOR_ROW(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load i32*, i32** %10, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @TRIGGER_FIRED_BEFORE(i32 %65)
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32* @plperl_hash_from_tuple(i32 %61, i32 %62, i32 %69)
  %71 = call i32 @hv_store_string(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %70)
  br label %72

72:                                               ; preds = %57, %51
  br label %140

73:                                               ; preds = %1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @TRIGGER_FIRED_BY_DELETE(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @TRIGGER_FIRED_FOR_ROW(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i32*, i32** %10, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32* @plperl_hash_from_tuple(i32 %89, i32 %90, i32 1)
  %92 = call i32 @hv_store_string(i32* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %91)
  br label %93

93:                                               ; preds = %85, %79
  br label %139

94:                                               ; preds = %73
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @TRIGGER_FIRED_BY_UPDATE(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %94
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @TRIGGER_FIRED_FOR_ROW(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %100
  %107 = load i32*, i32** %10, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32* @plperl_hash_from_tuple(i32 %110, i32 %111, i32 1)
  %113 = call i32 @hv_store_string(i32* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %112)
  %114 = load i32*, i32** %10, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @TRIGGER_FIRED_BEFORE(i32 %121)
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32* @plperl_hash_from_tuple(i32 %117, i32 %118, i32 %125)
  %127 = call i32 @hv_store_string(i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %126)
  br label %128

128:                                              ; preds = %106, %100
  br label %138

129:                                              ; preds = %94
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @TRIGGER_FIRED_BY_TRUNCATE(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %137

136:                                              ; preds = %129
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %137

137:                                              ; preds = %136, %135
  br label %138

138:                                              ; preds = %137, %128
  br label %139

139:                                              ; preds = %138, %93
  br label %140

140:                                              ; preds = %139, %72
  %141 = load i32*, i32** %10, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = call i32* @cstr2sv(i8* %142)
  %144 = call i32 @hv_store_string(i32* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* %143)
  %145 = load i32*, i32** %10, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32* @newSViv(i32 %150)
  %152 = call i32 @hv_store_string(i32* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %197

159:                                              ; preds = %140
  %160 = call i32* (...) @newAV()
  store i32* %160, i32** %11, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @av_extend(i32* %161, i32 %166)
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %189, %159
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %169, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %168
  %177 = load i32*, i32** %11, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i8**, i8*** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i32* @cstr2sv(i8* %186)
  %188 = call i32 @av_push(i32* %177, i32* %187)
  br label %189

189:                                              ; preds = %176
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %5, align 4
  br label %168

192:                                              ; preds = %168
  %193 = load i32*, i32** %10, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = call i32* @newRV_noinc(i32* %194)
  %196 = call i32 @hv_store_string(i32* %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* %195)
  br label %197

197:                                              ; preds = %192, %140
  %198 = load i32*, i32** %10, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = call i8* @SPI_getrelname(%struct.TYPE_10__* %201)
  %203 = call i32* @cstr2sv(i8* %202)
  %204 = call i32 @hv_store_string(i32* %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* %203)
  %205 = load i32*, i32** %10, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = call i8* @SPI_getrelname(%struct.TYPE_10__* %208)
  %210 = call i32* @cstr2sv(i8* %209)
  %211 = call i32 @hv_store_string(i32* %205, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32* %210)
  %212 = load i32*, i32** %10, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = call i8* @SPI_getnspname(%struct.TYPE_10__* %215)
  %217 = call i32* @cstr2sv(i8* %216)
  %218 = call i32 @hv_store_string(i32* %212, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32* %217)
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @TRIGGER_FIRED_BEFORE(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %197
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  br label %242

225:                                              ; preds = %197
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i64 @TRIGGER_FIRED_AFTER(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  br label %241

232:                                              ; preds = %225
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i64 @TRIGGER_FIRED_INSTEAD(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %240

239:                                              ; preds = %232
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %240

240:                                              ; preds = %239, %238
  br label %241

241:                                              ; preds = %240, %231
  br label %242

242:                                              ; preds = %241, %224
  %243 = load i32*, i32** %10, align 8
  %244 = load i8*, i8** %9, align 8
  %245 = call i32* @cstr2sv(i8* %244)
  %246 = call i32 @hv_store_string(i32* %243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32* %245)
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i64 @TRIGGER_FIRED_FOR_ROW(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %242
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** %6, align 8
  br label %262

253:                                              ; preds = %242
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i64 @TRIGGER_FIRED_FOR_STATEMENT(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8** %6, align 8
  br label %261

260:                                              ; preds = %253
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %261

261:                                              ; preds = %260, %259
  br label %262

262:                                              ; preds = %261, %252
  %263 = load i32*, i32** %10, align 8
  %264 = load i8*, i8** %6, align 8
  %265 = call i32* @cstr2sv(i8* %264)
  %266 = call i32 @hv_store_string(i32* %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32* %265)
  %267 = load i32*, i32** %10, align 8
  %268 = call i32* @newRV_noinc(i32* %267)
  ret i32* %268
}

declare dso_local i32* @newHV(...) #1

declare dso_local i32 @hv_ksplit(i32*, i32) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @hv_store_string(i32*, i8*, i32*) #1

declare dso_local i32* @cstr2sv(i8*) #1

declare dso_local i64 @TRIGGER_FIRED_BY_INSERT(i32) #1

declare dso_local i64 @TRIGGER_FIRED_FOR_ROW(i32) #1

declare dso_local i32* @plperl_hash_from_tuple(i32, i32, i32) #1

declare dso_local i64 @TRIGGER_FIRED_BEFORE(i32) #1

declare dso_local i64 @TRIGGER_FIRED_BY_DELETE(i32) #1

declare dso_local i64 @TRIGGER_FIRED_BY_UPDATE(i32) #1

declare dso_local i64 @TRIGGER_FIRED_BY_TRUNCATE(i32) #1

declare dso_local i32* @newSViv(i32) #1

declare dso_local i32* @newAV(...) #1

declare dso_local i32 @av_extend(i32*, i32) #1

declare dso_local i32 @av_push(i32*, i32*) #1

declare dso_local i32* @newRV_noinc(i32*) #1

declare dso_local i8* @SPI_getrelname(%struct.TYPE_10__*) #1

declare dso_local i8* @SPI_getnspname(%struct.TYPE_10__*) #1

declare dso_local i64 @TRIGGER_FIRED_AFTER(i32) #1

declare dso_local i64 @TRIGGER_FIRED_INSTEAD(i32) #1

declare dso_local i64 @TRIGGER_FIRED_FOR_STATEMENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
