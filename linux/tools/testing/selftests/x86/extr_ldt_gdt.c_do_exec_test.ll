; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_do_exec_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_do_exec_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"[RUN]\09Test exec\0A\00", align 1
@AR_DPL3 = common dso_local global i32 0, align 4
@AR_TYPE_XRCODE = common dso_local global i32 0, align 4
@AR_S = common dso_local global i32 0, align 4
@AR_P = common dso_local global i32 0, align 4
@AR_DB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ldt_gdt_test_exec\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"[FAIL]\09Could not exec self\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"[FAIL]\09Child died\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"[FAIL]\09Child failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"[OK]\09Child succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_exec_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_exec_test() #0 {
  %1 = alloca %struct.user_desc, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %5 = bitcast %struct.user_desc* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 36, i1 false)
  %6 = bitcast i8* %5 to %struct.user_desc*
  %7 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %6, i32 0, i32 0
  store i32 42, i32* %7, align 4
  %8 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %6, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %6, i32 0, i32 2
  store i32 2, i32* %9, align 4
  %10 = load i32, i32* @AR_DPL3, align 4
  %11 = load i32, i32* @AR_TYPE_XRCODE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @AR_S, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AR_P, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @AR_DB, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @install_valid(%struct.user_desc* %1, i32 %18)
  %20 = call i64 (...) @fork()
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %0
  %24 = call i32 @execl(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %25 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @exit(i32 1) #4
  unreachable

27:                                               ; preds = %0
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @waitpid(i64 %28, i32* %3, i32 0)
  %30 = load i64, i64* %2, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @WIFEXITED(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32, %27
  %37 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32, i32* @nerrs, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @nerrs, align 4
  br label %51

40:                                               ; preds = %32
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @WEXITSTATUS(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32, i32* @nerrs, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @nerrs, align 4
  br label %50

48:                                               ; preds = %40
  %49 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50, %36
  br label %52

52:                                               ; preds = %51
  ret void
}

declare dso_local i32 @printf(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @install_valid(%struct.user_desc*, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @execl(i8*, i8*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
