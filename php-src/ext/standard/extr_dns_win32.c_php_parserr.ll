; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_dns_win32.c_php_parserr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_dns_win32.c_php_parserr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i8*, %struct.TYPE_25__, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_30__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_20__ = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64* }
%struct.TYPE_19__ = type { i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i64, i32* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { i8*, i8* }

@DNS_TYPE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ttl\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"MX\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pri\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"CNAME\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"NS\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"PTR\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"entries\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"SOA\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"mname\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"rname\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"expire\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"minimum-ttl\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"AAAA\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"SRV\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"NAPTR\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"pref\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"services\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"replacement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, i32, i32, i32, i32*)* @php_parserr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_parserr(%struct.TYPE_28__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_29__, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca [40 x i8], align 16
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca [8 x i16], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_18__*, align 8
  %32 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @ZVAL_UNDEF(i32* %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DNS_TYPE_ANY, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %5
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %438

49:                                               ; preds = %44, %5
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %438

53:                                               ; preds = %49
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @array_init(i32* %54)
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @add_assoc_string(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @add_assoc_string(i32* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @add_assoc_long(i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %53
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @add_assoc_long(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 3
  %75 = bitcast %struct.TYPE_25__* %74 to i8*
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @add_assoc_stringl(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %75, i32 %79)
  br label %438

81:                                               ; preds = %53
  %82 = load i32, i32* %11, align 4
  switch i32 %82, label %435 [
    i32 139, label %83
    i32 134, label %99
    i32 136, label %109
    i32 132, label %116
    i32 131, label %123
    i32 135, label %137
    i32 128, label %137
    i32 130, label %222
    i32 137, label %263
    i32 129, label %373
    i32 133, label %399
  ]

83:                                               ; preds = %81
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @add_assoc_string(i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @inet_ntoa(i32 %96)
  %98 = call i32 @add_assoc_string(i32* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %97)
  br label %438

99:                                               ; preds = %81
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @add_assoc_string(i32* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %102 = load i32*, i32** %10, align 8
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @add_assoc_long(i32* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %81, %99
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 136
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @add_assoc_string(i32* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %81, %115
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, 132
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @add_assoc_string(i32* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %81, %122
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 131
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @add_assoc_string(i32* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32*, i32** %10, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @add_assoc_string(i32* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %135)
  br label %438

137:                                              ; preds = %81, %81
  store i64 0, i64* %14, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 4
  store %struct.TYPE_30__* %140, %struct.TYPE_30__** %15, align 8
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %16, align 8
  store i64 0, i64* %19, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = call i32 @add_assoc_string(i32* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %146 = call i32 @array_init(i32* %20)
  store i64 0, i64* %14, align 8
  br label %147

147:                                              ; preds = %162, %137
  %148 = load i64, i64* %14, align 8
  %149 = load i64, i64* %16, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %147
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %14, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @strlen(i32 %157)
  %159 = add i64 %158, 1
  %160 = load i64, i64* %19, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %19, align 8
  br label %162

162:                                              ; preds = %151
  %163 = load i64, i64* %14, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %14, align 8
  br label %147

165:                                              ; preds = %147
  %166 = load i64, i64* %19, align 8
  %167 = call %struct.TYPE_27__* @zend_string_safe_alloc(i64 %166, i32 2, i32 0, i32 0)
  store %struct.TYPE_27__* %167, %struct.TYPE_27__** %17, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %18, align 8
  store i64 0, i64* %14, align 8
  br label %171

171:                                              ; preds = %203, %165
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %16, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %206

175:                                              ; preds = %171
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* %14, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @strlen(i32 %181)
  store i64 %182, i64* %21, align 8
  %183 = load i8*, i8** %18, align 8
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* %14, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i64, i64* %21, align 8
  %191 = call i32 @memcpy(i8* %183, i32 %189, i64 %190)
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* %14, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i64, i64* %21, align 8
  %199 = call i32 @add_next_index_stringl(i32* %20, i32 %197, i64 %198)
  %200 = load i64, i64* %21, align 8
  %201 = load i8*, i8** %18, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 %200
  store i8* %202, i8** %18, align 8
  br label %203

203:                                              ; preds = %175
  %204 = load i64, i64* %14, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %14, align 8
  br label %171

206:                                              ; preds = %171
  %207 = load i8*, i8** %18, align 8
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = ptrtoint i8* %207 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = inttoptr i64 %213 to i8*
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 1
  store i8* %214, i8** %216, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %219 = call i32 @add_assoc_str(i32* %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.TYPE_27__* %218)
  %220 = load i32*, i32** %10, align 8
  %221 = call i32 @add_assoc_zval(i32* %220, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32* %20)
  br label %438

222:                                              ; preds = %81
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 3
  store %struct.TYPE_19__* %225, %struct.TYPE_19__** %22, align 8
  %226 = load i32*, i32** %10, align 8
  %227 = call i32 @add_assoc_string(i32* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %228 = load i32*, i32** %10, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @add_assoc_string(i32* %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* %231)
  %233 = load i32*, i32** %10, align 8
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @add_assoc_string(i32* %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %236)
  %238 = load i32*, i32** %10, align 8
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @add_assoc_long(i32* %238, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %241)
  %243 = load i32*, i32** %10, align 8
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @add_assoc_long(i32* %243, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %246)
  %248 = load i32*, i32** %10, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @add_assoc_long(i32* %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 %251)
  %253 = load i32*, i32** %10, align 8
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @add_assoc_long(i32* %253, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %256)
  %258 = load i32*, i32** %10, align 8
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @add_assoc_long(i32* %258, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 %261)
  br label %438

263:                                              ; preds = %81
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 2
  store %struct.TYPE_21__* %266, %struct.TYPE_21__** %23, align 8
  %267 = getelementptr inbounds [40 x i8], [40 x i8]* %24, i64 0, i64 0
  store i8* %267, i8** %25, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %26, align 4
  br label %268

268:                                              ; preds = %295, %263
  %269 = load i32, i32* %26, align 4
  %270 = icmp slt i32 %269, 4
  br i1 %270, label %271, label %298

271:                                              ; preds = %268
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 0
  %275 = load i64*, i64** %274, align 8
  %276 = load i32, i32* %26, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i64, i64* %275, i64 %277
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %30, align 8
  %280 = load i64, i64* %30, align 8
  %281 = call i32 @LOWORD(i64 %280)
  %282 = call zeroext i16 @htons(i32 %281)
  %283 = load i32, i32* %26, align 4
  %284 = mul nsw i32 %283, 2
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [8 x i16], [8 x i16]* %27, i64 0, i64 %285
  store i16 %282, i16* %286, align 2
  %287 = load i64, i64* %30, align 8
  %288 = call i32 @HIWORD(i64 %287)
  %289 = call zeroext i16 @htons(i32 %288)
  %290 = load i32, i32* %26, align 4
  %291 = mul nsw i32 %290, 2
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [8 x i16], [8 x i16]* %27, i64 0, i64 %293
  store i16 %289, i16* %294, align 2
  br label %295

295:                                              ; preds = %271
  %296 = load i32, i32* %26, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %26, align 4
  br label %268

298:                                              ; preds = %268
  store i32 0, i32* %26, align 4
  br label %299

299:                                              ; preds = %351, %298
  %300 = load i32, i32* %26, align 4
  %301 = icmp slt i32 %300, 8
  br i1 %301, label %302, label %354

302:                                              ; preds = %299
  %303 = load i32, i32* %26, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [8 x i16], [8 x i16]* %27, i64 0, i64 %304
  %306 = load i16, i16* %305, align 2
  %307 = zext i16 %306 to i32
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %328

309:                                              ; preds = %302
  %310 = load i8*, i8** %25, align 8
  %311 = getelementptr inbounds [40 x i8], [40 x i8]* %24, i64 0, i64 0
  %312 = icmp ugt i8* %310, %311
  br i1 %312, label %313, label %318

313:                                              ; preds = %309
  store i32 0, i32* %29, align 4
  %314 = load i8*, i8** %25, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 0
  store i8 58, i8* %315, align 1
  %316 = load i8*, i8** %25, align 8
  %317 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %317, i8** %25, align 8
  br label %318

318:                                              ; preds = %313, %309
  %319 = load i8*, i8** %25, align 8
  %320 = load i32, i32* %26, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [8 x i16], [8 x i16]* %27, i64 0, i64 %321
  %323 = load i16, i16* %322, align 2
  %324 = call i32 @sprintf(i8* %319, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i16 zeroext %323)
  %325 = load i8*, i8** %25, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i8, i8* %325, i64 %326
  store i8* %327, i8** %25, align 8
  br label %350

328:                                              ; preds = %302
  %329 = load i32, i32* %28, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %328
  store i32 1, i32* %28, align 4
  store i32 1, i32* %29, align 4
  %332 = load i8*, i8** %25, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 0
  store i8 58, i8* %333, align 1
  %334 = load i8*, i8** %25, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %25, align 8
  br label %349

336:                                              ; preds = %328
  %337 = load i32, i32* %29, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %348, label %339

339:                                              ; preds = %336
  %340 = load i8*, i8** %25, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 0
  store i8 58, i8* %341, align 1
  %342 = load i8*, i8** %25, align 8
  %343 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %343, i8** %25, align 8
  %344 = load i8*, i8** %25, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 0
  store i8 48, i8* %345, align 1
  %346 = load i8*, i8** %25, align 8
  %347 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %347, i8** %25, align 8
  br label %348

348:                                              ; preds = %339, %336
  br label %349

349:                                              ; preds = %348, %331
  br label %350

350:                                              ; preds = %349, %318
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %26, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %26, align 4
  br label %299

354:                                              ; preds = %299
  %355 = load i32, i32* %28, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %354
  %358 = load i32, i32* %29, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %365

360:                                              ; preds = %357
  %361 = load i8*, i8** %25, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 0
  store i8 58, i8* %362, align 1
  %363 = load i8*, i8** %25, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %25, align 8
  br label %365

365:                                              ; preds = %360, %357, %354
  %366 = load i8*, i8** %25, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 0
  store i8 0, i8* %367, align 1
  %368 = load i32*, i32** %10, align 8
  %369 = call i32 @add_assoc_string(i32* %368, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %370 = load i32*, i32** %10, align 8
  %371 = getelementptr inbounds [40 x i8], [40 x i8]* %24, i64 0, i64 0
  %372 = call i32 @add_assoc_string(i32* %370, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* %371)
  br label %438

373:                                              ; preds = %81
  %374 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %374, i32 0, i32 3
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 1
  store %struct.TYPE_18__* %376, %struct.TYPE_18__** %31, align 8
  %377 = load i32*, i32** %10, align 8
  %378 = call i32 @add_assoc_string(i32* %377, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  %379 = load i32*, i32** %10, align 8
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = call i32 @add_assoc_long(i32* %379, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %382)
  %384 = load i32*, i32** %10, align 8
  %385 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %386 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @add_assoc_long(i32* %384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32 %387)
  %389 = load i32*, i32** %10, align 8
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @add_assoc_long(i32* %389, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 %392)
  %394 = load i32*, i32** %10, align 8
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 3
  %397 = load i8*, i8** %396, align 8
  %398 = call i32 @add_assoc_string(i32* %394, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %397)
  br label %438

399:                                              ; preds = %81
  %400 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %400, i32 0, i32 3
  %402 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %401, i32 0, i32 0
  store %struct.TYPE_20__* %402, %struct.TYPE_20__** %32, align 8
  %403 = load i32*, i32** %10, align 8
  %404 = call i32 @add_assoc_string(i32* %403, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %405 = load i32*, i32** %10, align 8
  %406 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = call i32 @add_assoc_long(i32* %405, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i32 %408)
  %410 = load i32*, i32** %10, align 8
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @add_assoc_long(i32* %410, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i32 %413)
  %415 = load i32*, i32** %10, align 8
  %416 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 2
  %418 = load i8*, i8** %417, align 8
  %419 = call i32 @add_assoc_string(i32* %415, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i8* %418)
  %420 = load i32*, i32** %10, align 8
  %421 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %422 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %421, i32 0, i32 3
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @add_assoc_string(i32* %420, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* %423)
  %425 = load i32*, i32** %10, align 8
  %426 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %427 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %426, i32 0, i32 4
  %428 = load i8*, i8** %427, align 8
  %429 = call i32 @add_assoc_string(i32* %425, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* %428)
  %430 = load i32*, i32** %10, align 8
  %431 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %432 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %431, i32 0, i32 5
  %433 = load i8*, i8** %432, align 8
  %434 = call i32 @add_assoc_string(i32* %430, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i8* %433)
  br label %438

435:                                              ; preds = %81
  %436 = load i32*, i32** %10, align 8
  %437 = call i32 @ZVAL_UNDEF(i32* %436)
  br label %438

438:                                              ; preds = %48, %52, %68, %435, %399, %373, %365, %222, %206, %129, %83
  ret void
}

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i8*) #1

declare dso_local i32 @add_assoc_long(i32*, i8*, i32) #1

declare dso_local i32 @add_assoc_stringl(i32*, i8*, i8*, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local %struct.TYPE_27__* @zend_string_safe_alloc(i64, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @add_next_index_stringl(i32*, i32, i64) #1

declare dso_local i32 @add_assoc_str(i32*, i8*, %struct.TYPE_27__*) #1

declare dso_local i32 @add_assoc_zval(i32*, i8*, i32*) #1

declare dso_local zeroext i16 @htons(i32) #1

declare dso_local i32 @LOWORD(i64) #1

declare dso_local i32 @HIWORD(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
