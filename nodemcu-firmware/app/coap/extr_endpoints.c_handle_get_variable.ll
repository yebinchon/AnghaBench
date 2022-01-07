; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_endpoints.c_handle_get_variable.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_endpoints.c_handle_get_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_19__*, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }

@COAP_OPTION_URI_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"should never happen.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"/v1/v/\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" match.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"should be a number or string.\0A\00", align 1
@COAP_RSPCODE_NOT_FOUND = common dso_local global i32 0, align 4
@COAP_CONTENTTYPE_NONE = common dso_local global i32 0, align 4
@COAP_RSPCODE_CONTENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"/v1/v match.\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"none match.\0A\00", align 1
@COAP_CONTENTTYPE_TEXT_PLAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i64, i64)* @handle_get_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_get_variable(%struct.TYPE_20__* %0, i32* %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = call i32* (...) @lua_getstate()
  store i32* %20, i32** %17, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %22 = load i32, i32* @COAP_OPTION_URI_PATH, align 4
  %23 = call %struct.TYPE_18__* @coap_findOptions(%struct.TYPE_17__* %21, i32 %22, i64* %15)
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %14, align 8
  %24 = icmp ne %struct.TYPE_18__* null, %23
  br i1 %24, label %25, label %171

25:                                               ; preds = %6
  %26 = load i64, i64* %15, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %26, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load i64, i64* %15, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = icmp ne i64 %34, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i32 @NODE_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %173

44:                                               ; preds = %33, %25
  %45 = load i64, i64* %15, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  %52 = icmp eq i64 %45, %51
  br i1 %52, label %53, label %168

53:                                               ; preds = %44
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %18, align 8
  br label %59

59:                                               ; preds = %166, %75, %53
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %61 = icmp ne %struct.TYPE_19__* null, %60
  br i1 %61, label %62, label %167

62:                                               ; preds = %59
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = sub nsw i64 %64, 1
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %62
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %18, align 8
  br label %59

79:                                               ; preds = %62
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %84 = load i64, i64* %15, align 8
  %85 = sub nsw i64 %84, 1
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = sub nsw i64 %91, 1
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @memcmp(i8* %82, i32 %89, i64 %96)
  %98 = icmp eq i64 0, %97
  br i1 %98, label %99, label %162

99:                                               ; preds = %79
  %100 = call i32 @NODE_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @NODE_DBG(i8* %103)
  %105 = call i32 @NODE_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strlen(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %161

111:                                              ; preds = %99
  %112 = load i32*, i32** %17, align 8
  %113 = call i32 @lua_gettop(i32* %112)
  store i32 %113, i32* %16, align 4
  %114 = load i32*, i32** %17, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @lua_getglobal(i32* %114, i8* %117)
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 @lua_isnumber(i32* %119, i32 -1)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %111
  %123 = load i32*, i32** %17, align 8
  %124 = call i32 @lua_isstring(i32* %123, i32 -1)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %122
  %127 = call i32 @NODE_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32*, i32** %17, align 8
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @lua_settop(i32* %128, i32 %129)
  %131 = load i32*, i32** %9, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* %13, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* @COAP_RSPCODE_NOT_FOUND, align 4
  %138 = load i32, i32* @COAP_CONTENTTYPE_NONE, align 4
  %139 = call i32 @coap_make_response(i32* %131, %struct.TYPE_17__* %132, i64* null, i64 0, i64 %133, i64 %134, i32* %136, i32 %137, i32 %138)
  store i32 %139, i32* %7, align 4
  br label %183

140:                                              ; preds = %122, %111
  %141 = load i32*, i32** %17, align 8
  %142 = call i8* @lua_tostring(i32* %141, i32 -1)
  store i8* %142, i8** %19, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @lua_settop(i32* %143, i32 %144)
  %146 = load i32*, i32** %9, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %148 = load i8*, i8** %19, align 8
  %149 = bitcast i8* %148 to i64*
  %150 = load i8*, i8** %19, align 8
  %151 = call i64 @strlen(i8* %150)
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %13, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* @COAP_RSPCODE_CONTENT, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @coap_make_response(i32* %146, %struct.TYPE_17__* %147, i64* %149, i64 %151, i64 %152, i64 %153, i32* %155, i32 %156, i32 %159)
  store i32 %160, i32* %7, align 4
  br label %183

161:                                              ; preds = %99
  br label %166

162:                                              ; preds = %79
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %164, align 8
  store %struct.TYPE_19__* %165, %struct.TYPE_19__** %18, align 8
  br label %166

166:                                              ; preds = %162, %161
  br label %59

167:                                              ; preds = %59
  br label %170

168:                                              ; preds = %44
  %169 = call i32 @NODE_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %173

170:                                              ; preds = %167
  br label %171

171:                                              ; preds = %170, %6
  %172 = call i32 @NODE_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %168, %42
  %174 = load i32*, i32** %9, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* %13, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = load i32, i32* @COAP_RSPCODE_CONTENT, align 4
  %181 = load i32, i32* @COAP_CONTENTTYPE_TEXT_PLAIN, align 4
  %182 = call i32 @coap_make_response(i32* %174, %struct.TYPE_17__* %175, i64* null, i64 0, i64 %176, i64 %177, i32* %179, i32 %180, i32 %181)
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %173, %140, %126
  %184 = load i32, i32* %7, align 4
  ret i32 %184
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local %struct.TYPE_18__* @coap_findOptions(%struct.TYPE_17__*, i32, i64*) #1

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @coap_make_response(i32*, %struct.TYPE_17__*, i64*, i64, i64, i64, i32*, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
