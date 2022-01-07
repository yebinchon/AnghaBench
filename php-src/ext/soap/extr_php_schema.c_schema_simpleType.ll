; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_simpleType.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_simpleType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32*, i32* }
%struct.TYPE_35__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_34__*, %struct.TYPE_34__*, i32 }
%struct.TYPE_36__ = type { i8*, i8*, i8*, i32*, %struct.TYPE_36__*, i32, i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_36__*, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"targetNamespace\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@XSD_TYPEKIND_SIMPLE = common dso_local global i8* null, align 8
@delete_encoder = common dso_local global i32 0, align 4
@sdl_guess_convert_xml = common dso_local global i32 0, align 4
@sdl_guess_convert_zval = common dso_local global i32 0, align 4
@delete_type = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Parsing Schema: simpleType has no 'name' attribute\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"restriction\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@XSD_TYPEKIND_LIST = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@XSD_TYPEKIND_UNION = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [46 x i8] c"Parsing Schema: unexpected <%s> in simpleType\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"Parsing Schema: expected <restriction>, <list> or <union> in simpleType\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_37__*, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*)* @schema_simpleType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_simpleType(%struct.TYPE_37__* %0, %struct.TYPE_35__* %1, %struct.TYPE_34__* %2, %struct.TYPE_36__* %3) #0 {
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca %struct.TYPE_36__*, align 8
  %13 = alloca %struct.TYPE_36__*, align 8
  %14 = alloca %struct.TYPE_36__*, align 8
  %15 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %7, align 8
  store %struct.TYPE_36__* %3, %struct.TYPE_36__** %8, align 8
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_35__* @get_attribute(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_35__* %19, %struct.TYPE_35__** %11, align 8
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %21 = icmp eq %struct.TYPE_35__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_35__* %23, %struct.TYPE_35__** %11, align 8
  br label %24

24:                                               ; preds = %22, %4
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_35__* @get_attribute(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_35__* %28, %struct.TYPE_35__** %10, align 8
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %30 = icmp ne %struct.TYPE_36__* %29, null
  br i1 %30, label %31, label %144

31:                                               ; preds = %24
  %32 = call i8* @emalloc(i32 4)
  %33 = bitcast i8* %32 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %33, %struct.TYPE_36__** %12, align 8
  %34 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %35 = call i32 @memset(%struct.TYPE_36__* %34, i32 0, i32 4)
  %36 = load i8*, i8** @XSD_TYPEKIND_SIMPLE, align 8
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %40 = icmp ne %struct.TYPE_35__* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %31
  %42 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i8* @estrdup(i8* %47)
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i8* @estrdup(i8* %56)
  %58 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %73

60:                                               ; preds = %31
  %61 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @estrdup(i8* %63)
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @estrdup(i8* %69)
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %60, %41
  %74 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %78 = call %struct.TYPE_36__* @zend_hash_next_index_insert_ptr(i32* %76, %struct.TYPE_36__* %77)
  store %struct.TYPE_36__* %78, %struct.TYPE_36__** %13, align 8
  %79 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %73
  %84 = call i8* @emalloc(i32 4)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  %88 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @delete_encoder, align 4
  %92 = call i32 @zend_hash_init(i32* %90, i32 0, i32* null, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %83, %73
  %94 = call i8* @emalloc(i32 4)
  %95 = bitcast i8* %94 to %struct.TYPE_36__*
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 4
  store %struct.TYPE_36__* %95, %struct.TYPE_36__** %97, align 8
  %98 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_36__*, %struct.TYPE_36__** %99, align 8
  %101 = call i32 @memset(%struct.TYPE_36__* %100, i32 0, i32 4)
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @estrdup(i8* %104)
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_36__*, %struct.TYPE_36__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %109, i32 0, i32 2
  store i8* %105, i8** %110, align 8
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @estrdup(i8* %113)
  %115 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 1
  store i8* %114, i8** %119, align 8
  %120 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %121 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_36__*, %struct.TYPE_36__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 0
  store %struct.TYPE_36__* %120, %struct.TYPE_36__** %125, align 8
  %126 = load i32, i32* @sdl_guess_convert_xml, align 4
  %127 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %129, i32 0, i32 6
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* @sdl_guess_convert_zval, align 4
  %132 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 5
  store i32 %131, i32* %135, align 8
  %136 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_36__*, %struct.TYPE_36__** %140, align 8
  %142 = call %struct.TYPE_36__* @zend_hash_next_index_insert_ptr(i32* %138, %struct.TYPE_36__* %141)
  %143 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  store %struct.TYPE_36__* %143, %struct.TYPE_36__** %8, align 8
  br label %228

144:                                              ; preds = %24
  %145 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %146 = icmp ne %struct.TYPE_35__* %145, null
  br i1 %146, label %147, label %224

147:                                              ; preds = %144
  %148 = call i8* @emalloc(i32 4)
  %149 = bitcast i8* %148 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %149, %struct.TYPE_36__** %14, align 8
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %151 = call i32 @memset(%struct.TYPE_36__* %150, i32 0, i32 4)
  %152 = load i8*, i8** @XSD_TYPEKIND_SIMPLE, align 8
  %153 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = call i8* @estrdup(i8* %160)
  %162 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i8*
  %170 = call i8* @estrdup(i8* %169)
  %171 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %174 = icmp eq %struct.TYPE_36__* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %147
  %176 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %180 = call %struct.TYPE_36__* @zend_hash_next_index_insert_ptr(i32* %178, %struct.TYPE_36__* %179)
  store %struct.TYPE_36__* %180, %struct.TYPE_36__** %15, align 8
  br label %209

181:                                              ; preds = %147
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %196

186:                                              ; preds = %181
  %187 = call i8* @emalloc(i32 4)
  %188 = bitcast i8* %187 to i32*
  %189 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %189, i32 0, i32 3
  store i32* %188, i32** %190, align 8
  %191 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* @delete_type, align 4
  %195 = call i32 @zend_hash_init(i32* %193, i32 0, i32* null, i32 %194, i32 0)
  br label %196

196:                                              ; preds = %186, %181
  %197 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @strlen(i8* %205)
  %207 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %208 = call %struct.TYPE_36__* @zend_hash_str_update_ptr(i32* %199, i8* %202, i32 %206, %struct.TYPE_36__* %207)
  store %struct.TYPE_36__* %208, %struct.TYPE_36__** %15, align 8
  br label %209

209:                                              ; preds = %196, %175
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  store %struct.TYPE_36__* %210, %struct.TYPE_36__** %8, align 8
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %212 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %213 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @create_encoder(%struct.TYPE_37__* %211, %struct.TYPE_36__* %212, i64 %217, i64 %222)
  br label %227

224:                                              ; preds = %144
  %225 = load i32, i32* @E_ERROR, align 4
  %226 = call i32 @soap_error0(i32 %225, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %209
  br label %228

228:                                              ; preds = %227, %93
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %230, align 8
  store %struct.TYPE_34__* %231, %struct.TYPE_34__** %9, align 8
  %232 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %233 = icmp ne %struct.TYPE_34__* %232, null
  br i1 %233, label %234, label %242

234:                                              ; preds = %228
  %235 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %236 = call i64 @node_is_equal(%struct.TYPE_34__* %235, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %240, align 8
  store %struct.TYPE_34__* %241, %struct.TYPE_34__** %9, align 8
  br label %242

242:                                              ; preds = %238, %234, %228
  %243 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %244 = icmp ne %struct.TYPE_34__* %243, null
  br i1 %244, label %245, label %299

245:                                              ; preds = %242
  %246 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %247 = call i64 @node_is_equal(%struct.TYPE_34__* %246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %245
  %250 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %252 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %253 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %254 = call i32 @schema_restriction_simpleContent(%struct.TYPE_37__* %250, %struct.TYPE_35__* %251, %struct.TYPE_34__* %252, %struct.TYPE_36__* %253, i32 1)
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_34__*, %struct.TYPE_34__** %256, align 8
  store %struct.TYPE_34__* %257, %struct.TYPE_34__** %9, align 8
  br label %298

258:                                              ; preds = %245
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %260 = call i64 @node_is_equal(%struct.TYPE_34__* %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %258
  %263 = load i8*, i8** @XSD_TYPEKIND_LIST, align 8
  %264 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %264, i32 0, i32 2
  store i8* %263, i8** %265, align 8
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %268 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %269 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %270 = call i32 @schema_list(%struct.TYPE_37__* %266, %struct.TYPE_35__* %267, %struct.TYPE_34__* %268, %struct.TYPE_36__* %269)
  %271 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_34__*, %struct.TYPE_34__** %272, align 8
  store %struct.TYPE_34__* %273, %struct.TYPE_34__** %9, align 8
  br label %297

274:                                              ; preds = %258
  %275 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %276 = call i64 @node_is_equal(%struct.TYPE_34__* %275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %274
  %279 = load i8*, i8** @XSD_TYPEKIND_UNION, align 8
  %280 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %280, i32 0, i32 2
  store i8* %279, i8** %281, align 8
  %282 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %283 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %285 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %286 = call i32 @schema_union(%struct.TYPE_37__* %282, %struct.TYPE_35__* %283, %struct.TYPE_34__* %284, %struct.TYPE_36__* %285)
  %287 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_34__*, %struct.TYPE_34__** %288, align 8
  store %struct.TYPE_34__* %289, %struct.TYPE_34__** %9, align 8
  br label %296

290:                                              ; preds = %274
  %291 = load i32, i32* @E_ERROR, align 4
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @soap_error1(i32 %291, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %294)
  br label %296

296:                                              ; preds = %290, %278
  br label %297

297:                                              ; preds = %296, %262
  br label %298

298:                                              ; preds = %297, %249
  br label %302

299:                                              ; preds = %242
  %300 = load i32, i32* @E_ERROR, align 4
  %301 = call i32 @soap_error0(i32 %300, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0))
  br label %302

302:                                              ; preds = %299, %298
  %303 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %304 = icmp ne %struct.TYPE_34__* %303, null
  br i1 %304, label %305, label %311

305:                                              ; preds = %302
  %306 = load i32, i32* @E_ERROR, align 4
  %307 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @soap_error1(i32 %306, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %309)
  br label %311

311:                                              ; preds = %305, %302
  %312 = load i32, i32* @TRUE, align 4
  ret i32 %312
}

declare dso_local %struct.TYPE_35__* @get_attribute(i32, i8*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local %struct.TYPE_36__* @zend_hash_next_index_insert_ptr(i32*, %struct.TYPE_36__*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_36__* @zend_hash_str_update_ptr(i32*, i8*, i32, %struct.TYPE_36__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @create_encoder(%struct.TYPE_37__*, %struct.TYPE_36__*, i64, i64) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @schema_restriction_simpleContent(%struct.TYPE_37__*, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*, i32) #1

declare dso_local i32 @schema_list(%struct.TYPE_37__*, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @schema_union(%struct.TYPE_37__*, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
