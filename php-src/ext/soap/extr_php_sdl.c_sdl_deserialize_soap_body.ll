; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_sdl_deserialize_soap_body.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_sdl_deserialize_soap_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i8*, i8* }
%struct.TYPE_6__ = type { i64, i64, i8*, i8*, i8*, i8*, i8* }

@sdlEncodingUse = common dso_local global i32 0, align 4
@SOAP_ENCODED = common dso_local global i64 0, align 8
@sdlRpcEncodingStyle = common dso_local global i32 0, align 4
@SOAP_ENCODING_DEFAULT = common dso_local global i8* null, align 8
@delete_header = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8**, i8**, i8**)* @sdl_deserialize_soap_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl_deserialize_soap_body(%struct.TYPE_7__* %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @sdlEncodingUse, align 4
  %18 = load i8**, i8*** %8, align 8
  %19 = call i32 @WSDL_CACHE_GET_1(i64 %16, i32 %17, i8** %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SOAP_ENCODED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @sdlRpcEncodingStyle, align 4
  %30 = load i8**, i8*** %8, align 8
  %31 = call i32 @WSDL_CACHE_GET_1(i64 %28, i32 %29, i8** %30)
  br label %37

32:                                               ; preds = %4
  %33 = load i8*, i8** @SOAP_ENCODING_DEFAULT, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load i8**, i8*** %8, align 8
  %39 = call i8* @sdl_deserialize_string(i8** %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i8**, i8*** %8, align 8
  %44 = call i32 @WSDL_CACHE_GET_INT(i32 %42, i8** %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %211

47:                                               ; preds = %37
  %48 = call i8* @emalloc(i32 4)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @delete_header, align 4
  %56 = call i32 @zend_hash_init(i8* %53, i32 %54, i32* null, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %209, %47
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %210

60:                                               ; preds = %57
  %61 = call i8* @emalloc(i32 4)
  %62 = bitcast i8* %61 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %12, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %64 = call i32 @memset(%struct.TYPE_6__* %63, i32 0, i32 4)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = load i8**, i8*** %8, align 8
  %70 = call i32 @sdl_deserialize_key(i8* %67, %struct.TYPE_6__* %68, i8** %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @sdlEncodingUse, align 4
  %75 = load i8**, i8*** %8, align 8
  %76 = call i32 @WSDL_CACHE_GET_1(i64 %73, i32 %74, i8** %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SOAP_ENCODED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %60
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @sdlRpcEncodingStyle, align 4
  %87 = load i8**, i8*** %8, align 8
  %88 = call i32 @WSDL_CACHE_GET_1(i64 %85, i32 %86, i8** %87)
  br label %94

89:                                               ; preds = %60
  %90 = load i8*, i8** @SOAP_ENCODING_DEFAULT, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %89, %82
  %95 = load i8**, i8*** %8, align 8
  %96 = call i8* @sdl_deserialize_string(i8** %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load i8**, i8*** %8, align 8
  %100 = call i8* @sdl_deserialize_string(i8** %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i8**, i8*** %8, align 8
  %105 = call i32 @WSDL_CACHE_GET_INT(i32 %103, i8** %104)
  %106 = load i8**, i8*** %6, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i8**, i8*** %8, align 8
  %115 = call i32 @WSDL_CACHE_GET_INT(i32 %113, i8** %114)
  %116 = load i8**, i8*** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i8**, i8*** %8, align 8
  %127 = call i32 @WSDL_CACHE_GET_INT(i32 %125, i8** %126)
  %128 = load i32, i32* %10, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %209

130:                                              ; preds = %94
  %131 = call i8* @emalloc(i32 4)
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 6
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 6
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @delete_header, align 4
  %139 = call i32 @zend_hash_init(i8* %136, i32 %137, i32* null, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %177, %130
  %141 = load i32, i32* %10, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %208

143:                                              ; preds = %140
  %144 = call i8* @emalloc(i32 4)
  %145 = bitcast i8* %144 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %145, %struct.TYPE_6__** %13, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %147 = call i32 @memset(%struct.TYPE_6__* %146, i32 0, i32 4)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 6
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %152 = load i8**, i8*** %8, align 8
  %153 = call i32 @sdl_deserialize_key(i8* %150, %struct.TYPE_6__* %151, i8** %152)
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @sdlEncodingUse, align 4
  %158 = load i8**, i8*** %8, align 8
  %159 = call i32 @WSDL_CACHE_GET_1(i64 %156, i32 %157, i8** %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @SOAP_ENCODED, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %143
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* @sdlRpcEncodingStyle, align 4
  %170 = load i8**, i8*** %8, align 8
  %171 = call i32 @WSDL_CACHE_GET_1(i64 %168, i32 %169, i8** %170)
  br label %177

172:                                              ; preds = %143
  %173 = load i8*, i8** @SOAP_ENCODING_DEFAULT, align 8
  %174 = ptrtoint i8* %173 to i64
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %172, %165
  %178 = load i8**, i8*** %8, align 8
  %179 = call i8* @sdl_deserialize_string(i8** %178)
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 5
  store i8* %179, i8** %181, align 8
  %182 = load i8**, i8*** %8, align 8
  %183 = call i8* @sdl_deserialize_string(i8** %182)
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load i8**, i8*** %8, align 8
  %188 = call i32 @WSDL_CACHE_GET_INT(i32 %186, i8** %187)
  %189 = load i8**, i8*** %6, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 3
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* %11, align 4
  %197 = load i8**, i8*** %8, align 8
  %198 = call i32 @WSDL_CACHE_GET_INT(i32 %196, i8** %197)
  %199 = load i8**, i8*** %7, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  store i8* %203, i8** %205, align 8
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %10, align 4
  br label %140

208:                                              ; preds = %140
  br label %209

209:                                              ; preds = %208, %94
  br label %57

210:                                              ; preds = %57
  br label %211

211:                                              ; preds = %210, %37
  ret void
}

declare dso_local i32 @WSDL_CACHE_GET_1(i64, i32, i8**) #1

declare dso_local i8* @sdl_deserialize_string(i8**) #1

declare dso_local i32 @WSDL_CACHE_GET_INT(i32, i8**) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @zend_hash_init(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sdl_deserialize_key(i8*, %struct.TYPE_6__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
