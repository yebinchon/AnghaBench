; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_param_hook.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_param_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.pdo_bound_param_data = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_13__*, i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i32*, i32, i32, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__*, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32* }

@OCI_DTYPE_LOB = common dso_local global i32 0, align 4
@SQLT_BLOB = common dso_local global i32 0, align 4
@SQLT_CHR = common dso_local global i32 0, align 4
@OCIBindByName = common dso_local global i32 0, align 4
@OCI_DATA_AT_EXEC = common dso_local global i32 0, align 4
@OCIBindByPos = common dso_local global i32 0, align 4
@OCIBindDynamic = common dso_local global i32 0, align 4
@oci_bind_input_cb = common dso_local global i32 0, align 4
@oci_bind_output_cb = common dso_local global i32 0, align 4
@OCIDescriptorAlloc = common dso_local global i32 0, align 4
@OCIAttrSet = common dso_local global i32 0, align 4
@OCI_ATTR_LOBEMPTY = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i32 0, align 4
@IS_NULL = common dso_local global i32 0, align 4
@OCI_LOB_READWRITE = common dso_local global i32 0, align 4
@OCI_ONE_PIECE = common dso_local global i32 0, align 4
@SQLCS_IMPLICIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.pdo_bound_param_data*, i32)* @oci_stmt_param_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_stmt_param_hook(%struct.TYPE_11__* %0, %struct.pdo_bound_param_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.pdo_bound_param_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [8192 x i8], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.pdo_bound_param_data* %1, %struct.pdo_bound_param_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %8, align 8
  %24 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %25 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %512

28:                                               ; preds = %3
  store i32 -1, i32* %10, align 4
  %29 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %30 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @Z_ISREF(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %36 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @Z_REFVAL(i32 %37)
  store i32* %38, i32** %11, align 8
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %41 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %40, i32 0, i32 5
  store i32* %41, i32** %11, align 8
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %44 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %43, i32 0, i32 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %9, align 8
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %511 [
    i32 133, label %47
    i32 134, label %47
    i32 131, label %47
    i32 132, label %48
    i32 137, label %96
    i32 135, label %205
    i32 136, label %241
  ]

47:                                               ; preds = %42, %42, %42
  br label %511

48:                                               ; preds = %42
  %49 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %50 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %49, i32 0, i32 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %9, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %88

54:                                               ; preds = %48
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %88

59:                                               ; preds = %54
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @OCI_TEMPLOB_CLOSE(i32* %64, i32 %69, i32 %74, i32* %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @OCI_DTYPE_LOB, align 4
  %83 = call i32 @OCIDescriptorFree(i32* %81, i32 %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = call i32 @efree(%struct.TYPE_13__* %86)
  br label %95

88:                                               ; preds = %54, %48
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %90 = icmp ne %struct.TYPE_13__* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %93 = call i32 @efree(%struct.TYPE_13__* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %59
  br label %511

96:                                               ; preds = %42
  %97 = call i64 @ecalloc(i32 1, i32 40)
  %98 = inttoptr i64 %97 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %9, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %100 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %101 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %100, i32 0, i32 4
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %101, align 8
  %102 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %103 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @PDO_PARAM_TYPE(i32 %104)
  switch i32 %105, label %112 [
    i32 129, label %106
    i32 130, label %107
    i32 128, label %111
  ]

106:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %513

107:                                              ; preds = %96
  %108 = load i32, i32* @SQLT_BLOB, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  store i32 8, i32* %10, align 4
  br label %125

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %96, %111
  %113 = load i32, i32* @SQLT_CHR, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 4
  %116 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %117 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %10, align 4
  %119 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %120 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  store i32 1332, i32* %10, align 4
  br label %124

124:                                              ; preds = %123, %112
  br label %125

125:                                              ; preds = %124, %107
  %126 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %127 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %126, i32 0, i32 2
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = icmp ne %struct.TYPE_10__* %128, null
  br i1 %129, label %130, label %163

130:                                              ; preds = %125
  %131 = load i32, i32* @OCIBindByName, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %141 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %140, i32 0, i32 2
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i32*
  %146 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %147 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %146, i32 0, i32 2
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 5
  %159 = load i32, i32* @OCI_DATA_AT_EXEC, align 4
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i32*
  %162 = call i32 @STMT_CALL(i32 %131, i32* %161)
  br label %190

163:                                              ; preds = %125
  %164 = load i32, i32* @OCIBindByPos, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %174 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = add i64 %176, 1
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 5
  %186 = load i32, i32* @OCI_DATA_AT_EXEC, align 4
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i32*
  %189 = call i32 @STMT_CALL(i32 %164, i32* %188)
  br label %190

190:                                              ; preds = %163, %130
  %191 = load i32, i32* @OCIBindDynamic, align 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %199 = load i32, i32* @oci_bind_input_cb, align 4
  %200 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %201 = load i32, i32* @oci_bind_output_cb, align 4
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i32*
  %204 = call i32 @STMT_CALL(i32 %191, i32* %203)
  store i32 1, i32* %4, align 4
  br label %513

205:                                              ; preds = %42
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  store i32 0, i32* %207, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 3
  store i32 0, i32* %209, align 4
  %210 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %211 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @PDO_PARAM_TYPE(i32 %212)
  %214 = icmp eq i32 %213, 130
  br i1 %214, label %215, label %240

215:                                              ; preds = %205
  store i64 0, i64* %12, align 8
  %216 = load i32, i32* @OCIDescriptorAlloc, align 4
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = load i32, i32* @OCI_DTYPE_LOB, align 4
  %225 = call i32 @STMT_CALL(i32 %216, i32* null)
  %226 = load i32, i32* @OCIAttrSet, align 4
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* @OCI_DTYPE_LOB, align 4
  %231 = load i32, i32* @OCI_ATTR_LOBEMPTY, align 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = inttoptr i64 %235 to i32*
  %237 = call i32 @STMT_CALL(i32 %226, i32* %236)
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  store i32 1, i32* %239, align 8
  br label %240

240:                                              ; preds = %215, %205
  store i32 1, i32* %4, align 4
  br label %513

241:                                              ; preds = %42
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %280

246:                                              ; preds = %241
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %251, label %264

251:                                              ; preds = %246
  %252 = load i32*, i32** %11, align 8
  %253 = call i32 @Z_TYPE_P(i32* %252)
  %254 = load i32, i32* @IS_STRING, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load i32*, i32** %11, align 8
  %258 = call i8* @Z_STRVAL_P(i32* %257)
  store i8 0, i8* %258, align 1
  br label %259

259:                                              ; preds = %256, %251
  %260 = load i32*, i32** %11, align 8
  %261 = call i32 @zval_ptr_dtor_str(i32* %260)
  %262 = load i32*, i32** %11, align 8
  %263 = call i32 @ZVAL_UNDEF(i32* %262)
  br label %279

264:                                              ; preds = %246
  %265 = load i32*, i32** %11, align 8
  %266 = call i32 @Z_TYPE_P(i32* %265)
  %267 = load i32, i32* @IS_STRING, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %278

269:                                              ; preds = %264
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = inttoptr i64 %271 to i32*
  %273 = call i8* @Z_STRVAL_P(i32* %272)
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @zend_string_init(i8* %273, i32 %276, i32 1)
  store i32 %277, i32* %13, align 4
  br label %278

278:                                              ; preds = %269, %264
  br label %279

279:                                              ; preds = %278, %259
  br label %510

280:                                              ; preds = %241
  %281 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %282 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @PDO_PARAM_TYPE(i32 %283)
  %285 = icmp eq i32 %284, 130
  br i1 %285, label %286, label %509

286:                                              ; preds = %280
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %509

291:                                              ; preds = %286
  %292 = load i32*, i32** %11, align 8
  %293 = call i32 @Z_TYPE_P(i32* %292)
  %294 = load i32, i32* @IS_NULL, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %324

296:                                              ; preds = %291
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = call i32* @oci_create_lob_stream(i32* %298, %struct.TYPE_11__* %299, i32* %302)
  store i32* %303, i32** %14, align 8
  %304 = load i32*, i32** %14, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %323

306:                                              ; preds = %296
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* @OCI_LOB_READWRITE, align 4
  %319 = call i32 @OCILobOpen(i32 %311, i32 %314, i32* %317, i32 %318)
  %320 = load i32*, i32** %14, align 8
  %321 = load i32*, i32** %11, align 8
  %322 = call i32 @php_stream_to_zval(i32* %320, i32* %321)
  br label %323

323:                                              ; preds = %306, %296
  br label %508

324:                                              ; preds = %291
  store i64 1, i64* %17, align 8
  %325 = load i32*, i32** %14, align 8
  %326 = load i32*, i32** %11, align 8
  %327 = call i32 @php_stream_from_zval_no_verify(i32* %325, i32* %326)
  %328 = load i32*, i32** %14, align 8
  %329 = icmp ne i32* %328, null
  br i1 %329, label %330, label %412

330:                                              ; preds = %324
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* @OCI_LOB_READWRITE, align 4
  %343 = call i32 @OCILobOpen(i32 %335, i32 %338, i32* %341, i32 %342)
  br label %344

344:                                              ; preds = %386, %330
  %345 = load i32*, i32** %14, align 8
  %346 = getelementptr inbounds [8192 x i8], [8192 x i8]* %19, i64 0, i64 0
  %347 = call i64 @php_stream_read(i32* %345, i8* %346, i32 8192)
  store i64 %347, i64* %15, align 8
  %348 = load i64, i64* %15, align 8
  %349 = trunc i64 %348 to i32
  %350 = icmp sle i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %344
  br label %387

352:                                              ; preds = %344
  %353 = getelementptr inbounds [8192 x i8], [8192 x i8]* %19, i64 0, i64 0
  store i8* %353, i8** %18, align 8
  br label %354

354:                                              ; preds = %382, %352
  %355 = load i64, i64* %15, align 8
  store i64 %355, i64* %16, align 8
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = load i64, i64* %17, align 8
  %368 = load i8*, i8** %18, align 8
  %369 = load i64, i64* %15, align 8
  %370 = load i32, i32* @OCI_ONE_PIECE, align 4
  %371 = load i32, i32* @SQLCS_IMPLICIT, align 4
  %372 = call i32 @OCILobWrite(i32 %360, i32 %363, i32* %366, i64* %16, i64 %367, i8* %368, i64 %369, i32 %370, i32* null, i32* null, i32 0, i32 %371)
  %373 = load i64, i64* %16, align 8
  %374 = load i64, i64* %17, align 8
  %375 = add i64 %374, %373
  store i64 %375, i64* %17, align 8
  %376 = load i64, i64* %16, align 8
  %377 = load i64, i64* %15, align 8
  %378 = sub i64 %377, %376
  store i64 %378, i64* %15, align 8
  %379 = load i64, i64* %16, align 8
  %380 = load i8*, i8** %18, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 %379
  store i8* %381, i8** %18, align 8
  br label %382

382:                                              ; preds = %354
  %383 = load i64, i64* %15, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %354, label %385

385:                                              ; preds = %382
  br label %386

386:                                              ; preds = %385
  br i1 true, label %344, label %387

387:                                              ; preds = %386, %351
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 1
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 1
  %398 = load i32*, i32** %397, align 8
  %399 = call i32 @OCILobClose(i32 %392, i32 %395, i32* %398)
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 1
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 1
  %410 = load i32*, i32** %409, align 8
  %411 = call i32 @OCILobFlushBuffer(i32 %404, i32 %407, i32* %410, i32 0)
  br label %481

412:                                              ; preds = %324
  %413 = load i32*, i32** %11, align 8
  %414 = call i32 @Z_TYPE_P(i32* %413)
  %415 = load i32, i32* @IS_STRING, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %480

417:                                              ; preds = %412
  %418 = load i32*, i32** %11, align 8
  %419 = call i8* @Z_STRVAL_P(i32* %418)
  store i8* %419, i8** %18, align 8
  %420 = load i32*, i32** %11, align 8
  %421 = call i64 @Z_STRLEN_P(i32* %420)
  store i64 %421, i64* %15, align 8
  %422 = load i64, i64* %15, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %479

424:                                              ; preds = %417
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 1
  %427 = load %struct.TYPE_9__*, %struct.TYPE_9__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 1
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* @OCI_LOB_READWRITE, align 4
  %437 = call i32 @OCILobOpen(i32 %429, i32 %432, i32* %435, i32 %436)
  br label %438

438:                                              ; preds = %441, %424
  %439 = load i64, i64* %15, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %466

441:                                              ; preds = %438
  %442 = load i64, i64* %15, align 8
  store i64 %442, i64* %16, align 8
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 1
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %452 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %451, i32 0, i32 1
  %453 = load i32*, i32** %452, align 8
  %454 = load i64, i64* %17, align 8
  %455 = load i8*, i8** %18, align 8
  %456 = load i64, i64* %15, align 8
  %457 = load i32, i32* @OCI_ONE_PIECE, align 4
  %458 = load i32, i32* @SQLCS_IMPLICIT, align 4
  %459 = call i32 @OCILobWrite(i32 %447, i32 %450, i32* %453, i64* %16, i64 %454, i8* %455, i64 %456, i32 %457, i32* null, i32* null, i32 0, i32 %458)
  %460 = load i64, i64* %16, align 8
  %461 = load i8*, i8** %18, align 8
  %462 = getelementptr inbounds i8, i8* %461, i64 %460
  store i8* %462, i8** %18, align 8
  %463 = load i64, i64* %16, align 8
  %464 = load i64, i64* %15, align 8
  %465 = sub i64 %464, %463
  store i64 %465, i64* %15, align 8
  br label %438

466:                                              ; preds = %438
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 1
  %469 = load %struct.TYPE_9__*, %struct.TYPE_9__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 2
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %476 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %475, i32 0, i32 1
  %477 = load i32*, i32** %476, align 8
  %478 = call i32 @OCILobClose(i32 %471, i32 %474, i32* %477)
  br label %479

479:                                              ; preds = %466, %417
  br label %480

480:                                              ; preds = %479, %412
  br label %481

481:                                              ; preds = %480, %387
  %482 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %482, i32 0, i32 1
  %484 = load %struct.TYPE_9__*, %struct.TYPE_9__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %484, i32 0, i32 2
  %486 = load i32*, i32** %485, align 8
  %487 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %488 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_9__*, %struct.TYPE_9__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 1
  %494 = load %struct.TYPE_9__*, %struct.TYPE_9__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %498 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %497, i32 0, i32 1
  %499 = load i32*, i32** %498, align 8
  %500 = call i32 @OCI_TEMPLOB_CLOSE(i32* %486, i32 %491, i32 %496, i32* %499)
  %501 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %502 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %501, i32 0, i32 1
  %503 = load i32*, i32** %502, align 8
  %504 = load i32, i32* @OCI_DTYPE_LOB, align 4
  %505 = call i32 @OCIDescriptorFree(i32* %503, i32 %504)
  %506 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %506, i32 0, i32 1
  store i32* null, i32** %507, align 8
  br label %508

508:                                              ; preds = %481, %323
  br label %509

509:                                              ; preds = %508, %286, %280
  br label %510

510:                                              ; preds = %509, %279
  store i32 1, i32* %4, align 4
  br label %513

511:                                              ; preds = %42, %95, %47
  br label %512

512:                                              ; preds = %511, %3
  store i32 1, i32* %4, align 4
  br label %513

513:                                              ; preds = %512, %510, %240, %190, %106
  %514 = load i32, i32* %4, align 4
  ret i32 %514
}

declare dso_local i64 @Z_ISREF(i32) #1

declare dso_local i32* @Z_REFVAL(i32) #1

declare dso_local i32 @OCI_TEMPLOB_CLOSE(i32*, i32, i32, i32*) #1

declare dso_local i32 @OCIDescriptorFree(i32*, i32) #1

declare dso_local i32 @efree(%struct.TYPE_13__*) #1

declare dso_local i64 @ecalloc(i32, i32) #1

declare dso_local i32 @PDO_PARAM_TYPE(i32) #1

declare dso_local i32 @STMT_CALL(i32, i32*) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @zend_string_init(i8*, i32, i32) #1

declare dso_local i32* @oci_create_lob_stream(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @OCILobOpen(i32, i32, i32*, i32) #1

declare dso_local i32 @php_stream_to_zval(i32*, i32*) #1

declare dso_local i32 @php_stream_from_zval_no_verify(i32*, i32*) #1

declare dso_local i64 @php_stream_read(i32*, i8*, i32) #1

declare dso_local i32 @OCILobWrite(i32, i32, i32*, i64*, i64, i8*, i64, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @OCILobClose(i32, i32, i32*) #1

declare dso_local i32 @OCILobFlushBuffer(i32, i32, i32*, i32) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
