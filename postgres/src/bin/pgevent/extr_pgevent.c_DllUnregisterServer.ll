; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgevent/extr_pgevent.c_DllUnregisterServer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgevent/extr_pgevent.c_DllUnregisterServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"SYSTEM\\CurrentControlSet\\Services\\EventLog\\Application\\%s\00", align 1
@event_source = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not delete the registry key.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"PostgreSQL error\00", align 1
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONSTOP = common dso_local global i32 0, align 4
@SELFREG_E_TYPELIB = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DllUnregisterServer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [400 x i8], align 16
  %3 = getelementptr inbounds [400 x i8], [400 x i8]* %2, i64 0, i64 0
  %4 = load i32, i32* @event_source, align 4
  %5 = call i32 @_snprintf(i8* %3, i32 400, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %7 = getelementptr inbounds [400 x i8], [400 x i8]* %2, i64 0, i64 0
  %8 = call i64 @RegDeleteKey(i32 %6, i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i32, i32* @MB_OK, align 4
  %12 = load i32, i32* @MB_ICONSTOP, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @MessageBox(i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @SELFREG_E_TYPELIB, align 4
  store i32 %15, i32* %1, align 4
  br label %18

16:                                               ; preds = %0
  %17 = load i32, i32* @S_OK, align 4
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %16, %10
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @RegDeleteKey(i32, i8*) #1

declare dso_local i32 @MessageBox(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
