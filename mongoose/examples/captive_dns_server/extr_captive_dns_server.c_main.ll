; ModuleID = '/home/carl/AnghaBench/mongoose/examples/captive_dns_server/extr_captive_dns_server.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/captive_dns_server/extr_captive_dns_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i8* }
%struct.mg_connection = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@s_our_ip_addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@s_listening_addr = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Listening on '%s'\0A\00", align 1
@ev_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"cannot bind to socket\0A\00", align 1
@s_exit_flag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mg_mgr, align 8
  %7 = alloca %struct.mg_connection*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 @mg_mgr_init(%struct.mg_mgr* %6, i32* null)
  %10 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* @s_our_ip_addr, align 4
  store i32 1, i32* %8, align 4
  br label %11

11:                                               ; preds = %60, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %6, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  br label %59

31:                                               ; preds = %15
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** @s_listening_addr, align 8
  br label %58

51:                                               ; preds = %39, %31
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @inet_addr(i8* %56)
  store i32 %57, i32* @s_our_ip_addr, align 4
  br label %58

58:                                               ; preds = %51, %44
  br label %59

59:                                               ; preds = %58, %23
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %11

63:                                               ; preds = %11
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8*, i8** @s_listening_addr, align 8
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = load i8*, i8** @s_listening_addr, align 8
  %68 = load i32, i32* @ev_handler, align 4
  %69 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %6, i8* %67, i32 %68)
  store %struct.mg_connection* %69, %struct.mg_connection** %7, align 8
  %70 = icmp eq %struct.mg_connection* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %63
  %76 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %77 = call i32 @mg_set_protocol_dns(%struct.mg_connection* %76)
  br label %78

78:                                               ; preds = %81, %75
  %79 = load i64, i64* @s_exit_flag, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @mg_mgr_poll(%struct.mg_mgr* %6, i32 1000)
  br label %78

83:                                               ; preds = %78
  %84 = call i32 @mg_mgr_free(%struct.mg_mgr* %6)
  ret i32 0
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @mg_set_protocol_dns(%struct.mg_connection*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
