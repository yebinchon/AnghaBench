; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_handle_POST.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_handle_POST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Handling POST\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/setwifi \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Content-Length: \00", align 1
@http_header_400 = common dso_local global i32 0, align 4
@http_header_302_trying = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"http_recvcb failed. Failed to handle wifi credentials.\00", align 1
@ENDUSER_SETUP_ERR_UNKOWN_ERROR = common dso_local global i32 0, align 4
@ENDUSER_SETUP_ERR_NONFATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_pcb*, i8*, i64)* @enduser_setup_handle_POST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enduser_setup_handle_POST(%struct.tcp_pcb* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.tcp_pcb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 5
  %13 = call i64 @strncmp(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %60

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @strstr(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strstr(i8* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22, %15
  %26 = load %struct.tcp_pcb*, %struct.tcp_pcb** %4, align 8
  %27 = load i32, i32* @http_header_400, align 4
  %28 = load i32, i32* @http_header_400, align 4
  %29 = call i32 @LITLEN(i32 %28)
  %30 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %26, i32 %27, i32 %29)
  br label %60

31:                                               ; preds = %22
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 16
  %34 = call i32 @atoi(i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @enduser_setup_http_handle_credentials(i8* %37, i32 %38)
  switch i32 %39, label %55 [
    i32 0, label %40
    i32 1, label %49
  ]

40:                                               ; preds = %31
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @enduser_setup_write_file_with_extra_configuration_data(i8* %41, i32 %42)
  %44 = load %struct.tcp_pcb*, %struct.tcp_pcb** %4, align 8
  %45 = load i32, i32* @http_header_302_trying, align 4
  %46 = load i32, i32* @http_header_302_trying, align 4
  %47 = call i32 @LITLEN(i32 %46)
  %48 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %44, i32 %45, i32 %47)
  br label %59

49:                                               ; preds = %31
  %50 = load %struct.tcp_pcb*, %struct.tcp_pcb** %4, align 8
  %51 = load i32, i32* @http_header_400, align 4
  %52 = load i32, i32* @http_header_400, align 4
  %53 = call i32 @LITLEN(i32 %52)
  %54 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %50, i32 %51, i32 %53)
  br label %59

55:                                               ; preds = %31
  %56 = load i32, i32* @ENDUSER_SETUP_ERR_UNKOWN_ERROR, align 4
  %57 = load i32, i32* @ENDUSER_SETUP_ERR_NONFATAL, align 4
  %58 = call i32 @ENDUSER_SETUP_ERROR_VOID(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %49, %40
  br label %60

60:                                               ; preds = %25, %59, %3
  ret void
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @enduser_setup_http_serve_header(%struct.tcp_pcb*, i32, i32) #1

declare dso_local i32 @LITLEN(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @enduser_setup_http_handle_credentials(i8*, i32) #1

declare dso_local i32 @enduser_setup_write_file_with_extra_configuration_data(i8*, i32) #1

declare dso_local i32 @ENDUSER_SETUP_ERROR_VOID(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
