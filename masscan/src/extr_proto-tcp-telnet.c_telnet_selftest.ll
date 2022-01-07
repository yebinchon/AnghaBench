; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp-telnet.c_telnet_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp-telnet.c_telnet_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"\FF\FD\1Flogin:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\FF\FD'\FF\FD\18 \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"\FF\FB%\FF\FD\03\FF\FB\18\FF\FB\1F\FF\FB \FF\FB!\FF\FB\22\FF\FB'\FF\FD\05\FF\FB\01\FF\FB\03\FF\FD\18\FF\FD\1F\FF\FA\18\01\FF\F0\0D\0AUser Access Verification\0D\0A\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"User Access\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"\FF\FD\01\FF\FD\1F\FF\FD!\FF\FB\01\FF\FB\03F670\0D\0A\0DLogin: \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"F670\\n Login:\00", align 1
@__const.telnet_selftest.tests = private unnamed_addr constant [5 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon zeroinitializer], align 16
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"telnet: selftest fail, item %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @telnet_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telnet_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x %struct.anon], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = bitcast [5 x %struct.anon]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([5 x %struct.anon]* @__const.telnet_selftest.tests to i8*), i64 80, i1 false)
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %31, %0
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %2, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 16
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %2, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 16
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %2, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @telnet_selftest_item(i8* %16, i8* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %12
  %25 = load i32, i32* @stderr, align 4
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %1, align 4
  br label %35

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %6

34:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @telnet_selftest_item(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
