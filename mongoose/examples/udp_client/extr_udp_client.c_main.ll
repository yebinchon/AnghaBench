; ModuleID = '/home/carl/AnghaBench/mongoose/examples/udp_client/extr_udp_client.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/udp_client/extr_udp_client.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@ADDR_BUF_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Usage: %s <server:port> <data>\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"udp://%s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Connecting to '%s'\0A\00", align 1
@ev_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Failed to connect\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Sending '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Waiting for data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mg_mgr, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @ADDR_BUF_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = call i32 @mg_mgr_init(%struct.mg_mgr* %6, i32* null)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @EXIT_FAILURE, align 4
  %24 = call i32 @exit(i32 %23) #4
  unreachable

25:                                               ; preds = %2
  %26 = trunc i64 %11 to i32
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @snprintf(i8* %13, i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %33 = load i32, i32* @ev_handler, align 4
  %34 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %6, i8* %13, i32 %33)
  store %struct.mg_connection* %34, %struct.mg_connection** %9, align 8
  %35 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  %36 = icmp eq %struct.mg_connection* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @exit(i32 1) #4
  unreachable

41:                                               ; preds = %25
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  %47 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i32 @mg_send(%struct.mg_connection* %47, i8* %50, i32 %54)
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %58, %41
  %59 = call i32 @mg_mgr_poll(%struct.mg_mgr* %6, i32 10)
  br label %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #2

declare dso_local i32 @mg_send(%struct.mg_connection*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
