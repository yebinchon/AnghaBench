; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_pdo_firebird_handle_factory.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_pdo_firebird_handle_factory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdo_data_src_parser = type { i8*, i8*, i8*, i64, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dialect\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@__const.pdo_firebird_handle_factory.vars = private unnamed_addr constant [6 x %struct.pdo_data_src_parser] [%struct.pdo_data_src_parser { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i64 0, i32 0 }, %struct.pdo_data_src_parser { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 0, i32 0 }, %struct.pdo_data_src_parser { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i64 0, i32 0 }, %struct.pdo_data_src_parser { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* null, i64 0, i32 0 }, %struct.pdo_data_src_parser { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 0, i32 0 }, %struct.pdo_data_src_parser { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 0, i32 0 }], align 16
@pdo_firebird_handle_factory.dpb_flags = internal constant [4 x i8] c"\80\82\83\81", align 1
@isc_dpb_version1 = common dso_local global i8 0, align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%c%c%s\00", align 1
@PDO_FB_DIALECT = common dso_local global i32 0, align 4
@firebird_methods = common dso_local global i32 0, align 4
@PDO_CASE_UPPER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"SQLSTATE[%s] [%d] %s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"HY000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @pdo_firebird_handle_factory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_firebird_handle_factory(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [6 x %struct.pdo_data_src_parser], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca [4 x i8*], align 16
  %12 = alloca [256 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca [512 x i8], align 16
  %15 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = bitcast [6 x %struct.pdo_data_src_parser]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([6 x %struct.pdo_data_src_parser]* @__const.pdo_firebird_handle_factory.vars to i8*), i64 240, i1 false)
  store i32 0, i32* %7, align 4
  store i16 256, i16* %8, align 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_6__* @pecalloc(i32 1, i32 16, i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %10, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 0
  %30 = call i32 @php_pdo_parse_data_source(i32 %25, i32 %28, %struct.pdo_data_src_parser* %29, i32 6)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %2
  %36 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 4
  %37 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 16
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 4
  %42 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 16
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @pestrdup(i8* %43, i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %40, %35, %2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 5
  %57 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 5
  %62 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @pestrdup(i8* %63, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %60, %55, %50
  br label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %72, align 8
  %76 = getelementptr inbounds i8*, i8** %72, i64 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %76, align 8
  %80 = getelementptr inbounds i8*, i8** %76, i64 1
  %81 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 1
  %82 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %80, align 8
  %84 = getelementptr inbounds i8*, i8** %80, i64 1
  %85 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 2
  %86 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 16
  store i8* %87, i8** %84, align 8
  %88 = bitcast [256 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %88, i8 0, i64 256, i1 false)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %90 = load i8, i8* @isc_dpb_version1, align 1
  store i8 %90, i8* %89, align 1
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8* %92, i8** %13, align 8
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %137, %71
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ult i64 %95, 4
  br i1 %96, label %97, label %140

97:                                               ; preds = %93
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %136

103:                                              ; preds = %97
  %104 = load i16, i16* %8, align 2
  %105 = sext i16 %104 to i32
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %103
  %108 = load i8*, i8** %13, align 8
  %109 = load i16, i16* %8, align 2
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i8], [4 x i8]* @pdo_firebird_handle_factory.dpb_flags, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @strlen(i8* %117)
  %119 = trunc i64 %118 to i8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call signext i16 @slprintf(i8* %108, i16 signext %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8 signext %113, i8 zeroext %119, i8* %123)
  store i16 %124, i16* %9, align 2
  %125 = load i16, i16* %9, align 2
  %126 = sext i16 %125 to i32
  %127 = load i8*, i8** %13, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %13, align 8
  %130 = load i16, i16* %9, align 2
  %131 = sext i16 %130 to i32
  %132 = load i16, i16* %8, align 2
  %133 = sext i16 %132 to i32
  %134 = sub nsw i32 %133, %131
  %135 = trunc i32 %134 to i16
  store i16 %135, i16* %8, align 2
  br label %136

136:                                              ; preds = %107, %103, %97
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %93

140:                                              ; preds = %93
  %141 = load i32, i32* @PDO_FB_DIALECT, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 3
  %145 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %140
  %149 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 3
  %150 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @atoi(i8* %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %148, %140
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 0
  %160 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %159, i32 0, i32 2
  %161 = load i8*, i8** %160, align 16
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i8*, i8** %13, align 8
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i16
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %171 = call i64 @isc_attach_database(i32* %158, i32 0, i8* %161, i32* %163, i16 signext %169, i8* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %155
  br label %182

174:                                              ; preds = %155
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  store i32* @firebird_methods, i32** %176, align 8
  %177 = load i32, i32* @PDO_CASE_UPPER, align 4
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  store i32 1, i32* %181, align 8
  store i32 1, i32* %7, align 4
  br label %182

182:                                              ; preds = %174, %173
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %202, %182
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp ult i64 %185, 6
  br i1 %186, label %187, label %205

187:                                              ; preds = %183
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 %189
  %191 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %187
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [6 x %struct.pdo_data_src_parser], [6 x %struct.pdo_data_src_parser]* %5, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @efree(i8* %199)
  br label %201

201:                                              ; preds = %194, %187
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %183

205:                                              ; preds = %183
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %229, label %210

210:                                              ; preds = %205
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  store i32* %213, i32** %15, align 8
  %214 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %215 = call i32 @fb_interpret(i8* %214, i32 512, i32** %15)
  %216 = call i32 (...) @php_pdo_get_exception()
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %228 = call i32 @zend_throw_exception_ex(i32 %216, i32 %221, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %226, i8* %227)
  br label %229

229:                                              ; preds = %210, %205
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %234 = call i32 @firebird_handle_closer(%struct.TYPE_7__* %233)
  br label %235

235:                                              ; preds = %232, %229
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_6__* @pecalloc(i32, i32, i32) #2

declare dso_local i32 @php_pdo_parse_data_source(i32, i32, %struct.pdo_data_src_parser*, i32) #2

declare dso_local i8* @pestrdup(i8*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local signext i16 @slprintf(i8*, i16 signext, i8*, i8 signext, i8 zeroext, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i64 @isc_attach_database(i32*, i32, i8*, i32*, i16 signext, i8*) #2

declare dso_local i32 @efree(i8*) #2

declare dso_local i32 @fb_interpret(i8*, i32, i32**) #2

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i8*, i32, i8*) #2

declare dso_local i32 @php_pdo_get_exception(...) #2

declare dso_local i32 @firebird_handle_closer(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
