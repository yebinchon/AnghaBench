; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_col_meta.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_col_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@FAILURE = common dso_local global i32 0, align 4
@OCIParamGet = common dso_local global i32 0, align 4
@OCI_HTYPE_STMT = common dso_local global i32 0, align 4
@OCIAttrGet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"OCI_ATTR_DATA_TYPE\00", align 1
@OCI_DTYPE_PARAM = common dso_local global i32 0, align 4
@OCI_ATTR_DATA_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"OCI_ATTR_PRECISION\00", align 1
@OCI_ATTR_PRECISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"OCI_ATTR_SCALE\00", align 1
@OCI_ATTR_SCALE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"OCI_ATTR_CHARSET_FORM\00", align 1
@OCI_ATTR_CHARSET_FORM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"oci:decl_type\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"TIMESTAMP\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"native_type\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"TIMESTAMP WITH TIMEZONE\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"TIMESTAMP WITH LOCAL TIMEZONE\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"INTERVAL YEAR TO MONTH\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"INTERVAL DAY TO SECOND\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"DATE\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"FLOAT\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"NUMBER\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"LONG\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"RAW\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"LONG RAW\00", align 1
@SQLCS_NCHAR = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"NVARCHAR2\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"VARCHAR2\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"NCHAR\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"BLOB\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"NCLOB\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"CLOB\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"BFILE\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"ROWID\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"BINARY_FLOAT\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"BINARY_DOUBLE\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"OCI_ATTR_IS_NULL\00", align 1
@OCI_ATTR_IS_NULL = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"nullable\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"not_null\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"pdo_type\00", align 1
@PDO_PARAM_LOB = common dso_local global i32 0, align 4
@PDO_PARAM_STR = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i32*)* @oci_stmt_col_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_stmt_col_meta(%struct.TYPE_4__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %8, align 8
  store i32* null, i32** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @FAILURE, align 4
  store i32 %25, i32* %4, align 4
  br label %292

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @FAILURE, align 4
  store i32 %33, i32* %4, align 4
  br label %292

34:                                               ; preds = %26
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @array_init(i32* %35)
  %37 = call i32 @array_init(i32* %13)
  %38 = load i32, i32* @OCIParamGet, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = bitcast i32** %9 to i32*
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, 1
  %49 = trunc i64 %48 to i32
  %50 = call i32 @STMT_CALL(i32 %38, i32 %49)
  %51 = load i32, i32* @OCIAttrGet, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @OCI_DTYPE_PARAM, align 4
  %54 = load i32, i32* @OCI_ATTR_DATA_TYPE, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @STMT_CALL_MSG(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %59)
  %61 = load i32, i32* @OCIAttrGet, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* @OCI_DTYPE_PARAM, align 4
  %64 = load i32, i32* @OCI_ATTR_PRECISION, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  %70 = call i32 @STMT_CALL_MSG(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %69)
  %71 = load i32, i32* @OCIAttrGet, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @OCI_DTYPE_PARAM, align 4
  %74 = load i32, i32* @OCI_ATTR_SCALE, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i32*
  %80 = call i32 @STMT_CALL_MSG(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %79)
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 143
  br i1 %82, label %92, label %83

83:                                               ; preds = %34
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 128
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 149
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 142
  br i1 %91, label %92, label %103

92:                                               ; preds = %89, %86, %83, %34
  %93 = load i32, i32* @OCIAttrGet, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @OCI_DTYPE_PARAM, align 4
  %96 = load i32, i32* @OCI_ATTR_CHARSET_FORM, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i32*
  %102 = call i32 @STMT_CALL_MSG(i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %101)
  br label %103

103:                                              ; preds = %92, %89
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %250

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  switch i32 %107, label %243 [
    i32 131, label %108
    i32 129, label %113
    i32 130, label %118
    i32 136, label %123
    i32 137, label %128
    i32 141, label %133
    i32 140, label %138
    i32 133, label %138
    i32 134, label %155
    i32 145, label %160
    i32 135, label %165
    i32 143, label %170
    i32 128, label %170
    i32 149, label %185
    i32 144, label %200
    i32 142, label %206
    i32 147, label %222
    i32 132, label %228
    i32 146, label %233
    i32 138, label %233
    i32 148, label %238
    i32 139, label %238
  ]

108:                                              ; preds = %106
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @add_assoc_string(i32* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @add_assoc_string(i32* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %249

113:                                              ; preds = %106
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @add_assoc_string(i32* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @add_assoc_string(i32* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %249

118:                                              ; preds = %106
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @add_assoc_string(i32* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @add_assoc_string(i32* %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %249

123:                                              ; preds = %106
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @add_assoc_string(i32* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @add_assoc_string(i32* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %249

128:                                              ; preds = %106
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @add_assoc_string(i32* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @add_assoc_string(i32* %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %249

133:                                              ; preds = %106
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @add_assoc_string(i32* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @add_assoc_string(i32* %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %249

138:                                              ; preds = %106, %106
  %139 = load i32, i32* %12, align 4
  %140 = icmp eq i32 %139, -127
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @add_assoc_string(i32* %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @add_assoc_string(i32* %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %154

149:                                              ; preds = %141, %138
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @add_assoc_string(i32* %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @add_assoc_string(i32* %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %154

154:                                              ; preds = %149, %144
  br label %249

155:                                              ; preds = %106
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @add_assoc_string(i32* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @add_assoc_string(i32* %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %249

160:                                              ; preds = %106
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @add_assoc_string(i32* %161, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @add_assoc_string(i32* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %249

165:                                              ; preds = %106
  %166 = load i32*, i32** %7, align 8
  %167 = call i32 @add_assoc_string(i32* %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @add_assoc_string(i32* %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %249

170:                                              ; preds = %106, %106
  %171 = load i64, i64* %15, align 8
  %172 = load i64, i64* @SQLCS_NCHAR, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @add_assoc_string(i32* %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @add_assoc_string(i32* %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %184

179:                                              ; preds = %170
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @add_assoc_string(i32* %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %182 = load i32*, i32** %7, align 8
  %183 = call i32 @add_assoc_string(i32* %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %184

184:                                              ; preds = %179, %174
  br label %249

185:                                              ; preds = %106
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* @SQLCS_NCHAR, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @add_assoc_string(i32* %190, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @add_assoc_string(i32* %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %199

194:                                              ; preds = %185
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @add_assoc_string(i32* %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %197 = load i32*, i32** %7, align 8
  %198 = call i32 @add_assoc_string(i32* %197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %199

199:                                              ; preds = %194, %189
  br label %249

200:                                              ; preds = %106
  %201 = load i32*, i32** %7, align 8
  %202 = call i32 @add_assoc_string(i32* %201, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %203 = call i32 @add_next_index_string(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %204 = load i32*, i32** %7, align 8
  %205 = call i32 @add_assoc_string(i32* %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  br label %249

206:                                              ; preds = %106
  %207 = load i64, i64* %15, align 8
  %208 = load i64, i64* @SQLCS_NCHAR, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @add_assoc_string(i32* %211, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %213 = load i32*, i32** %7, align 8
  %214 = call i32 @add_assoc_string(i32* %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  br label %220

215:                                              ; preds = %206
  %216 = load i32*, i32** %7, align 8
  %217 = call i32 @add_assoc_string(i32* %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %218 = load i32*, i32** %7, align 8
  %219 = call i32 @add_assoc_string(i32* %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  br label %220

220:                                              ; preds = %215, %210
  %221 = call i32 @add_next_index_string(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  br label %249

222:                                              ; preds = %106
  %223 = load i32*, i32** %7, align 8
  %224 = call i32 @add_assoc_string(i32* %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  %225 = call i32 @add_next_index_string(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %226 = load i32*, i32** %7, align 8
  %227 = call i32 @add_assoc_string(i32* %226, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  br label %249

228:                                              ; preds = %106
  %229 = load i32*, i32** %7, align 8
  %230 = call i32 @add_assoc_string(i32* %229, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %231 = load i32*, i32** %7, align 8
  %232 = call i32 @add_assoc_string(i32* %231, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  br label %249

233:                                              ; preds = %106, %106
  %234 = load i32*, i32** %7, align 8
  %235 = call i32 @add_assoc_string(i32* %234, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %236 = load i32*, i32** %7, align 8
  %237 = call i32 @add_assoc_string(i32* %236, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  br label %249

238:                                              ; preds = %106, %106
  %239 = load i32*, i32** %7, align 8
  %240 = call i32 @add_assoc_string(i32* %239, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %241 = load i32*, i32** %7, align 8
  %242 = call i32 @add_assoc_string(i32* %241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  br label %249

243:                                              ; preds = %106
  %244 = load i32*, i32** %7, align 8
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @add_assoc_long(i32* %244, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %245)
  %247 = load i32*, i32** %7, align 8
  %248 = call i32 @add_assoc_string(i32* %247, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  br label %249

249:                                              ; preds = %243, %238, %233, %228, %222, %220, %200, %199, %184, %165, %160, %155, %154, %133, %128, %123, %118, %113, %108
  br label %255

250:                                              ; preds = %103
  %251 = load i32*, i32** %7, align 8
  %252 = call i32 @add_assoc_long(i32* %251, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %253 = load i32*, i32** %7, align 8
  %254 = call i32 @add_assoc_string(i32* %253, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  br label %255

255:                                              ; preds = %250, %249
  %256 = load i32, i32* @OCIAttrGet, align 4
  %257 = load i32*, i32** %9, align 8
  %258 = load i32, i32* @OCI_DTYPE_PARAM, align 4
  %259 = load i32, i32* @OCI_ATTR_IS_NULL, align 4
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = inttoptr i64 %263 to i32*
  %265 = call i32 @STMT_CALL_MSG(i32 %256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i32* %264)
  %266 = load i64, i64* %14, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %255
  %269 = call i32 @add_next_index_string(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  br label %272

270:                                              ; preds = %255
  %271 = call i32 @add_next_index_string(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0))
  br label %272

272:                                              ; preds = %270, %268
  %273 = load i32, i32* %10, align 4
  switch i32 %273, label %278 [
    i32 147, label %274
    i32 144, label %274
    i32 142, label %274
  ]

274:                                              ; preds = %272, %272, %272
  %275 = load i32*, i32** %7, align 8
  %276 = load i32, i32* @PDO_PARAM_LOB, align 4
  %277 = call i32 @add_assoc_long(i32* %275, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i32 %276)
  br label %282

278:                                              ; preds = %272
  %279 = load i32*, i32** %7, align 8
  %280 = load i32, i32* @PDO_PARAM_STR, align 4
  %281 = call i32 @add_assoc_long(i32* %279, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i32 %280)
  br label %282

282:                                              ; preds = %278, %274
  %283 = load i32*, i32** %7, align 8
  %284 = load i32, i32* %12, align 4
  %285 = call i32 @add_assoc_long(i32* %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i32 %284)
  %286 = load i32*, i32** %7, align 8
  %287 = call i32 @add_assoc_zval(i32* %286, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i32* %13)
  %288 = load i32*, i32** %9, align 8
  %289 = load i32, i32* @OCI_DTYPE_PARAM, align 4
  %290 = call i32 @OCIDescriptorFree(i32* %288, i32 %289)
  %291 = load i32, i32* @SUCCESS, align 4
  store i32 %291, i32* %4, align 4
  br label %292

292:                                              ; preds = %282, %32, %24
  %293 = load i32, i32* %4, align 4
  ret i32 %293
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @STMT_CALL(i32, i32) #1

declare dso_local i32 @STMT_CALL_MSG(i32, i8*, i32*) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i8*) #1

declare dso_local i32 @add_next_index_string(i32*, i8*) #1

declare dso_local i32 @add_assoc_long(i32*, i8*, i32) #1

declare dso_local i32 @add_assoc_zval(i32*, i8*, i32*) #1

declare dso_local i32 @OCIDescriptorFree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
