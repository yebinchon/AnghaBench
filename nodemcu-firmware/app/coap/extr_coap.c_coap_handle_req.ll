; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_handle_req.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_handle_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32)*, i64, i32*, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }

@endpoints = common dso_local global %struct.TYPE_21__* null, align 8
@COAP_OPTION_URI_PATH = common dso_local global i32 0, align 4
@COAP_RSPCODE_NOT_FOUND = common dso_local global i32 0, align 4
@COAP_CONTENTTYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_handle_req(i32* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** @endpoints, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %11, align 8
  br label %13

13:                                               ; preds = %148, %3
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_21__*, i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_21__*, i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32)* null, %16
  br i1 %17, label %18, label %151

18:                                               ; preds = %13
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %148

28:                                               ; preds = %18
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %30 = load i32, i32* @COAP_OPTION_URI_PATH, align 4
  %31 = call %struct.TYPE_20__* @coap_findOptions(%struct.TYPE_19__* %29, i32 %30, i32* %10)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %8, align 8
  %32 = icmp ne %struct.TYPE_20__* null, %31
  br i1 %32, label %33, label %147

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %34, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = icmp ne i32 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %148

51:                                               ; preds = %41, %33
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %108, %51
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %111

60:                                               ; preds = %52
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @strlen(i32 %76)
  %78 = icmp ne i64 %67, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %60
  br label %148

80:                                               ; preds = %60
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @memcmp(i32 %89, i32 %96, i64 %103)
  %105 = icmp ne i64 0, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %80
  br label %148

107:                                              ; preds = %80
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %52

111:                                              ; preds = %52
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  %119 = icmp eq i32 %112, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %148

126:                                              ; preds = %120, %111
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i32 (%struct.TYPE_21__*, i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32)** %128, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 %129(%struct.TYPE_21__* %130, i32* %131, %struct.TYPE_19__* %132, %struct.TYPE_19__* %133, i32 %139, i32 %145)
  store i32 %146, i32* %4, align 4
  br label %171

147:                                              ; preds = %28
  br label %148

148:                                              ; preds = %147, %125, %106, %79, %50, %27
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 1
  store %struct.TYPE_21__* %150, %struct.TYPE_21__** %11, align 8
  br label %13

151:                                              ; preds = %13
  %152 = load i32*, i32** %5, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load i32, i32* @COAP_RSPCODE_NOT_FOUND, align 4
  %169 = load i32, i32* @COAP_CONTENTTYPE_NONE, align 4
  %170 = call i32 @coap_make_response(i32* %152, %struct.TYPE_19__* %153, i32* null, i32 0, i32 %159, i32 %165, i32* %167, i32 %168, i32 %169)
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %151, %126
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.TYPE_20__* @coap_findOptions(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @coap_make_response(i32*, %struct.TYPE_19__*, i32*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
