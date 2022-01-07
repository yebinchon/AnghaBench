; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_do_ssi_include.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_do_ssi_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { i32 }
%struct.mg_serve_http_opts = type { i8*, i8* }

@MG_MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" virtual=\22%[^\22]\22\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" abspath=\22%[^\22]\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" file=\22%[^\22]\22\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" \22%[^\22]\22\00", align 1
@DIRSEP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Bad SSI #include: [%s]\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"SSI include error: mg_fopen(%s): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %struct.http_message*, i8*, i8*, i32, %struct.mg_serve_http_opts*)* @mg_do_ssi_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_do_ssi_include(%struct.mg_connection* %0, %struct.http_message* %1, i8* %2, i8* %3, i32 %4, %struct.mg_serve_http_opts* %5) #0 {
  %7 = alloca %struct.mg_connection*, align 8
  %8 = alloca %struct.http_message*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mg_serve_http_opts*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %7, align 8
  store %struct.http_message* %1, %struct.http_message** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.mg_serve_http_opts* %5, %struct.mg_serve_http_opts** %12, align 8
  %19 = load i32, i32* @MG_MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @MG_MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @sscanf(i8* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %22)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = trunc i64 %24 to i32
  %31 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %12, align 8
  %32 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %25, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %22)
  br label %75

35:                                               ; preds = %6
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = trunc i64 %24 to i32
  %41 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %25, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  br label %74

42:                                               ; preds = %35
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @sscanf(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @sscanf(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %22)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %69

50:                                               ; preds = %46, %42
  %51 = trunc i64 %24 to i32
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %25, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @DIRSEP, align 4
  %55 = call i8* @strrchr(i8* %25, i32 %54)
  store i8* %55, i8** %16, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i8*, i8** %16, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %57, %50
  %61 = call i32 @strlen(i8* %25)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %25, i64 %62
  %64 = call i32 @strlen(i8* %25)
  %65 = sext i32 %64 to i64
  %66 = sub i64 %24, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %63, i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  br label %73

69:                                               ; preds = %46
  %70 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 (%struct.mg_connection*, i8*, i8*, ...) @mg_printf(%struct.mg_connection* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %71)
  store i32 1, i32* %18, align 4
  br label %113

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %39
  br label %75

75:                                               ; preds = %74, %29
  %76 = call i32* @mg_fopen(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %76, i32** %17, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %80 = call i32 (...) @mg_get_errno()
  %81 = call i32 @strerror(i32 %80)
  %82 = call i32 (%struct.mg_connection*, i8*, i8*, ...) @mg_printf(%struct.mg_connection* %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %25, i32 %81)
  br label %112

83:                                               ; preds = %75
  %84 = load i32*, i32** %17, align 8
  %85 = call i64 @fileno(i32* %84)
  %86 = trunc i64 %85 to i32
  %87 = call i32 @mg_set_close_on_exec(i32 %86)
  %88 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %12, align 8
  %89 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %12, align 8
  %92 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = call i64 @mg_match_prefix(i8* %90, i32 %94, i8* %25)
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %83
  %98 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %99 = load %struct.http_message*, %struct.http_message** %8, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %12, align 8
  %104 = call i32 @mg_send_ssi_file(%struct.mg_connection* %98, %struct.http_message* %99, i8* %25, i32* %100, i32 %102, %struct.mg_serve_http_opts* %103)
  br label %109

105:                                              ; preds = %83
  %106 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = call i32 @mg_send_file_data(%struct.mg_connection* %106, i32* %107)
  br label %109

109:                                              ; preds = %105, %97
  %110 = load i32*, i32** %17, align 8
  %111 = call i32 @fclose(i32* %110)
  br label %112

112:                                              ; preds = %109, %78
  store i32 0, i32* %18, align 4
  br label %113

113:                                              ; preds = %112, %69
  %114 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %18, align 4
  switch i32 %115, label %117 [
    i32 0, label %116
    i32 1, label %116
  ]

116:                                              ; preds = %113, %113
  ret void

117:                                              ; preds = %113
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @strrchr(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*, ...) #2

declare dso_local i32* @mg_fopen(i8*, i8*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @mg_get_errno(...) #2

declare dso_local i32 @mg_set_close_on_exec(i32) #2

declare dso_local i64 @fileno(i32*) #2

declare dso_local i64 @mg_match_prefix(i8*, i32, i8*) #2

declare dso_local i32 @mg_send_ssi_file(%struct.mg_connection*, %struct.http_message*, i8*, i32*, i32, %struct.mg_serve_http_opts*) #2

declare dso_local i32 @mg_send_file_data(%struct.mg_connection*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
