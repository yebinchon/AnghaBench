; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_set_soap_fault.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_set_soap_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_OBJECT = common dso_local global i64 0, align 8
@soap_fault_class_entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"faultstring\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@zend_ce_exception = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"faultcode\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"faultcodens\00", align 1
@SOAP_1_1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Client\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"VersionMismatch\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"MustUnderstand\00", align 1
@SOAP_1_1_ENV_NAMESPACE = common dso_local global i8* null, align 8
@SOAP_1_2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"Sender\00", align 1
@SOAP_1_2_ENV_NAMESPACE = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"Receiver\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"DataEncodingUnknown\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"faultactor\00", align 1
@IS_UNDEF = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"detail\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"_name\00", align 1
@soap_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*, i8*, i32*, i8*)* @set_soap_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_soap_fault(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @Z_TYPE_P(i32* %16)
  %18 = load i64, i64* @IS_OBJECT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %7
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @soap_fault_class_entry, align 4
  %23 = call i32 @object_init_ex(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %7
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i8*, i8** %11, align 8
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i8* [ %29, %28 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %30 ]
  %33 = call i32 @add_property_string(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @zend_ce_exception, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** %11, align 8
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8* [ %39, %38 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %40 ]
  %43 = call i32 @zend_update_property_string(i32 %34, i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7, i8* %42)
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %139

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @SOAP_GLOBAL(i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32*, i32** %8, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @add_property_string(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @add_property_string(i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %138

58:                                               ; preds = %46
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @SOAP_1_1, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @add_property_string(i32* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  %66 = load i8*, i8** %10, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %62
  %70 = load i8*, i8** %10, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %10, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %10, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77, %73, %69, %62
  %82 = load i32*, i32** %8, align 8
  %83 = load i8*, i8** @SOAP_1_1_ENV_NAMESPACE, align 8
  %84 = call i32 @add_property_string(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %81, %77
  br label %137

86:                                               ; preds = %58
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @SOAP_1_2, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %136

90:                                               ; preds = %86
  %91 = load i8*, i8** %10, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @add_property_string(i32* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %97 = load i32*, i32** %8, align 8
  %98 = load i8*, i8** @SOAP_1_2_ENV_NAMESPACE, align 8
  %99 = call i32 @add_property_string(i32* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  br label %135

100:                                              ; preds = %90
  %101 = load i8*, i8** %10, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @add_property_string(i32* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %107 = load i32*, i32** %8, align 8
  %108 = load i8*, i8** @SOAP_1_2_ENV_NAMESPACE, align 8
  %109 = call i32 @add_property_string(i32* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  br label %134

110:                                              ; preds = %100
  %111 = load i8*, i8** %10, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load i8*, i8** %10, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i8*, i8** %10, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118, %114, %110
  %123 = load i32*, i32** %8, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @add_property_string(i32* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %124)
  %126 = load i32*, i32** %8, align 8
  %127 = load i8*, i8** @SOAP_1_2_ENV_NAMESPACE, align 8
  %128 = call i32 @add_property_string(i32* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %127)
  br label %133

129:                                              ; preds = %118
  %130 = load i32*, i32** %8, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @add_property_string(i32* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %129, %122
  br label %134

134:                                              ; preds = %133, %104
  br label %135

135:                                              ; preds = %134, %94
  br label %136

136:                                              ; preds = %135, %86
  br label %137

137:                                              ; preds = %136, %85
  br label %138

138:                                              ; preds = %137, %51
  br label %139

139:                                              ; preds = %138, %41
  %140 = load i8*, i8** %12, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32*, i32** %8, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @add_property_string(i32* %143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %142, %139
  %147 = load i32*, i32** %13, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i32*, i32** %13, align 8
  %151 = call i64 @Z_TYPE_P(i32* %150)
  %152 = load i64, i64* @IS_UNDEF, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32*, i32** %8, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = call i32 @add_property_zval(i32* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32* %156)
  br label %158

158:                                              ; preds = %154, %149, %146
  %159 = load i8*, i8** %14, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32*, i32** %8, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = call i32 @add_property_string(i32* %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %161, %158
  ret void
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @object_init_ex(i32*, i32) #1

declare dso_local i32 @add_property_string(i32*, i8*, i8*) #1

declare dso_local i32 @zend_update_property_string(i32, i32*, i8*, i32, i8*) #1

declare dso_local i32 @SOAP_GLOBAL(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @add_property_zval(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
