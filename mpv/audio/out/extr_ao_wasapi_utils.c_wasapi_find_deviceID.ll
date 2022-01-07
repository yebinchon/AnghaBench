; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_wasapi_find_deviceID.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_wasapi_find_deviceID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.device_desc = type { i32, i32 }
%struct.enumerator = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"Find device '%.*s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"There are no playback devices available\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"No device specified. Selecting default.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Selecting device by number: #%lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"{0.0.0.00000000}.\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Selecting device by id: '%.*s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Selecting device by name: '%.*s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Multiple devices matched '%.*s'.Ignoring device '%s' (%s).\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Failed to find device '%.*s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wasapi_find_deviceID(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca %struct.device_desc*, align 8
  %6 = alloca %struct.enumerator*, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  store i32* null, i32** %3, align 8
  %10 = load %struct.ao*, %struct.ao** %2, align 8
  %11 = call i32 @wasapi_get_specified_device_string(%struct.ao* %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.ao*, %struct.ao** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @BSTR_P(i32 %15)
  %17 = call i32 @MP_DBG(%struct.ao* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %16)
  store %struct.device_desc* null, %struct.device_desc** %5, align 8
  %18 = load %struct.ao*, %struct.ao** %2, align 8
  %19 = getelementptr inbounds %struct.ao, %struct.ao* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.enumerator* @create_enumerator(i32 %20)
  store %struct.enumerator* %21, %struct.enumerator** %6, align 8
  %22 = load %struct.enumerator*, %struct.enumerator** %6, align 8
  %23 = icmp ne %struct.enumerator* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %166

25:                                               ; preds = %1
  %26 = load %struct.enumerator*, %struct.enumerator** %6, align 8
  %27 = getelementptr inbounds %struct.enumerator, %struct.enumerator* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.ao*, %struct.ao** %2, align 8
  %32 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %166

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load %struct.ao*, %struct.ao** %2, align 8
  %39 = call i32 (%struct.ao*, i8*, ...) @MP_VERBOSE(%struct.ao* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.enumerator*, %struct.enumerator** %6, align 8
  %41 = call %struct.device_desc* @default_device_desc(%struct.enumerator* %40)
  store %struct.device_desc* %41, %struct.device_desc** %5, align 8
  %42 = load %struct.ao*, %struct.ao** %2, align 8
  %43 = getelementptr inbounds %struct.ao, %struct.ao* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %46 = call i32* @select_device(i32 %44, %struct.device_desc* %45)
  store i32* %46, i32** %3, align 8
  br label %166

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @bstrtoll(i32 %49, %struct.TYPE_8__* %7, i32 10)
  store i64 %50, i64* %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %8, align 8
  %56 = icmp sle i64 0, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.enumerator*, %struct.enumerator** %6, align 8
  %60 = getelementptr inbounds %struct.enumerator, %struct.enumerator* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.ao*, %struct.ao** %2, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 (%struct.ao*, i8*, ...) @MP_VERBOSE(%struct.ao* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load %struct.enumerator*, %struct.enumerator** %6, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call %struct.device_desc* @device_desc_for_num(%struct.enumerator* %67, i64 %68)
  store %struct.device_desc* %69, %struct.device_desc** %5, align 8
  %70 = load %struct.ao*, %struct.ao** %2, align 8
  %71 = getelementptr inbounds %struct.ao, %struct.ao* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %74 = call i32* @select_device(i32 %72, %struct.device_desc* %73)
  store i32* %74, i32** %3, align 8
  br label %166

75:                                               ; preds = %57, %54, %47
  %76 = call i32 @bstr_eatstart0(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %77

77:                                               ; preds = %153, %75
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.enumerator*, %struct.enumerator** %6, align 8
  %80 = getelementptr inbounds %struct.enumerator, %struct.enumerator* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %156

83:                                               ; preds = %77
  %84 = load %struct.enumerator*, %struct.enumerator** %6, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call %struct.device_desc* @device_desc_for_num(%struct.enumerator* %84, i64 %85)
  store %struct.device_desc* %86, %struct.device_desc** %5, align 8
  %87 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %88 = icmp ne %struct.device_desc* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %166

90:                                               ; preds = %83
  %91 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %92 = getelementptr inbounds %struct.device_desc, %struct.device_desc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @bstr0(i32 %93)
  %95 = call i32 @bstr_strip(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @bstrcmp(i32 %97, i32 %95)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %90
  %101 = load %struct.ao*, %struct.ao** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @BSTR_P(i32 %103)
  %105 = call i32 (%struct.ao*, i8*, ...) @MP_VERBOSE(%struct.ao* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %104)
  %106 = load %struct.ao*, %struct.ao** %2, align 8
  %107 = getelementptr inbounds %struct.ao, %struct.ao* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %110 = call i32* @select_device(i32 %108, %struct.device_desc* %109)
  store i32* %110, i32** %3, align 8
  br label %166

111:                                              ; preds = %90
  %112 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %113 = getelementptr inbounds %struct.device_desc, %struct.device_desc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @bstr0(i32 %114)
  %116 = call i32 @bstr_strip(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @bstrcmp(i32 %118, i32 %116)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %148

121:                                              ; preds = %111
  %122 = load i32*, i32** %3, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %135, label %124

124:                                              ; preds = %121
  %125 = load %struct.ao*, %struct.ao** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @BSTR_P(i32 %127)
  %129 = call i32 (%struct.ao*, i8*, ...) @MP_VERBOSE(%struct.ao* %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %128)
  %130 = load %struct.ao*, %struct.ao** %2, align 8
  %131 = getelementptr inbounds %struct.ao, %struct.ao* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %134 = call i32* @select_device(i32 %132, %struct.device_desc* %133)
  store i32* %134, i32** %3, align 8
  br label %147

135:                                              ; preds = %121
  %136 = load %struct.ao*, %struct.ao** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @BSTR_P(i32 %138)
  %140 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %141 = getelementptr inbounds %struct.device_desc, %struct.device_desc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %144 = getelementptr inbounds %struct.device_desc, %struct.device_desc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @MP_WARN(%struct.ao* %136, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i64 %139, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %135, %124
  br label %148

148:                                              ; preds = %147, %111
  %149 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %150 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %151 = call i32 @talloc_free(%struct.device_desc* %150)
  %152 = call i32 @SAFE_DESTROY(%struct.device_desc* %149, i32 %151)
  br label %153

153:                                              ; preds = %148
  %154 = load i64, i64* %9, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %9, align 8
  br label %77

156:                                              ; preds = %77
  %157 = load i32*, i32** %3, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = load %struct.ao*, %struct.ao** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @BSTR_P(i32 %162)
  %164 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64 %163)
  br label %165

165:                                              ; preds = %159, %156
  br label %166

166:                                              ; preds = %165, %100, %89, %63, %37, %30, %24
  %167 = load %struct.device_desc*, %struct.device_desc** %5, align 8
  %168 = call i32 @talloc_free(%struct.device_desc* %167)
  %169 = load %struct.enumerator*, %struct.enumerator** %6, align 8
  %170 = call i32 @destroy_enumerator(%struct.enumerator* %169)
  %171 = load i32*, i32** %3, align 8
  ret i32* %171
}

declare dso_local i32 @wasapi_get_specified_device_string(%struct.ao*) #1

declare dso_local i32 @MP_DBG(%struct.ao*, i8*, i64) #1

declare dso_local i64 @BSTR_P(i32) #1

declare dso_local %struct.enumerator* @create_enumerator(i32) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, ...) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, ...) #1

declare dso_local %struct.device_desc* @default_device_desc(%struct.enumerator*) #1

declare dso_local i32* @select_device(i32, %struct.device_desc*) #1

declare dso_local i64 @bstrtoll(i32, %struct.TYPE_8__*, i32) #1

declare dso_local %struct.device_desc* @device_desc_for_num(%struct.enumerator*, i64) #1

declare dso_local i32 @bstr_eatstart0(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @bstrcmp(i32, i32) #1

declare dso_local i32 @bstr_strip(i32) #1

declare dso_local i32 @bstr0(i32) #1

declare dso_local i32 @MP_WARN(%struct.ao*, i8*, i64, i32, i32) #1

declare dso_local i32 @SAFE_DESTROY(%struct.device_desc*, i32) #1

declare dso_local i32 @talloc_free(%struct.device_desc*) #1

declare dso_local i32 @destroy_enumerator(%struct.enumerator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
