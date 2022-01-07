; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encoder_2pass_prepare.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encoder_2pass_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_context = type { %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.stream = type { i32 }
%struct.bstr = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"%s-%s-pass1.log\00", align 1
@AV_CODEC_FLAG_PASS2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Reading 2-pass log: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"could not read '%s', disabling 2-pass encoding at pass 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"could not open '%s', disabling 2-pass encoding at pass 2\0A\00", align 1
@AV_CODEC_FLAG_PASS1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Writing to 2-pass log: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"could not open '%s', disabling 2-pass encoding at pass 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encoder_context*)* @encoder_2pass_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encoder_2pass_prepare(%struct.encoder_context* %0) #0 {
  %2 = alloca %struct.encoder_context*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stream*, align 8
  %5 = alloca %struct.bstr, align 8
  store %struct.encoder_context* %0, %struct.encoder_context** %2, align 8
  %6 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %7 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %6, i32 0, i32 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %12 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @stream_type_name(i32 %13)
  %15 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  store i8* %15, i8** %3, align 8
  %16 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %17 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AV_CODEC_FLAG_PASS2, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %1
  %25 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @MP_INFO(%struct.encoder_context* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %30 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.stream* @stream_open(i8* %28, i32 %31)
  store %struct.stream* %32, %struct.stream** %4, align 8
  %33 = load %struct.stream*, %struct.stream** %4, align 8
  %34 = icmp ne %struct.stream* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %24
  %36 = load %struct.stream*, %struct.stream** %4, align 8
  %37 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %38 = call i64 @stream_read_complete(%struct.stream* %36, %struct.encoder_context* %37, i32 1000000000)
  %39 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %47 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 %45, i64* %49, align 8
  br label %54

50:                                               ; preds = %35
  %51 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @MP_WARN(%struct.encoder_context* %51, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.stream*, %struct.stream** %4, align 8
  %56 = call i32 @free_stream(%struct.stream* %55)
  br label %69

57:                                               ; preds = %24
  %58 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @MP_WARN(%struct.encoder_context* %58, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @AV_CODEC_FLAG_PASS2, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %64 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %62
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %57, %54
  br label %70

70:                                               ; preds = %69, %1
  %71 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %72 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @AV_CODEC_FLAG_PASS1, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %70
  %80 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @MP_INFO(%struct.encoder_context* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  %83 = load i8*, i8** %3, align 8
  %84 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %85 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @open_output_stream(i8* %83, i32 %86)
  %88 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %89 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %91 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %79
  %95 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @MP_WARN(%struct.encoder_context* %95, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* @AV_CODEC_FLAG_PASS1, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.encoder_context*, %struct.encoder_context** %2, align 8
  %101 = getelementptr inbounds %struct.encoder_context, %struct.encoder_context* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %99
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %94, %79
  br label %107

107:                                              ; preds = %106, %70
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 @talloc_free(i8* %108)
  ret void
}

declare dso_local i8* @talloc_asprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @stream_type_name(i32) #1

declare dso_local i32 @MP_INFO(%struct.encoder_context*, i8*, i8*) #1

declare dso_local %struct.stream* @stream_open(i8*, i32) #1

declare dso_local i64 @stream_read_complete(%struct.stream*, %struct.encoder_context*, i32) #1

declare dso_local i32 @MP_WARN(%struct.encoder_context*, i8*, i8*) #1

declare dso_local i32 @free_stream(%struct.stream*) #1

declare dso_local i32 @open_output_stream(i8*, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
