; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_dandarpc.c_DANDARPC_to_xml_element_worker.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_dandarpc.c_DANDARPC_to_xml_element_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32, i32, i8*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.buffer_st = type { i32, i32 }

@xml_elem_no_white_space = common dso_local global i64 0, align 8
@ATTR_TYPE = common dso_local global i8* null, align 8
@ATTR_VECTOR = common dso_local global i8* null, align 8
@ATTR_SCALAR = common dso_local global i8* null, align 8
@ATTR_ID = common dso_local global i8* null, align 8
@ATTR_STRING = common dso_local global i8* null, align 8
@ATTR_INT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@ATTR_BOOLEAN = common dso_local global i8* null, align 8
@ATTR_DOUBLE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@ATTR_DATETIME = common dso_local global i8* null, align 8
@ATTR_BASE64 = common dso_local global i8* null, align 8
@ATTR_ARRAY = common dso_local global i8* null, align 8
@ATTR_MIXED = common dso_local global i8* null, align 8
@ATTR_STRUCT = common dso_local global i8* null, align 8
@BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @DANDARPC_to_xml_element_worker(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.buffer_st, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %219

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = call i8* @XMLRPC_GetValueID(i64 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @XMLRPC_GetValueType(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call %struct.TYPE_12__* @XMLRPC_RequestGetOutputOptions(i64 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 132
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @xml_elem_no_white_space, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %36, %33, %30, %21
  %44 = phi i1 [ false, %33 ], [ false, %30 ], [ false, %21 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = call %struct.TYPE_11__* (...) @xml_elem_new()
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %11, align 8
  store i8* null, i8** %12, align 8
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %52

50:                                               ; preds = %43
  %51 = call %struct.TYPE_11__* @emalloc(i32 40)
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi %struct.TYPE_11__* [ null, %49 ], [ %51, %50 ]
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %13, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i8*, i8** @ATTR_TYPE, align 8
  %58 = call i8* @estrdup(i8* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i8* null, i8** %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %66 = call i32 @Q_PushTail(i32* %64, %struct.TYPE_11__* %65)
  br label %67

67:                                               ; preds = %56, %52
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 131
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8*, i8** @ATTR_VECTOR, align 8
  %72 = call i8* @estrdup(i8* %71)
  br label %76

73:                                               ; preds = %67
  %74 = load i8*, i8** @ATTR_SCALAR, align 8
  %75 = call i8* @estrdup(i8* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i8* [ %72, %70 ], [ %75, %73 ]
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %105

82:                                               ; preds = %76
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %82
  %88 = call %struct.TYPE_11__* @emalloc(i32 40)
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %14, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %90 = icmp ne %struct.TYPE_11__* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i8*, i8** @ATTR_ID, align 8
  %93 = call i8* @estrdup(i8* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = call i8* @estrdup(i8* %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %103 = call i32 @Q_PushTail(i32* %101, %struct.TYPE_11__* %102)
  br label %104

104:                                              ; preds = %91, %87
  br label %105

105:                                              ; preds = %104, %82, %76
  %106 = load i32, i32* %8, align 4
  switch i32 %106, label %202 [
    i32 132, label %107
    i32 133, label %116
    i32 136, label %127
    i32 134, label %138
    i32 135, label %148
    i32 137, label %155
    i32 131, label %170
  ]

107:                                              ; preds = %105
  %108 = load i8*, i8** @ATTR_STRING, align 8
  store i8* %108, i8** %12, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i64, i64* %4, align 8
  %112 = call i32 @XMLRPC_GetValueString(i64 %111)
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @XMLRPC_GetValueStringLen(i64 %113)
  %115 = call i32 @simplestring_addn(i32* %110, i32 %112, i32 %114)
  br label %203

116:                                              ; preds = %105
  %117 = load i8*, i8** @ATTR_INT, align 8
  store i8* %117, i8** %12, align 8
  %118 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %119 = load i64, i64* %4, align 8
  %120 = call i32 @XMLRPC_GetValueInt(i64 %119)
  %121 = sitofp i32 %120 to double
  %122 = call i32 @snprintf(i8* %118, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %126 = call i32 @simplestring_add(i32* %124, i8* %125)
  br label %203

127:                                              ; preds = %105
  %128 = load i8*, i8** @ATTR_BOOLEAN, align 8
  store i8* %128, i8** %12, align 8
  %129 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %130 = load i64, i64* %4, align 8
  %131 = call i32 @XMLRPC_GetValueBoolean(i64 %130)
  %132 = sitofp i32 %131 to double
  %133 = call i32 @snprintf(i8* %129, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %132)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %137 = call i32 @simplestring_add(i32* %135, i8* %136)
  br label %203

138:                                              ; preds = %105
  %139 = load i8*, i8** @ATTR_DOUBLE, align 8
  store i8* %139, i8** %12, align 8
  %140 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %141 = load i64, i64* %4, align 8
  %142 = call double @XMLRPC_GetValueDouble(i64 %141)
  %143 = call i32 @snprintf(i8* %140, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), double %142)
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %147 = call i32 @simplestring_add(i32* %145, i8* %146)
  br label %203

148:                                              ; preds = %105
  %149 = load i8*, i8** @ATTR_DATETIME, align 8
  store i8* %149, i8** %12, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load i64, i64* %4, align 8
  %153 = call i8* @XMLRPC_GetValueDateTime_ISO8601(i64 %152)
  %154 = call i32 @simplestring_add(i32* %151, i8* %153)
  br label %203

155:                                              ; preds = %105
  %156 = load i8*, i8** @ATTR_BASE64, align 8
  store i8* %156, i8** %12, align 8
  %157 = load i64, i64* %4, align 8
  %158 = call i32 @XMLRPC_GetValueBase64(i64 %157)
  %159 = load i64, i64* %4, align 8
  %160 = call i32 @XMLRPC_GetValueStringLen(i64 %159)
  %161 = call i32 @base64_encode_xmlrpc(%struct.buffer_st* %15, i32 %158, i32 %160)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %15, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %15, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @simplestring_addn(i32* %163, i32 %165, i32 %167)
  %169 = call i32 @buffer_delete(%struct.buffer_st* %15)
  br label %203

170:                                              ; preds = %105
  %171 = load i64, i64* %4, align 8
  %172 = call i32 @XMLRPC_GetVectorType(i64 %171)
  store i32 %172, i32* %16, align 4
  %173 = load i64, i64* %4, align 8
  %174 = call i64 @XMLRPC_VectorRewind(i64 %173)
  store i64 %174, i64* %17, align 8
  %175 = load i32, i32* %16, align 4
  switch i32 %175, label %182 [
    i32 130, label %176
    i32 129, label %178
    i32 128, label %180
  ]

176:                                              ; preds = %170
  %177 = load i8*, i8** @ATTR_ARRAY, align 8
  store i8* %177, i8** %12, align 8
  br label %183

178:                                              ; preds = %170
  %179 = load i8*, i8** @ATTR_MIXED, align 8
  store i8* %179, i8** %12, align 8
  br label %183

180:                                              ; preds = %170
  %181 = load i8*, i8** @ATTR_STRUCT, align 8
  store i8* %181, i8** %12, align 8
  br label %183

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %182, %180, %178, %176
  br label %184

184:                                              ; preds = %198, %183
  %185 = load i64, i64* %17, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %184
  %188 = load i64, i64* %3, align 8
  %189 = load i64, i64* %17, align 8
  %190 = call %struct.TYPE_11__* @DANDARPC_to_xml_element_worker(i64 %188, i64 %189)
  store %struct.TYPE_11__* %190, %struct.TYPE_11__** %18, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %192 = icmp ne %struct.TYPE_11__* %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %187
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %197 = call i32 @Q_PushTail(i32* %195, %struct.TYPE_11__* %196)
  br label %198

198:                                              ; preds = %193, %187
  %199 = load i64, i64* %4, align 8
  %200 = call i64 @XMLRPC_VectorNext(i64 %199)
  store i64 %200, i64* %17, align 8
  br label %184

201:                                              ; preds = %184
  br label %203

202:                                              ; preds = %105
  br label %203

203:                                              ; preds = %202, %201, %155, %148, %138, %127, %116, %107
  %204 = load i8*, i8** %12, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %217

206:                                              ; preds = %203
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %208 = icmp ne %struct.TYPE_11__* %207, null
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load i32, i32* %10, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %209
  %213 = load i8*, i8** %12, align 8
  %214 = call i8* @estrdup(i8* %213)
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  store i8* %214, i8** %216, align 8
  br label %217

217:                                              ; preds = %212, %209, %206, %203
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %218, %struct.TYPE_11__** %5, align 8
  br label %219

219:                                              ; preds = %217, %2
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %220
}

declare dso_local i8* @XMLRPC_GetValueID(i64) #1

declare dso_local i32 @XMLRPC_GetValueType(i64) #1

declare dso_local %struct.TYPE_12__* @XMLRPC_RequestGetOutputOptions(i64) #1

declare dso_local %struct.TYPE_11__* @xml_elem_new(...) #1

declare dso_local %struct.TYPE_11__* @emalloc(i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @Q_PushTail(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @simplestring_addn(i32*, i32, i32) #1

declare dso_local i32 @XMLRPC_GetValueString(i64) #1

declare dso_local i32 @XMLRPC_GetValueStringLen(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local i32 @XMLRPC_GetValueInt(i64) #1

declare dso_local i32 @simplestring_add(i32*, i8*) #1

declare dso_local i32 @XMLRPC_GetValueBoolean(i64) #1

declare dso_local double @XMLRPC_GetValueDouble(i64) #1

declare dso_local i8* @XMLRPC_GetValueDateTime_ISO8601(i64) #1

declare dso_local i32 @base64_encode_xmlrpc(%struct.buffer_st*, i32, i32) #1

declare dso_local i32 @XMLRPC_GetValueBase64(i64) #1

declare dso_local i32 @buffer_delete(%struct.buffer_st*) #1

declare dso_local i32 @XMLRPC_GetVectorType(i64) #1

declare dso_local i64 @XMLRPC_VectorRewind(i64) #1

declare dso_local i64 @XMLRPC_VectorNext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
