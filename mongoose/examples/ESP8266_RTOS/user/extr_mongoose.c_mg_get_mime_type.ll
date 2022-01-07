; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_get_mime_type.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_get_mime_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32* }
%struct.mg_serve_http_opts = type { i8* }
%struct.mg_str = type { i64, i8* }

@mg_static_builtin_mime_types = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i8* } (i8*, i8*, %struct.mg_serve_http_opts*)* @mg_get_mime_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i8* } @mg_get_mime_type(i8* %0, i8* %1, %struct.mg_serve_http_opts* %2) #0 {
  %4 = alloca %struct.mg_str, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mg_serve_http_opts*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mg_str, align 8
  %13 = alloca %struct.mg_str, align 8
  %14 = alloca %struct.mg_str, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mg_serve_http_opts* %2, %struct.mg_serve_http_opts** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strlen(i8* %15)
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %11, align 8
  %18 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %7, align 8
  %19 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %43, %3
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @mg_next_comma_list_entry(i8* %22, %struct.mg_str* %13, %struct.mg_str* %14)
  store i8* %23, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %13, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %27, %29
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  store i8* %31, i8** %8, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %13, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @mg_vcasecmp(%struct.mg_str* %13, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = bitcast %struct.mg_str* %4 to i8*
  %42 = bitcast %struct.mg_str* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  br label %112

43:                                               ; preds = %36, %25
  br label %21

44:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  br label %45

45:                                               ; preds = %99, %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mg_static_builtin_mime_types, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %102

52:                                               ; preds = %45
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mg_static_builtin_mime_types, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %54, %59
  %61 = getelementptr inbounds i8, i8* %53, i64 %60
  store i8* %61, i8** %8, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mg_static_builtin_mime_types, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ugt i64 %62, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %52
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 -1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %98

75:                                               ; preds = %69
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mg_static_builtin_mime_types, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @mg_casecmp(i8* %76, i32* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %75
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mg_static_builtin_mime_types, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %12, i32 0, i32 1
  store i8* %89, i8** %90, align 8
  %91 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %12, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @strlen(i8* %92)
  %94 = ptrtoint i8* %93 to i64
  %95 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %12, i32 0, i32 0
  store i64 %94, i64* %95, align 8
  %96 = bitcast %struct.mg_str* %4 to i8*
  %97 = bitcast %struct.mg_str* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 16, i1 false)
  br label %112

98:                                               ; preds = %75, %69, %52
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %10, align 8
  br label %45

102:                                              ; preds = %45
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %12, i32 0, i32 1
  store i8* %103, i8** %104, align 8
  %105 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %12, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @strlen(i8* %106)
  %108 = ptrtoint i8* %107 to i64
  %109 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %12, i32 0, i32 0
  store i64 %108, i64* %109, align 8
  %110 = bitcast %struct.mg_str* %4 to i8*
  %111 = bitcast %struct.mg_str* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 16, i1 false)
  br label %112

112:                                              ; preds = %102, %84, %40
  %113 = bitcast %struct.mg_str* %4 to { i64, i8* }*
  %114 = load { i64, i8* }, { i64, i8* }* %113, align 8
  ret { i64, i8* } %114
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local i8* @mg_next_comma_list_entry(i8*, %struct.mg_str*, %struct.mg_str*) #1

declare dso_local i64 @mg_vcasecmp(%struct.mg_str*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mg_casecmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
