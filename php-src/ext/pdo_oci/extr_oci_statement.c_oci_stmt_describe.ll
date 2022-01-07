; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_describe.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.pdo_column_data*, i64 }
%struct.pdo_column_data = type { i32, i32, i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_6__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@OCIParamGet = common dso_local global i32 0, align 4
@OCI_HTYPE_STMT = common dso_local global i32 0, align 4
@OCIAttrGet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"OCI_ATTR_DATA_TYPE\00", align 1
@OCI_DTYPE_PARAM = common dso_local global i32 0, align 4
@OCI_ATTR_DATA_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"OCI_ATTR_DATA_SIZE\00", align 1
@OCI_ATTR_DATA_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"OCI_ATTR_PRECISION\00", align 1
@OCI_ATTR_PRECISION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"OCI_ATTR_NAME\00", align 1
@OCI_ATTR_NAME = common dso_local global i32 0, align 4
@SQLT_CHR = common dso_local global i32 0, align 4
@PDO_PARAM_STR = common dso_local global i8* null, align 8
@PDO_PARAM_LOB = common dso_local global i8* null, align 8
@OCIDescriptorAlloc = common dso_local global i32 0, align 4
@OCI_DTYPE_LOB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SQLT_DAT = common dso_local global i32 0, align 4
@SQLT_NUM = common dso_local global i32 0, align 4
@SQLT_RDD = common dso_local global i32 0, align 4
@OCIDefineByPos = common dso_local global i32 0, align 4
@OCI_DYNAMIC_FETCH = common dso_local global i32 0, align 4
@OCI_DEFAULT = common dso_local global i32 0, align 4
@OCIDefineDynamic = common dso_local global i32 0, align 4
@oci_define_callback = common dso_local global i32 0, align 4
@SQLT_IBDOUBLE = common dso_local global i32 0, align 4
@SQLT_IBFLOAT = common dso_local global i32 0, align 4
@SQLT_TIMESTAMP = common dso_local global i32 0, align 4
@SQLT_TIMESTAMP_TZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @oci_stmt_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_stmt_describe(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pdo_column_data*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %5, align 8
  store i32* null, i32** %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.pdo_column_data*, %struct.pdo_column_data** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %20, i64 %22
  store %struct.pdo_column_data* %23, %struct.pdo_column_data** %12, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %13, align 8
  %25 = load i32, i32* @OCIParamGet, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = bitcast i32** %6 to i32*
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @STMT_CALL(i32 %25, i32 %35)
  %37 = load i32, i32* @OCIAttrGet, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @OCI_DTYPE_PARAM, align 4
  %40 = load i32, i32* @OCI_ATTR_DATA_TYPE, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @STMT_CALL_MSG(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %45)
  %47 = load i32, i32* @OCIAttrGet, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @OCI_DTYPE_PARAM, align 4
  %50 = load i32, i32* @OCI_ATTR_DATA_SIZE, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i32*
  %56 = call i32 @STMT_CALL_MSG(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %55)
  %57 = load i32, i32* @OCIAttrGet, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @OCI_DTYPE_PARAM, align 4
  %60 = load i32, i32* @OCI_ATTR_PRECISION, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @STMT_CALL_MSG(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %65)
  %67 = load i32, i32* @OCIAttrGet, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @OCI_DTYPE_PARAM, align 4
  %70 = load i32, i32* @OCI_ATTR_NAME, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32 @STMT_CALL_MSG(i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %75)
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.pdo_column_data*, %struct.pdo_column_data** %12, align 8
  %79 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.pdo_column_data*, %struct.pdo_column_data** %12, align 8
  %82 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = bitcast i32* %83 to i8*
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @zend_string_init(i8* %84, i32 %85, i32 0)
  %87 = load %struct.pdo_column_data*, %struct.pdo_column_data** %12, align 8
  %88 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %89, i32* %96, align 8
  %97 = load i32, i32* %8, align 4
  switch i32 %97, label %161 [
    i32 129, label %98
    i32 128, label %98
    i32 131, label %132
    i32 130, label %132
    i32 132, label %160
  ]

98:                                               ; preds = %2, %2
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 129
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 132, i32* %8, align 4
  br label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @SQLT_CHR, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 512, i32* %111, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i8* @emalloc(i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 6
  store i8* %121, i8** %128, align 8
  %129 = load i8*, i8** @PDO_PARAM_STR, align 8
  %130 = load %struct.pdo_column_data*, %struct.pdo_column_data** %12, align 8
  %131 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  br label %236

132:                                              ; preds = %2, %2
  %133 = load i8*, i8** @PDO_PARAM_LOB, align 8
  %134 = load %struct.pdo_column_data*, %struct.pdo_column_data** %12, align 8
  %135 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* @OCIDescriptorAlloc, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 6
  %149 = bitcast i8** %148 to i32**
  %150 = load i32, i32* @OCI_DTYPE_LOB, align 4
  %151 = call i32 @STMT_CALL(i32 %136, i32 0)
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  store i32 8, i32* %158, align 4
  %159 = load i64, i64* @TRUE, align 8
  store i64 %159, i64* %13, align 8
  br label %236

160:                                              ; preds = %2
  br label %161

161:                                              ; preds = %2, %160
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @SQLT_DAT, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %173, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @SQLT_NUM, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @SQLT_RDD, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %169, %165, %161
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  store i32 512, i32* %180, align 4
  br label %214

181:                                              ; preds = %169
  %182 = load i32, i32* %8, align 4
  %183 = icmp eq i32 %182, 132
  br i1 %183, label %184, label %196

184:                                              ; preds = %181
  %185 = load %struct.pdo_column_data*, %struct.pdo_column_data** %12, align 8
  %186 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %187, 2
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  store i32 %188, i32* %195, align 4
  br label %213

196:                                              ; preds = %181
  %197 = load %struct.pdo_column_data*, %struct.pdo_column_data** %12, align 8
  %198 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %199, %204
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  store i32 %205, i32* %212, align 4
  br label %213

213:                                              ; preds = %196, %184
  br label %214

214:                                              ; preds = %213, %173
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = load i32, i32* %4, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  %224 = call i8* @emalloc(i32 %223)
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = load i32, i32* %4, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 6
  store i8* %224, i8** %231, align 8
  %232 = load i32, i32* @SQLT_CHR, align 4
  store i32 %232, i32* %8, align 4
  %233 = load i8*, i8** @PDO_PARAM_STR, align 8
  %234 = load %struct.pdo_column_data*, %struct.pdo_column_data** %12, align 8
  %235 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %234, i32 0, i32 2
  store i8* %233, i8** %235, align 8
  br label %236

236:                                              ; preds = %214, %132, %104
  %237 = load i32, i32* @OCIDefineByPos, align 4
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = load i32, i32* %4, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %4, align 4
  %252 = add nsw i32 %251, 1
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %254, align 8
  %256 = load i32, i32* %4, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 6
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = load i32, i32* %4, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %8, align 4
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %271, align 8
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 5
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %278, align 8
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 4
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %285, align 8
  %287 = load i32, i32* %4, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 3
  %291 = load i64, i64* %13, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %236
  %294 = load i32, i32* @OCI_DYNAMIC_FETCH, align 4
  br label %297

295:                                              ; preds = %236
  %296 = load i32, i32* @OCI_DEFAULT, align 4
  br label %297

297:                                              ; preds = %295, %293
  %298 = phi i32 [ %294, %293 ], [ %296, %295 ]
  %299 = call i32 @STMT_CALL(i32 %237, i32 %298)
  %300 = load i64, i64* %13, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %323

302:                                              ; preds = %297
  %303 = load i32, i32* @OCIDefineDynamic, align 4
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = load i32, i32* %4, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %316, align 8
  %318 = load i32, i32* %4, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i64 %319
  %321 = load i32, i32* @oci_define_callback, align 4
  %322 = call i32 @STMT_CALL(i32 %303, i32 %321)
  br label %323

323:                                              ; preds = %302, %297
  ret i32 1
}

declare dso_local i32 @STMT_CALL(i32, i32) #1

declare dso_local i32 @STMT_CALL_MSG(i32, i8*, i32*) #1

declare dso_local i32 @zend_string_init(i8*, i32, i32) #1

declare dso_local i8* @emalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
