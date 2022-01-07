; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_complexType.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_complexType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_56__ = type { i32*, i32* }
%struct.TYPE_54__ = type { %struct.TYPE_52__* }
%struct.TYPE_52__ = type { i64 }
%struct.TYPE_53__ = type { i32, %struct.TYPE_53__*, %struct.TYPE_53__*, %struct.TYPE_54__* }
%struct.TYPE_55__ = type { i8*, i8*, i8*, %struct.TYPE_55__*, i32, i32, %struct.TYPE_51__ }
%struct.TYPE_51__ = type { %struct.TYPE_55__*, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"targetNamespace\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@XSD_TYPEKIND_COMPLEX = common dso_local global i8* null, align 8
@delete_encoder = common dso_local global i32 0, align 4
@sdl_guess_convert_xml = common dso_local global i32 0, align 4
@sdl_guess_convert_zval = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Parsing Schema: complexType has no 'name' attribute\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"simpleContent\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"complexContent\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"choice\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"attributeGroup\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"anyAttribute\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Parsing Schema: unexpected <%s> in complexType\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_56__*, %struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_55__*)* @schema_complexType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_complexType(%struct.TYPE_56__* %0, %struct.TYPE_54__* %1, %struct.TYPE_53__* %2, %struct.TYPE_55__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_56__*, align 8
  %7 = alloca %struct.TYPE_54__*, align 8
  %8 = alloca %struct.TYPE_53__*, align 8
  %9 = alloca %struct.TYPE_55__*, align 8
  %10 = alloca %struct.TYPE_53__*, align 8
  %11 = alloca %struct.TYPE_54__*, align 8
  %12 = alloca %struct.TYPE_54__*, align 8
  %13 = alloca %struct.TYPE_54__*, align 8
  %14 = alloca %struct.TYPE_55__*, align 8
  %15 = alloca %struct.TYPE_55__*, align 8
  %16 = alloca %struct.TYPE_55__*, align 8
  %17 = alloca %struct.TYPE_55__*, align 8
  store %struct.TYPE_56__* %0, %struct.TYPE_56__** %6, align 8
  store %struct.TYPE_54__* %1, %struct.TYPE_54__** %7, align 8
  store %struct.TYPE_53__* %2, %struct.TYPE_53__** %8, align 8
  store %struct.TYPE_55__* %3, %struct.TYPE_55__** %9, align 8
  %18 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_54__*, %struct.TYPE_54__** %19, align 8
  store %struct.TYPE_54__* %20, %struct.TYPE_54__** %11, align 8
  %21 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %22 = call %struct.TYPE_54__* @get_attribute(%struct.TYPE_54__* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_54__* %22, %struct.TYPE_54__** %13, align 8
  %23 = load %struct.TYPE_54__*, %struct.TYPE_54__** %13, align 8
  %24 = icmp eq %struct.TYPE_54__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load %struct.TYPE_54__*, %struct.TYPE_54__** %7, align 8
  store %struct.TYPE_54__* %26, %struct.TYPE_54__** %13, align 8
  br label %27

27:                                               ; preds = %25, %4
  %28 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %29 = call %struct.TYPE_54__* @get_attribute(%struct.TYPE_54__* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_54__* %29, %struct.TYPE_54__** %12, align 8
  %30 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %31 = icmp ne %struct.TYPE_55__* %30, null
  br i1 %31, label %32, label %145

32:                                               ; preds = %27
  %33 = call i8* @emalloc(i32 4)
  %34 = bitcast i8* %33 to %struct.TYPE_55__*
  store %struct.TYPE_55__* %34, %struct.TYPE_55__** %14, align 8
  %35 = load %struct.TYPE_55__*, %struct.TYPE_55__** %14, align 8
  %36 = call i32 @memset(%struct.TYPE_55__* %35, i32 0, i32 4)
  %37 = load i8*, i8** @XSD_TYPEKIND_COMPLEX, align 8
  %38 = load %struct.TYPE_55__*, %struct.TYPE_55__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_54__*, %struct.TYPE_54__** %12, align 8
  %41 = icmp ne %struct.TYPE_54__* %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %32
  %43 = load %struct.TYPE_54__*, %struct.TYPE_54__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_52__*, %struct.TYPE_52__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i8* @estrdup(i8* %48)
  %50 = load %struct.TYPE_55__*, %struct.TYPE_55__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_54__*, %struct.TYPE_54__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_52__*, %struct.TYPE_52__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i8* @estrdup(i8* %57)
  %59 = load %struct.TYPE_55__*, %struct.TYPE_55__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %74

61:                                               ; preds = %32
  %62 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @estrdup(i8* %64)
  %66 = load %struct.TYPE_55__*, %struct.TYPE_55__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @estrdup(i8* %70)
  %72 = load %struct.TYPE_55__*, %struct.TYPE_55__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %61, %42
  %75 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_55__*, %struct.TYPE_55__** %14, align 8
  %79 = call %struct.TYPE_55__* @zend_hash_next_index_insert_ptr(i32* %77, %struct.TYPE_55__* %78)
  store %struct.TYPE_55__* %79, %struct.TYPE_55__** %15, align 8
  %80 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %74
  %85 = call i8* @emalloc(i32 4)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %87, i32 0, i32 1
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @delete_encoder, align 4
  %93 = call i32 @zend_hash_init(i32* %91, i32 0, i32* null, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %84, %74
  %95 = call i8* @emalloc(i32 4)
  %96 = bitcast i8* %95 to %struct.TYPE_55__*
  %97 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %97, i32 0, i32 3
  store %struct.TYPE_55__* %96, %struct.TYPE_55__** %98, align 8
  %99 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_55__*, %struct.TYPE_55__** %100, align 8
  %102 = call i32 @memset(%struct.TYPE_55__* %101, i32 0, i32 4)
  %103 = load %struct.TYPE_55__*, %struct.TYPE_55__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @estrdup(i8* %105)
  %107 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_55__*, %struct.TYPE_55__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %110, i32 0, i32 2
  store i8* %106, i8** %111, align 8
  %112 = load %struct.TYPE_55__*, %struct.TYPE_55__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @estrdup(i8* %114)
  %116 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_55__*, %struct.TYPE_55__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %119, i32 0, i32 1
  store i8* %115, i8** %120, align 8
  %121 = load %struct.TYPE_55__*, %struct.TYPE_55__** %15, align 8
  %122 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_55__*, %struct.TYPE_55__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %125, i32 0, i32 0
  store %struct.TYPE_55__* %121, %struct.TYPE_55__** %126, align 8
  %127 = load i32, i32* @sdl_guess_convert_xml, align 4
  %128 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_55__*, %struct.TYPE_55__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %130, i32 0, i32 5
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* @sdl_guess_convert_zval, align 4
  %133 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_55__*, %struct.TYPE_55__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %135, i32 0, i32 4
  store i32 %132, i32* %136, align 8
  %137 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_55__*, %struct.TYPE_55__** %141, align 8
  %143 = call %struct.TYPE_55__* @zend_hash_next_index_insert_ptr(i32* %139, %struct.TYPE_55__* %142)
  %144 = load %struct.TYPE_55__*, %struct.TYPE_55__** %15, align 8
  store %struct.TYPE_55__* %144, %struct.TYPE_55__** %9, align 8
  br label %198

145:                                              ; preds = %27
  %146 = load %struct.TYPE_54__*, %struct.TYPE_54__** %12, align 8
  %147 = icmp ne %struct.TYPE_54__* %146, null
  br i1 %147, label %148, label %193

148:                                              ; preds = %145
  %149 = call i8* @emalloc(i32 4)
  %150 = bitcast i8* %149 to %struct.TYPE_55__*
  store %struct.TYPE_55__* %150, %struct.TYPE_55__** %16, align 8
  %151 = load %struct.TYPE_55__*, %struct.TYPE_55__** %16, align 8
  %152 = call i32 @memset(%struct.TYPE_55__* %151, i32 0, i32 4)
  %153 = load i8*, i8** @XSD_TYPEKIND_COMPLEX, align 8
  %154 = load %struct.TYPE_55__*, %struct.TYPE_55__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_54__*, %struct.TYPE_54__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_52__*, %struct.TYPE_52__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to i8*
  %162 = call i8* @estrdup(i8* %161)
  %163 = load %struct.TYPE_55__*, %struct.TYPE_55__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  %165 = load %struct.TYPE_54__*, %struct.TYPE_54__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_52__*, %struct.TYPE_52__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i8*
  %171 = call i8* @estrdup(i8* %170)
  %172 = load %struct.TYPE_55__*, %struct.TYPE_55__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.TYPE_55__*, %struct.TYPE_55__** %16, align 8
  %178 = call %struct.TYPE_55__* @zend_hash_next_index_insert_ptr(i32* %176, %struct.TYPE_55__* %177)
  store %struct.TYPE_55__* %178, %struct.TYPE_55__** %17, align 8
  %179 = load %struct.TYPE_55__*, %struct.TYPE_55__** %17, align 8
  store %struct.TYPE_55__* %179, %struct.TYPE_55__** %9, align 8
  %180 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %181 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %182 = load %struct.TYPE_54__*, %struct.TYPE_54__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_52__*, %struct.TYPE_52__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_54__*, %struct.TYPE_54__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_52__*, %struct.TYPE_52__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @create_encoder(%struct.TYPE_56__* %180, %struct.TYPE_55__* %181, i64 %186, i64 %191)
  br label %197

193:                                              ; preds = %145
  %194 = load i32, i32* @E_ERROR, align 4
  %195 = call i32 @soap_error0(i32 %194, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32, i32* @FALSE, align 4
  store i32 %196, i32* %5, align 4
  br label %354

197:                                              ; preds = %148
  br label %198

198:                                              ; preds = %197, %94
  %199 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_53__*, %struct.TYPE_53__** %200, align 8
  store %struct.TYPE_53__* %201, %struct.TYPE_53__** %10, align 8
  %202 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %203 = icmp ne %struct.TYPE_53__* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %198
  %205 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %206 = call i64 @node_is_equal(%struct.TYPE_53__* %205, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_53__*, %struct.TYPE_53__** %210, align 8
  store %struct.TYPE_53__* %211, %struct.TYPE_53__** %10, align 8
  br label %212

212:                                              ; preds = %208, %204, %198
  %213 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %214 = icmp ne %struct.TYPE_53__* %213, null
  br i1 %214, label %215, label %343

215:                                              ; preds = %212
  %216 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %217 = call i64 @node_is_equal(%struct.TYPE_53__* %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %215
  %220 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %221 = load %struct.TYPE_54__*, %struct.TYPE_54__** %7, align 8
  %222 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %223 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %224 = call i32 @schema_simpleContent(%struct.TYPE_56__* %220, %struct.TYPE_54__* %221, %struct.TYPE_53__* %222, %struct.TYPE_55__* %223)
  %225 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_53__*, %struct.TYPE_53__** %226, align 8
  store %struct.TYPE_53__* %227, %struct.TYPE_53__** %10, align 8
  br label %342

228:                                              ; preds = %215
  %229 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %230 = call i64 @node_is_equal(%struct.TYPE_53__* %229, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %228
  %233 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %234 = load %struct.TYPE_54__*, %struct.TYPE_54__** %7, align 8
  %235 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %236 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %237 = call i32 @schema_complexContent(%struct.TYPE_56__* %233, %struct.TYPE_54__* %234, %struct.TYPE_53__* %235, %struct.TYPE_55__* %236)
  %238 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_53__*, %struct.TYPE_53__** %239, align 8
  store %struct.TYPE_53__* %240, %struct.TYPE_53__** %10, align 8
  br label %341

241:                                              ; preds = %228
  %242 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %243 = call i64 @node_is_equal(%struct.TYPE_53__* %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %241
  %246 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %247 = load %struct.TYPE_54__*, %struct.TYPE_54__** %7, align 8
  %248 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %249 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %250 = call i32 @schema_group(%struct.TYPE_56__* %246, %struct.TYPE_54__* %247, %struct.TYPE_53__* %248, %struct.TYPE_55__* %249, i32* null)
  %251 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_53__*, %struct.TYPE_53__** %252, align 8
  store %struct.TYPE_53__* %253, %struct.TYPE_53__** %10, align 8
  br label %296

254:                                              ; preds = %241
  %255 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %256 = call i64 @node_is_equal(%struct.TYPE_53__* %255, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %254
  %259 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %260 = load %struct.TYPE_54__*, %struct.TYPE_54__** %7, align 8
  %261 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %262 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %263 = call i32 @schema_all(%struct.TYPE_56__* %259, %struct.TYPE_54__* %260, %struct.TYPE_53__* %261, %struct.TYPE_55__* %262, i32* null)
  %264 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_53__*, %struct.TYPE_53__** %265, align 8
  store %struct.TYPE_53__* %266, %struct.TYPE_53__** %10, align 8
  br label %295

267:                                              ; preds = %254
  %268 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %269 = call i64 @node_is_equal(%struct.TYPE_53__* %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %267
  %272 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %273 = load %struct.TYPE_54__*, %struct.TYPE_54__** %7, align 8
  %274 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %275 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %276 = call i32 @schema_choice(%struct.TYPE_56__* %272, %struct.TYPE_54__* %273, %struct.TYPE_53__* %274, %struct.TYPE_55__* %275, i32* null)
  %277 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_53__*, %struct.TYPE_53__** %278, align 8
  store %struct.TYPE_53__* %279, %struct.TYPE_53__** %10, align 8
  br label %294

280:                                              ; preds = %267
  %281 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %282 = call i64 @node_is_equal(%struct.TYPE_53__* %281, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %280
  %285 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %286 = load %struct.TYPE_54__*, %struct.TYPE_54__** %7, align 8
  %287 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %288 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %289 = call i32 @schema_sequence(%struct.TYPE_56__* %285, %struct.TYPE_54__* %286, %struct.TYPE_53__* %287, %struct.TYPE_55__* %288, i32* null)
  %290 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_53__*, %struct.TYPE_53__** %291, align 8
  store %struct.TYPE_53__* %292, %struct.TYPE_53__** %10, align 8
  br label %293

293:                                              ; preds = %284, %280
  br label %294

294:                                              ; preds = %293, %271
  br label %295

295:                                              ; preds = %294, %258
  br label %296

296:                                              ; preds = %295, %245
  br label %297

297:                                              ; preds = %336, %296
  %298 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %299 = icmp ne %struct.TYPE_53__* %298, null
  br i1 %299, label %300, label %340

300:                                              ; preds = %297
  %301 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %302 = call i64 @node_is_equal(%struct.TYPE_53__* %301, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %300
  %305 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %306 = load %struct.TYPE_54__*, %struct.TYPE_54__** %7, align 8
  %307 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %308 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %309 = call i32 @schema_attribute(%struct.TYPE_56__* %305, %struct.TYPE_54__* %306, %struct.TYPE_53__* %307, %struct.TYPE_55__* %308, i32* null)
  br label %336

310:                                              ; preds = %300
  %311 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %312 = call i64 @node_is_equal(%struct.TYPE_53__* %311, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %310
  %315 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %316 = load %struct.TYPE_54__*, %struct.TYPE_54__** %7, align 8
  %317 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %318 = load %struct.TYPE_55__*, %struct.TYPE_55__** %9, align 8
  %319 = call i32 @schema_attributeGroup(%struct.TYPE_56__* %315, %struct.TYPE_54__* %316, %struct.TYPE_53__* %317, %struct.TYPE_55__* %318, i32* null)
  br label %335

320:                                              ; preds = %310
  %321 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %322 = call i64 @node_is_equal(%struct.TYPE_53__* %321, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %320
  %325 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_53__*, %struct.TYPE_53__** %326, align 8
  store %struct.TYPE_53__* %327, %struct.TYPE_53__** %10, align 8
  br label %340

328:                                              ; preds = %320
  %329 = load i32, i32* @E_ERROR, align 4
  %330 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @soap_error1(i32 %329, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 %332)
  br label %334

334:                                              ; preds = %328
  br label %335

335:                                              ; preds = %334, %314
  br label %336

336:                                              ; preds = %335, %304
  %337 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_53__*, %struct.TYPE_53__** %338, align 8
  store %struct.TYPE_53__* %339, %struct.TYPE_53__** %10, align 8
  br label %297

340:                                              ; preds = %324, %297
  br label %341

341:                                              ; preds = %340, %232
  br label %342

342:                                              ; preds = %341, %219
  br label %343

343:                                              ; preds = %342, %212
  %344 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %345 = icmp ne %struct.TYPE_53__* %344, null
  br i1 %345, label %346, label %352

346:                                              ; preds = %343
  %347 = load i32, i32* @E_ERROR, align 4
  %348 = load %struct.TYPE_53__*, %struct.TYPE_53__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @soap_error1(i32 %347, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 %350)
  br label %352

352:                                              ; preds = %346, %343
  %353 = load i32, i32* @TRUE, align 4
  store i32 %353, i32* %5, align 4
  br label %354

354:                                              ; preds = %352, %193
  %355 = load i32, i32* %5, align 4
  ret i32 %355
}

declare dso_local %struct.TYPE_54__* @get_attribute(%struct.TYPE_54__*, i8*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_55__*, i32, i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local %struct.TYPE_55__* @zend_hash_next_index_insert_ptr(i32*, %struct.TYPE_55__*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @create_encoder(%struct.TYPE_56__*, %struct.TYPE_55__*, i64, i64) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_53__*, i8*) #1

declare dso_local i32 @schema_simpleContent(%struct.TYPE_56__*, %struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_55__*) #1

declare dso_local i32 @schema_complexContent(%struct.TYPE_56__*, %struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_55__*) #1

declare dso_local i32 @schema_group(%struct.TYPE_56__*, %struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_55__*, i32*) #1

declare dso_local i32 @schema_all(%struct.TYPE_56__*, %struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_55__*, i32*) #1

declare dso_local i32 @schema_choice(%struct.TYPE_56__*, %struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_55__*, i32*) #1

declare dso_local i32 @schema_sequence(%struct.TYPE_56__*, %struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_55__*, i32*) #1

declare dso_local i32 @schema_attribute(%struct.TYPE_56__*, %struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_55__*, i32*) #1

declare dso_local i32 @schema_attributeGroup(%struct.TYPE_56__*, %struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_55__*, i32*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
