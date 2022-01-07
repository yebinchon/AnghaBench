; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_soap.c_SOAP_to_xml_element_worker.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_soap.c_SOAP_to_xml_element_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.tm = type { i32 }
%struct.buffer_st = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s[%i]\00", align 1
@TOKEN_ARRAY_TYPE = common dso_local global i32 0, align 4
@TOKEN_ARRAY = common dso_local global i8* null, align 8
@TOKEN_FAULT = common dso_local global i8* null, align 8
@TOKEN_NULL = common dso_local global i8* null, align 8
@TOKEN_STRING = common dso_local global i8* null, align 8
@TOKEN_INT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@TOKEN_BOOLEAN = common dso_local global i8* null, align 8
@TOKEN_DOUBLE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@TOKEN_DATETIME = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"%Y-%m-%dT%H:%M:%SZ\00", align 1
@TOKEN_BASE64 = common dso_local global i8* null, align 8
@TOKEN_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @SOAP_to_xml_element_worker(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.tm*, align 8
  %18 = alloca %struct.buffer_st, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %199

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @XMLRPC_GetValueTypeEasy(i64 %22)
  store i32 %23, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %24 = call %struct.TYPE_8__* (...) @xml_elem_new()
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %5, align 8
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %156 [
    i32 128, label %26
    i32 130, label %26
    i32 137, label %26
    i32 132, label %85
    i32 129, label %87
    i32 131, label %96
    i32 135, label %106
    i32 133, label %116
    i32 134, label %126
    i32 136, label %141
  ]

26:                                               ; preds = %21, %21, %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 137
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i64, i64* %4, align 8
  %31 = call i8* @get_array_soap_type(i64 %30)
  store i8* %31, i8** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %33 = load i8*, i8** %11, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @XMLRPC_VectorSize(i64 %34)
  %36 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %35)
  %37 = load i32, i32* @TOKEN_ARRAY_TYPE, align 4
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %39 = call %struct.TYPE_8__* @new_attr(i32 %37, i8* %38)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %12, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = call i32 @Q_PushTail(i32* %41, %struct.TYPE_8__* %42)
  %44 = load i8*, i8** @TOKEN_ARRAY, align 8
  store i8* %44, i8** %10, align 8
  br label %64

45:                                               ; preds = %26
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @get_fault_type(i64 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = call i64 @gen_fault_xmlrpc(i64 %57, %struct.TYPE_8__* %58)
  store i64 %59, i64* %4, align 8
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i8*, i8** @TOKEN_FAULT, align 8
  store i8* %61, i8** %9, align 8
  br label %62

62:                                               ; preds = %60, %48
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63, %29
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @XMLRPC_VectorRewind(i64 %65)
  store i64 %66, i64* %14, align 8
  br label %67

67:                                               ; preds = %81, %64
  %68 = load i64, i64* %14, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = load i64, i64* %14, align 8
  %73 = call %struct.TYPE_8__* @SOAP_to_xml_element_worker(i32 %71, i64 %72)
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %15, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %75 = icmp ne %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %80 = call i32 @Q_PushTail(i32* %78, %struct.TYPE_8__* %79)
  br label %81

81:                                               ; preds = %76, %70
  %82 = load i64, i64* %4, align 8
  %83 = call i64 @XMLRPC_VectorNext(i64 %82)
  store i64 %83, i64* %14, align 8
  br label %67

84:                                               ; preds = %67
  br label %157

85:                                               ; preds = %21
  %86 = load i8*, i8** @TOKEN_NULL, align 8
  store i8* %86, i8** %10, align 8
  br label %157

87:                                               ; preds = %21
  %88 = load i8*, i8** @TOKEN_STRING, align 8
  store i8* %88, i8** %10, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @XMLRPC_GetValueString(i64 %91)
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @XMLRPC_GetValueStringLen(i64 %93)
  %95 = call i32 @simplestring_addn(i32* %90, i32 %92, i32 %94)
  br label %157

96:                                               ; preds = %21
  %97 = load i8*, i8** @TOKEN_INT, align 8
  store i8* %97, i8** %10, align 8
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %99 = load i64, i64* %4, align 8
  %100 = call i32 @XMLRPC_GetValueInt(i64 %99)
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %98, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %105 = call i32 @simplestring_add(i32* %103, i8* %104)
  br label %157

106:                                              ; preds = %21
  %107 = load i8*, i8** @TOKEN_BOOLEAN, align 8
  store i8* %107, i8** %10, align 8
  %108 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %109 = load i64, i64* %4, align 8
  %110 = call i32 @XMLRPC_GetValueBoolean(i64 %109)
  %111 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %108, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %115 = call i32 @simplestring_add(i32* %113, i8* %114)
  br label %157

116:                                              ; preds = %21
  %117 = load i8*, i8** @TOKEN_DOUBLE, align 8
  store i8* %117, i8** %10, align 8
  %118 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %119 = load i64, i64* %4, align 8
  %120 = call double @XMLRPC_GetValueDouble(i64 %119)
  %121 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %118, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %125 = call i32 @simplestring_add(i32* %123, i8* %124)
  br label %157

126:                                              ; preds = %21
  %127 = load i64, i64* %4, align 8
  %128 = call i32 @XMLRPC_GetValueDateTime(i64 %127)
  store i32 %128, i32* %16, align 4
  %129 = call %struct.tm* @localtime(i32* %16)
  store %struct.tm* %129, %struct.tm** %17, align 8
  %130 = load i8*, i8** @TOKEN_DATETIME, align 8
  store i8* %130, i8** %10, align 8
  %131 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %132 = load %struct.tm*, %struct.tm** %17, align 8
  %133 = call i32 @strftime(i8* %131, i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %126
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %139 = call i32 @simplestring_add(i32* %137, i8* %138)
  br label %140

140:                                              ; preds = %135, %126
  br label %157

141:                                              ; preds = %21
  %142 = load i8*, i8** @TOKEN_BASE64, align 8
  store i8* %142, i8** %10, align 8
  %143 = load i64, i64* %4, align 8
  %144 = call i32 @XMLRPC_GetValueBase64(i64 %143)
  %145 = load i64, i64* %4, align 8
  %146 = call i32 @XMLRPC_GetValueStringLen(i64 %145)
  %147 = call i32 @base64_encode_xmlrpc(%struct.buffer_st* %18, i32 %144, i32 %146)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %18, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %18, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @simplestring_addn(i32* %149, i32 %151, i32 %153)
  %155 = call i32 @buffer_delete(%struct.buffer_st* %18)
  br label %157

156:                                              ; preds = %21
  br label %157

157:                                              ; preds = %156, %141, %140, %116, %106, %96, %87, %85, %84
  %158 = load i8*, i8** %9, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %188, label %160

160:                                              ; preds = %157
  %161 = load i8*, i8** %10, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %179

163:                                              ; preds = %160
  %164 = load i64, i64* %4, align 8
  %165 = call i64 @XMLRPC_GetValueID(i64 %164)
  %166 = inttoptr i64 %165 to i8*
  store i8* %166, i8** %9, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32, i32* @TOKEN_TYPE, align 4
  %173 = load i8*, i8** %10, align 8
  %174 = call %struct.TYPE_8__* @new_attr(i32 %172, i8* %173)
  %175 = call i32 @Q_PushTail(i32* %171, %struct.TYPE_8__* %174)
  br label %178

176:                                              ; preds = %163
  %177 = load i8*, i8** %10, align 8
  store i8* %177, i8** %9, align 8
  br label %178

178:                                              ; preds = %176, %169
  br label %187

179:                                              ; preds = %160
  %180 = load i64, i64* %4, align 8
  %181 = call i64 @XMLRPC_GetValueID(i64 %180)
  %182 = inttoptr i64 %181 to i8*
  store i8* %182, i8** %9, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %179
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %186

186:                                              ; preds = %185, %179
  br label %187

187:                                              ; preds = %186, %178
  br label %188

188:                                              ; preds = %187, %157
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 @estrdup(i8* %189)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load i64, i64* %4, align 8
  %197 = call i32 @XMLRPC_CleanupValue(i64 %196)
  br label %198

198:                                              ; preds = %195, %188
  br label %199

199:                                              ; preds = %198, %2
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %200
}

declare dso_local i32 @XMLRPC_GetValueTypeEasy(i64) #1

declare dso_local %struct.TYPE_8__* @xml_elem_new(...) #1

declare dso_local i8* @get_array_soap_type(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @XMLRPC_VectorSize(i64) #1

declare dso_local %struct.TYPE_8__* @new_attr(i32, i8*) #1

declare dso_local i32 @Q_PushTail(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @get_fault_type(i64) #1

declare dso_local i64 @gen_fault_xmlrpc(i64, %struct.TYPE_8__*) #1

declare dso_local i64 @XMLRPC_VectorRewind(i64) #1

declare dso_local i64 @XMLRPC_VectorNext(i64) #1

declare dso_local i32 @simplestring_addn(i32*, i32, i32) #1

declare dso_local i32 @XMLRPC_GetValueString(i64) #1

declare dso_local i32 @XMLRPC_GetValueStringLen(i64) #1

declare dso_local i32 @XMLRPC_GetValueInt(i64) #1

declare dso_local i32 @simplestring_add(i32*, i8*) #1

declare dso_local i32 @XMLRPC_GetValueBoolean(i64) #1

declare dso_local double @XMLRPC_GetValueDouble(i64) #1

declare dso_local i32 @XMLRPC_GetValueDateTime(i64) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @base64_encode_xmlrpc(%struct.buffer_st*, i32, i32) #1

declare dso_local i32 @XMLRPC_GetValueBase64(i64) #1

declare dso_local i32 @buffer_delete(%struct.buffer_st*) #1

declare dso_local i64 @XMLRPC_GetValueID(i64) #1

declare dso_local i32 @estrdup(i8*) #1

declare dso_local i32 @XMLRPC_CleanupValue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
