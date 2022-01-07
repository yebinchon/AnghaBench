; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_send_reply.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ftp_cmd_buffer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@ftp_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@E_FTP_CLOSE_CMD_AND_DATA = common dso_local global i32 0, align 4
@E_FTP_CLOSE_DATA = common dso_local global i32 0, align 4
@E_FTP_CLOSE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @ftp_send_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftp_send_reply(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i64, i64* @ftp_cmd_buffer, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @snprintf(i8* %11, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i64, i64* @ftp_cmd_buffer, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @strcat(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i64, i64* @ftp_cmd_buffer, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strcat(i8* %18, i8* %19)
  %21 = load i64, i64* @ftp_cmd_buffer, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ftp_data, i32 0, i32 0), i32** %24, align 8
  %25 = load i64, i64* @ftp_cmd_buffer, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @strlen(i8* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @mem_Malloc(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 221
  br i1 %34, label %35, label %38

35:                                               ; preds = %9
  %36 = load i32, i32* @E_FTP_CLOSE_CMD_AND_DATA, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  br label %54

38:                                               ; preds = %9
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 426
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 451
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 550
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %41, %38
  %48 = load i32, i32* @E_FTP_CLOSE_DATA, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @E_FTP_CLOSE_NONE, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %35
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ftp_cmd_buffer, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i64 %61, i64 %62, i32 %64)
  %66 = call i32 @SOCKETFIFO_Push(%struct.TYPE_4__* %5)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @mem_Free(i64 %70)
  br label %72

72:                                               ; preds = %68, %59
  br label %73

73:                                               ; preds = %72, %54
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @mem_Malloc(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @SOCKETFIFO_Push(%struct.TYPE_4__*) #1

declare dso_local i32 @mem_Free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
