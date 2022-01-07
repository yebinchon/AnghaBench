; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_wsdl_message.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_wsdl_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_19__*, i32, i32*, %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_16__*, i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }

@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Parsing WSDL: Missing <message> with name '%s'\00", align 1
@delete_parameter = common dso_local global i32 0, align 4
@WSDL_NAMESPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Parsing WSDL: Unexpected extensibility element <%s>\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"documentation\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Parsing WSDL: Unexpected WSDL element <%s>\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Parsing WSDL: No name associated with <part> '%s'\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_22__*, i32*)* @wsdl_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wsdl_message(%struct.TYPE_22__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  store i32* null, i32** %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = call i8* @strrchr(i8* %16, i8 signext 58)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = bitcast i32* %21 to i8*
  store i8* %22, i8** %10, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = call %struct.TYPE_19__* @zend_hash_str_find_ptr(i32* %28, i8* %29, i32 %31)
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %8, align 8
  %33 = icmp eq %struct.TYPE_19__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @E_ERROR, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @soap_error1(i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32* %36)
  br label %38

38:                                               ; preds = %34, %26
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %7, align 8
  %40 = call i8* @emalloc(i32 4)
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @delete_parameter, align 4
  %44 = call i32 @zend_hash_init(i32* %42, i32 0, i32* null, i32 %43, i32 0)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %5, align 8
  br label %48

48:                                               ; preds = %173, %76, %38
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = icmp ne %struct.TYPE_19__* %49, null
  br i1 %50, label %51, label %180

51:                                               ; preds = %48
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = icmp ne %struct.TYPE_17__* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load i32, i32* @WSDL_NAMESPACE, align 4
  %64 = call i64 @strcmp(i8* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load i32, i32* @E_ERROR, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @soap_error1(i32 %67, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32* %70)
  br label %72

72:                                               ; preds = %66, %56, %51
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = call i64 @node_is_equal(%struct.TYPE_19__* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %5, align 8
  br label %48

80:                                               ; preds = %72
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %82 = call i64 @node_is_equal(%struct.TYPE_19__* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @E_ERROR, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @soap_error1(i32 %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32* %88)
  br label %90

90:                                               ; preds = %84, %80
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %6, align 8
  %92 = call i8* @emalloc(i32 4)
  %93 = bitcast i8* %92 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %14, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %95 = call i32 @memset(%struct.TYPE_21__* %94, i32 0, i32 4)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.TYPE_20__* @get_attribute(i32 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_20__* %101, %struct.TYPE_20__** %13, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %103 = icmp eq %struct.TYPE_20__* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %90
  %105 = load i32, i32* @E_ERROR, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @soap_error1(i32 %105, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32* %108)
  br label %110

110:                                              ; preds = %104, %90
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 @estrdup(i8* %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.TYPE_20__* @get_attribute(i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_20__* %123, %struct.TYPE_20__** %12, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %125 = icmp ne %struct.TYPE_20__* %124, null
  br i1 %125, label %126, label %139

126:                                              ; preds = %110
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @get_encoder_from_prefix(i32 %129, %struct.TYPE_19__* %130, i64 %135)
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  br label %173

139:                                              ; preds = %110
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call %struct.TYPE_20__* @get_attribute(i32 %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_20__* %143, %struct.TYPE_20__** %11, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %145 = icmp ne %struct.TYPE_20__* %144, null
  br i1 %145, label %146, label %172

146:                                              ; preds = %139
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call %struct.TYPE_16__* @get_element(i32 %149, %struct.TYPE_19__* %150, i64 %155)
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  store %struct.TYPE_16__* %156, %struct.TYPE_16__** %158, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = icmp ne %struct.TYPE_16__* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %146
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %163, %146
  br label %172

172:                                              ; preds = %171, %139
  br label %173

173:                                              ; preds = %172, %126
  %174 = load i32*, i32** %9, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %176 = call i32 @zend_hash_next_index_insert_ptr(i32* %174, %struct.TYPE_21__* %175)
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %178, align 8
  store %struct.TYPE_19__* %179, %struct.TYPE_19__** %5, align 8
  br label %48

180:                                              ; preds = %48
  %181 = load i32*, i32** %9, align 8
  ret i32* %181
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_19__* @zend_hash_str_find_ptr(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @get_attribute(i32, i8*) #1

declare dso_local i32 @estrdup(i8*) #1

declare dso_local i32 @get_encoder_from_prefix(i32, %struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_16__* @get_element(i32, %struct.TYPE_19__*, i64) #1

declare dso_local i32 @zend_hash_next_index_insert_ptr(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
