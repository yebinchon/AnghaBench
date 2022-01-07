; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_ClosePostmasterPorts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_ClosePostmasterPorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@postmaster_alive_fds = common dso_local global i32* null, align 8
@POSTMASTER_FD_OWN = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"could not close postmaster death monitoring pipe in child process: %m\00", align 1
@MAXLISTEN = common dso_local global i32 0, align 4
@ListenSocket = common dso_local global i64* null, align 8
@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@syslogPipe = common dso_local global i32* null, align 8
@bonjour_sdref = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClosePostmasterPorts(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @postmaster_alive_fds, align 8
  %5 = load i64, i64* @POSTMASTER_FD_OWN, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @close(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @FATAL, align 4
  %12 = call i32 (...) @errcode_for_file_access()
  %13 = call i32 @errmsg_internal(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @ereport(i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32*, i32** @postmaster_alive_fds, align 8
  %17 = load i64, i64* @POSTMASTER_FD_OWN, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %44, %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MAXLISTEN, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i64*, i64** @ListenSocket, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PGINVALID_SOCKET, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load i64*, i64** @ListenSocket, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @StreamClose(i64 %36)
  %38 = load i64, i64* @PGINVALID_SOCKET, align 8
  %39 = load i64*, i64** @ListenSocket, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %31, %23
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %19

47:                                               ; preds = %19
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** @syslogPipe, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32*, i32** @syslogPipe, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @close(i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32*, i32** @syslogPipe, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 -1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %47
  ret void
}

declare dso_local i64 @close(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg_internal(i8*) #1

declare dso_local i32 @StreamClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
