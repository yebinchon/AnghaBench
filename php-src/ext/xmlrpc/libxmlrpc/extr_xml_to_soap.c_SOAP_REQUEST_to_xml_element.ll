; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_soap.c_SOAP_REQUEST_to_xml_element.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_soap.c_SOAP_REQUEST_to_xml_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SOAP-ENV:Envelope\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"xmlns:SOAP-ENV\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"http://schemas.xmlsoap.org/soap/envelope/\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"xmlns:xsi\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"http://www.w3.org/1999/XMLSchema-instance\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"xmlns:xsd\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"http://www.w3.org/1999/XMLSchema\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"xmlns:SOAP-ENC\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"http://schemas.xmlsoap.org/soap/encoding/\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"xmlns:si\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"http://soapinterop.org/xsd\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"xmlns:ns6\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"http://testuri.org\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"SOAP-ENV:encodingStyle\00", align 1
@TOKEN_FAULT = common dso_local global i32 0, align 4
@xmlrpc_request_call = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Response\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"SOAP-ENV:Body\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @SOAP_REQUEST_to_xml_element(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  %11 = call %struct.TYPE_8__* (...) @xml_elem_new()
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %163

14:                                               ; preds = %1
  %15 = call %struct.TYPE_8__* (...) @xml_elem_new()
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %4, align 8
  %16 = call i8* @estrdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = call %struct.TYPE_8__* @new_attr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @Q_PushTail(i32* %20, %struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = call %struct.TYPE_8__* @new_attr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @Q_PushTail(i32* %24, %struct.TYPE_8__* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = call %struct.TYPE_8__* @new_attr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %30 = call i32 @Q_PushTail(i32* %28, %struct.TYPE_8__* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = call %struct.TYPE_8__* @new_attr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %34 = call i32 @Q_PushTail(i32* %32, %struct.TYPE_8__* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = call %struct.TYPE_8__* @new_attr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %38 = call i32 @Q_PushTail(i32* %36, %struct.TYPE_8__* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = call %struct.TYPE_8__* @new_attr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %42 = call i32 @Q_PushTail(i32* %40, %struct.TYPE_8__* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = call %struct.TYPE_8__* @new_attr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %46 = call i32 @Q_PushTail(i32* %44, %struct.TYPE_8__* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %162

49:                                               ; preds = %14
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @XMLRPC_RequestGetData(i32 %51)
  %53 = call %struct.TYPE_8__* @SOAP_to_xml_element_worker(i32 %50, i32 %52)
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %5, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @TOKEN_FAULT, align 4
  %61 = call i32 @strcmp(i8* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = call i32 @Q_PushTail(i32* %65, %struct.TYPE_8__* %66)
  br label %154

68:                                               ; preds = %56, %49
  %69 = call %struct.TYPE_8__* (...) @xml_elem_new()
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %6, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = icmp ne %struct.TYPE_8__* %70, null
  br i1 %71, label %72, label %153

72:                                               ; preds = %68
  %73 = load i32, i32* %2, align 4
  %74 = call i8* @XMLRPC_RequestGetMethodName(i32 %73)
  store i8* %74, i8** %7, align 8
  %75 = load i32, i32* %2, align 4
  %76 = call i64 @XMLRPC_RequestGetRequestType(i32 %75)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @xmlrpc_request_call, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load i8*, i8** %7, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = call i8* @estrdup(i8* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %83, %80
  br label %103

89:                                               ; preds = %72
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %91 = load i8*, i8** %7, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  br label %96

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i8* [ %94, %93 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %95 ]
  %98 = call i32 @snprintf(i8* %90, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %100 = call i8* @estrdup(i8* %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %96, %88
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %151

108:                                              ; preds = %103
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = icmp ne %struct.TYPE_8__* %109, null
  br i1 %110, label %111, label %146

111:                                              ; preds = %108
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = call i64 @Q_Size(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %111
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* @xmlrpc_request_call, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = call i64 @Q_Head(i32* %122)
  %124 = inttoptr i64 %123 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %124, %struct.TYPE_8__** %10, align 8
  br label %125

125:                                              ; preds = %128, %120
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %127 = icmp ne %struct.TYPE_8__* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %132 = call i32 @Q_PushTail(i32* %130, %struct.TYPE_8__* %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = call i64 @Q_Next(i32* %134)
  %136 = inttoptr i64 %135 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %10, align 8
  br label %125

137:                                              ; preds = %125
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = call i32 @xml_elem_free_non_recurse(%struct.TYPE_8__* %138)
  br label %145

140:                                              ; preds = %116, %111
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = call i32 @Q_PushTail(i32* %142, %struct.TYPE_8__* %143)
  br label %145

145:                                              ; preds = %140, %137
  br label %146

146:                                              ; preds = %145, %108
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = call i32 @Q_PushTail(i32* %148, %struct.TYPE_8__* %149)
  br label %152

151:                                              ; preds = %103
  br label %152

152:                                              ; preds = %151, %146
  br label %153

153:                                              ; preds = %152, %68
  br label %154

154:                                              ; preds = %153, %63
  %155 = call i8* @estrdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %161 = call i32 @Q_PushTail(i32* %159, %struct.TYPE_8__* %160)
  br label %162

162:                                              ; preds = %154, %14
  br label %163

163:                                              ; preds = %162, %1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %164
}

declare dso_local %struct.TYPE_8__* @xml_elem_new(...) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @Q_PushTail(i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @new_attr(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @SOAP_to_xml_element_worker(i32, i32) #1

declare dso_local i32 @XMLRPC_RequestGetData(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i8* @XMLRPC_RequestGetMethodName(i32) #1

declare dso_local i64 @XMLRPC_RequestGetRequestType(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @Q_Size(i32*) #1

declare dso_local i64 @Q_Head(i32*) #1

declare dso_local i64 @Q_Next(i32*) #1

declare dso_local i32 @xml_elem_free_non_recurse(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
