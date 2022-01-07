; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_send_redirect.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_send_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_str = type { i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"<p>Moved <a href='%.*s'>here</a>.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"Location: %.*s\0D\0AContent-Type: text/html\0D\0AContent-Length: %d\0D\0ACache-Control: no-cache\0D\0A%.*s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_http_send_redirect(%struct.mg_connection* %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.mg_str, align 8
  %8 = alloca %struct.mg_str, align 8
  %9 = alloca %struct.mg_connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [100 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [150 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = bitcast %struct.mg_str* %7 to { i64, i32 }*
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  store i64 %2, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  store i32 %3, i32* %18, align 8
  %19 = bitcast %struct.mg_str* %8 to { i64, i32 }*
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  store i64 %4, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  store i32 %5, i32* %21, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %9, align 8
  store i32 %1, i32* %10, align 4
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  store i8* %22, i8** %12, align 8
  %23 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8**, i32, i8*, i32, i32, ...) @mg_asprintf(i8** %12, i32 100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = getelementptr inbounds [150 x i8], [150 x i8]* %14, i64 0, i64 0
  store i8* %29, i8** %15, align 8
  %30 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %8, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %46 = call i32 (i8**, i32, i8*, i32, i32, ...) @mg_asprintf(i8** %15, i32 150, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34, i32 %35, i32 %38, i32 %40, i8* %45)
  %47 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @mg_send_response_line(%struct.mg_connection* %47, i32 %48, i8* %49)
  %51 = load i8*, i8** %15, align 8
  %52 = getelementptr inbounds [150 x i8], [150 x i8]* %14, i64 0, i64 0
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %6
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @MG_FREE(i8* %55)
  br label %57

57:                                               ; preds = %54, %6
  %58 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @mg_send(%struct.mg_connection* %58, i8* %59, i32 %60)
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %64 = icmp ne i8* %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @MG_FREE(i8* %66)
  br label %68

68:                                               ; preds = %65, %57
  ret void
}

declare dso_local i32 @mg_asprintf(i8**, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @mg_send_response_line(%struct.mg_connection*, i32, i8*) #1

declare dso_local i32 @MG_FREE(i8*) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
