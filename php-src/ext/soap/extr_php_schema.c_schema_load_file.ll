; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_load_file.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Parsing Schema: can't import schema from '%s'\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"targetNamespace\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"Parsing Schema: can't import schema from '%s', unexpected 'targetNamespace'='%s'\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"Parsing Schema: can't include schema from '%s', different 'targetNamespace'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, %struct.TYPE_22__*, i32)* @schema_load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schema_load_file(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32* %2, %struct.TYPE_22__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %165

16:                                               ; preds = %5
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i32*, i32** %8, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @xmlStrlen(i32* %21)
  %23 = call i32 @zend_hash_str_exists(i32* %18, i8* %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %165, label %25

25:                                               ; preds = %16
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 @sdl_set_uri_credentials(%struct.TYPE_23__* %26, i8* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = call %struct.TYPE_21__* @soap_xmlParseFile(i8* %31)
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %11, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = call i32 @sdl_restore_uri_credentials(%struct.TYPE_23__* %33)
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %36 = icmp eq %struct.TYPE_21__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load i32, i32* @E_ERROR, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @soap_error1(i32 %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32* %39)
  br label %41

41:                                               ; preds = %37, %25
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_20__* @get_node(i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %12, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %47 = icmp eq %struct.TYPE_20__* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %50 = call i32 @xmlFreeDoc(%struct.TYPE_21__* %49)
  %51 = load i32, i32* @E_ERROR, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @soap_error1(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32* %52)
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_22__* @get_attribute(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_22__* %58, %struct.TYPE_22__** %13, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %109

61:                                               ; preds = %54
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %63 = icmp ne %struct.TYPE_22__* %62, null
  br i1 %63, label %64, label %91

64:                                               ; preds = %61
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %66 = icmp eq %struct.TYPE_22__* %65, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @xmlStrcmp(i32 %72, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %67, %64
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %82 = call i32 @xmlFreeDoc(%struct.TYPE_21__* %81)
  %83 = load i32, i32* @E_ERROR, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @soap_error2(i32 %83, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32* %84, i32 %89)
  br label %91

91:                                               ; preds = %80, %67, %61
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %93 = icmp eq %struct.TYPE_22__* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %96 = icmp ne %struct.TYPE_22__* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %99 = call i32 @xmlFreeDoc(%struct.TYPE_21__* %98)
  %100 = load i32, i32* @E_ERROR, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @soap_error2(i32 %100, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32* %101, i32 %106)
  br label %108

108:                                              ; preds = %97, %94, %91
  br label %153

109:                                              ; preds = %54
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.TYPE_22__* @get_attribute(i32 %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_22__* %113, %struct.TYPE_22__** %13, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %115 = icmp eq %struct.TYPE_22__* %114, null
  br i1 %115, label %116, label %129

116:                                              ; preds = %109
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %118 = icmp ne %struct.TYPE_22__* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %121 = call i32 @BAD_CAST(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @xmlSetProp(%struct.TYPE_20__* %120, i32 %121, i32 %126)
  br label %128

128:                                              ; preds = %119, %116
  br label %152

129:                                              ; preds = %109
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %131 = icmp ne %struct.TYPE_22__* %130, null
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @xmlStrcmp(i32 %137, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %132
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %147 = call i32 @xmlFreeDoc(%struct.TYPE_21__* %146)
  %148 = load i32, i32* @E_ERROR, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @soap_error1(i32 %148, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i32* %149)
  br label %151

151:                                              ; preds = %145, %132, %129
  br label %152

152:                                              ; preds = %151, %128
  br label %153

153:                                              ; preds = %152, %108
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load i32*, i32** %8, align 8
  %157 = bitcast i32* %156 to i8*
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 @xmlStrlen(i32* %158)
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %161 = call i32 @zend_hash_str_add_ptr(i32* %155, i8* %157, i32 %159, %struct.TYPE_21__* %160)
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %164 = call i32 @load_schema(%struct.TYPE_23__* %162, %struct.TYPE_20__* %163)
  br label %165

165:                                              ; preds = %153, %16, %5
  ret void
}

declare dso_local i32 @zend_hash_str_exists(i32*, i8*, i32) #1

declare dso_local i32 @xmlStrlen(i32*) #1

declare dso_local i32 @sdl_set_uri_credentials(%struct.TYPE_23__*, i8*) #1

declare dso_local %struct.TYPE_21__* @soap_xmlParseFile(i8*) #1

declare dso_local i32 @sdl_restore_uri_credentials(%struct.TYPE_23__*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_20__* @get_node(i32, i8*) #1

declare dso_local i32 @xmlFreeDoc(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @get_attribute(i32, i8*) #1

declare dso_local i64 @xmlStrcmp(i32, i32) #1

declare dso_local i32 @soap_error2(i32, i8*, i32*, i32) #1

declare dso_local i32 @xmlSetProp(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @zend_hash_str_add_ptr(i32*, i8*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @load_schema(%struct.TYPE_23__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
