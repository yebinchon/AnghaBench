; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_pdo_oci_handle_factory.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_pdo_oci_handle_factory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i8*, i32, i8*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32*, i8*, i8*, i8*, i32, i32 }
%struct.pdo_data_src_parser = type { i8*, i8*, i8*, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@PDO_OCI_PREFETCH_DEFAULT = common dso_local global i32 0, align 4
@pdo_oci_Env = common dso_local global i32* null, align 8
@OCI_HTYPE_ERROR = common dso_local global i32 0, align 4
@OCI_HTYPE_SERVER = common dso_local global i32 0, align 4
@OCI_DEFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"pdo_oci_handle_factory\00", align 1
@OCI_HTYPE_SVCCTX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"OCIHandleAlloc: OCI_HTYPE_SVCCTX\00", align 1
@OCI_HTYPE_SESSION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"OCIHandleAlloc: OCI_HTYPE_SESSION\00", align 1
@OCI_ATTR_SERVER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"OCIAttrSet: OCI_ATTR_SERVER\00", align 1
@OCI_ATTR_USERNAME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"OCIAttrSet: OCI_ATTR_USERNAME\00", align 1
@OCI_ATTR_PASSWORD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"OCIAttrSet: OCI_ATTR_PASSWORD\00", align 1
@OCI_CRED_RDBMS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"OCISessionBegin\00", align 1
@OCI_ATTR_SESSION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"OCIAttrSet: OCI_ATTR_SESSION\00", align 1
@OCI_NLS_CHARSET_MAXBYTESZ = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [48 x i8] c"OCINlsNumericInfoGet: OCI_NLS_CHARSET_MAXBYTESZ\00", align 1
@oci_methods = common dso_local global i32 0, align 4
@PDO_CASE_UPPER = common dso_local global i32 0, align 4
@OCI_SUCCESS = common dso_local global i64 0, align 8
@PDO_OCI_INIT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @pdo_oci_handle_factory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_oci_handle_factory(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x %struct.pdo_data_src_parser], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = bitcast [4 x %struct.pdo_data_src_parser]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 160, i1 false)
  %10 = bitcast i8* %9 to [4 x %struct.pdo_data_src_parser]*
  %11 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %10, i32 0, i32 1
  %14 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %15, align 8
  %16 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %10, i32 0, i32 2
  %17 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %10, i32 0, i32 3
  %19 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8** %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %8, i64 0, i64 0
  %27 = call i32 @php_pdo_parse_data_source(i32 %22, i32 %25, %struct.pdo_data_src_parser* %26, i32 4)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_6__* @pecalloc(i32 1, i32 64, i32 %30)
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 6
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %34, align 8
  %35 = load i32, i32* @PDO_OCI_PREFETCH_DEFAULT, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load i32*, i32** @pdo_oci_Env, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  store i32* %43, i32** %45, align 8
  br label %46

46:                                               ; preds = %42, %2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = bitcast i32* %51 to i32**
  %53 = load i32, i32* @OCI_HTYPE_ERROR, align 4
  %54 = call i8* @OCIHandleAlloc(i32* %49, i32** %52, i32 %53, i32 0, i32* null)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 7
  %60 = bitcast i8** %59 to i32**
  %61 = load i32, i32* @OCI_HTYPE_SERVER, align 4
  %62 = call i8* @OCIHandleAlloc(i32* %57, i32** %60, i32 %61, i32 0, i32* null)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 7
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %8, i64 0, i64 1
  %70 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %8, i64 0, i64 1
  %74 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @OCI_DEFAULT, align 4
  %79 = call i8* @OCIServerAttach(i8* %65, i32 %68, i32* %72, i32 %77, i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %46
  %87 = call i32 @oci_drv_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %318

88:                                               ; preds = %46
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 6
  %96 = bitcast i8** %95 to i32**
  %97 = load i32, i32* @OCI_HTYPE_SVCCTX, align 4
  %98 = call i8* @OCIHandleAlloc(i32* %93, i32** %96, i32 %97, i32 0, i32* null)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %88
  %106 = call i32 @oci_drv_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %318

107:                                              ; preds = %88
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  %113 = bitcast i8** %112 to i32**
  %114 = load i32, i32* @OCI_HTYPE_SESSION, align 4
  %115 = call i8* @OCIHandleAlloc(i32* %110, i32** %113, i32 %114, i32 0, i32* null)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %107
  %123 = call i32 @oci_drv_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %318

124:                                              ; preds = %107
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 6
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* @OCI_HTYPE_SVCCTX, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 7
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* @OCI_ATTR_SERVER, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @OCIAttrSet(i8* %127, i32 %128, i8* %131, i32 0, i32 %132, i32 %135)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %124
  %144 = call i32 @oci_drv_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %318

145:                                              ; preds = %124
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 5
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %165, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %8, i64 0, i64 2
  %152 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 16
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %165

155:                                              ; preds = %150
  %156 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %8, i64 0, i64 2
  %157 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 16
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @pestrdup(i8* %158, i32 %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 5
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %155, %150, %145
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 5
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %197

170:                                              ; preds = %165
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 5
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* @OCI_HTYPE_SESSION, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 5
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 5
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @strlen(i8* %180)
  %182 = trunc i64 %181 to i32
  %183 = load i32, i32* @OCI_ATTR_USERNAME, align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @OCIAttrSet(i8* %173, i32 %174, i8* %177, i32 %182, i32 %183, i32 %186)
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %170
  %195 = call i32 @oci_drv_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %318

196:                                              ; preds = %170
  br label %197

197:                                              ; preds = %196, %165
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %217, label %202

202:                                              ; preds = %197
  %203 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %8, i64 0, i64 3
  %204 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %203, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %8, i64 0, i64 3
  %209 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = call i8* @pestrdup(i8* %210, i32 %213)
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  store i8* %214, i8** %216, align 8
  br label %217

217:                                              ; preds = %207, %202, %197
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 3
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %249

222:                                              ; preds = %217
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 5
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* @OCI_HTYPE_SESSION, align 4
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 3
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 3
  %232 = load i8*, i8** %231, align 8
  %233 = call i64 @strlen(i8* %232)
  %234 = trunc i64 %233 to i32
  %235 = load i32, i32* @OCI_ATTR_PASSWORD, align 4
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = call i8* @OCIAttrSet(i8* %225, i32 %226, i8* %229, i32 %234, i32 %235, i32 %238)
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %248

246:                                              ; preds = %222
  %247 = call i32 @oci_drv_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %318

248:                                              ; preds = %222
  br label %249

249:                                              ; preds = %248, %217
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 6
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 5
  %258 = load i8*, i8** %257, align 8
  %259 = load i32, i32* @OCI_CRED_RDBMS, align 4
  %260 = load i32, i32* @OCI_DEFAULT, align 4
  %261 = call i8* @OCISessionBegin(i8* %252, i32 %255, i8* %258, i32 %259, i32 %260)
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  store i8* %261, i8** %263, align 8
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %249
  %269 = call i32 @oci_drv_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %318

270:                                              ; preds = %249
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 6
  %273 = load i8*, i8** %272, align 8
  %274 = load i32, i32* @OCI_HTYPE_SVCCTX, align 4
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 5
  %277 = load i8*, i8** %276, align 8
  %278 = load i32, i32* @OCI_ATTR_SESSION, align 4
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @OCIAttrSet(i8* %273, i32 %274, i8* %277, i32 0, i32 %278, i32 %281)
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  store i8* %282, i8** %284, align 8
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load i8*, i8** %286, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %291

289:                                              ; preds = %270
  %290 = call i32 @oci_drv_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %318

291:                                              ; preds = %270
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 4
  %294 = load i32*, i32** %293, align 8
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 2
  %300 = load i32, i32* @OCI_NLS_CHARSET_MAXBYTESZ, align 4
  %301 = call i8* @OCINlsNumericInfoGet(i32* %294, i32 %297, i32* %299, i32 %300)
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 1
  store i8* %301, i8** %303, align 8
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 1
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %310

308:                                              ; preds = %291
  %309 = call i32 @oci_drv_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  br label %318

310:                                              ; preds = %291
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 2
  store i32* @oci_methods, i32** %312, align 8
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 0
  store i32 1, i32* %314, align 8
  %315 = load i32, i32* @PDO_CASE_UPPER, align 4
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 4
  store i32 1, i32* %7, align 4
  br label %318

318:                                              ; preds = %310, %308, %289, %268, %246, %194, %143, %122, %105, %86
  store i32 0, i32* %6, align 4
  br label %319

319:                                              ; preds = %338, %318
  %320 = load i32, i32* %6, align 4
  %321 = sext i32 %320 to i64
  %322 = icmp ult i64 %321, 4
  br i1 %322, label %323, label %341

323:                                              ; preds = %319
  %324 = load i32, i32* %6, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %8, i64 0, i64 %325
  %327 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %323
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [4 x %struct.pdo_data_src_parser], [4 x %struct.pdo_data_src_parser]* %8, i64 0, i64 %332
  %334 = getelementptr inbounds %struct.pdo_data_src_parser, %struct.pdo_data_src_parser* %333, i32 0, i32 2
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 @efree(i8* %335)
  br label %337

337:                                              ; preds = %330, %323
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %6, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %6, align 4
  br label %319

341:                                              ; preds = %319
  %342 = load i32, i32* %7, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %341
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %346 = call i32 @oci_handle_closer(%struct.TYPE_7__* %345)
  br label %347

347:                                              ; preds = %344, %341
  %348 = load i32, i32* %7, align 4
  ret i32 %348
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @php_pdo_parse_data_source(i32, i32, %struct.pdo_data_src_parser*, i32) #2

declare dso_local %struct.TYPE_6__* @pecalloc(i32, i32, i32) #2

declare dso_local i8* @OCIHandleAlloc(i32*, i32**, i32, i32, i32*) #2

declare dso_local i8* @OCIServerAttach(i8*, i32, i32*, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @oci_drv_error(i8*) #2

declare dso_local i8* @OCIAttrSet(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i8* @pestrdup(i8*, i32) #2

declare dso_local i8* @OCISessionBegin(i8*, i32, i8*, i32, i32) #2

declare dso_local i8* @OCINlsNumericInfoGet(i32*, i32, i32*, i32) #2

declare dso_local i32 @efree(i8*) #2

declare dso_local i32 @oci_handle_closer(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
