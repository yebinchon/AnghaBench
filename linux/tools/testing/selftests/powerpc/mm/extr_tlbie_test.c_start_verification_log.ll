; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_tlbie_test.c_start_verification_log.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_tlbie_test.c_start_verification_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOGDIR_NAME_SIZE = common dso_local global i32 0, align 4
@__const.start_verification_log.separator = private unnamed_addr constant [2 x i8] c"/\00", align 1
@RIM_CHUNK_SIZE = common dso_local global i32 0, align 4
@logfilename = common dso_local global i8* null, align 8
@logdir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to create logfile\0A\00", align 1
@fp = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"----------------------------------------------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"PID                = %d\0A\00", align 1
@rim_process_pid = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Thread id          = %02d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Chunk Start Addr   = 0x%016lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Chunk Size         = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Next Store Addr    = 0x%016lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Current sweep-id   = 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Previous sweep-id  = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32)* @start_verification_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_verification_log(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [30 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [2 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @LOGDIR_NAME_SIZE, align 4
  %17 = add nsw i32 %16, 30
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = bitcast [2 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.start_verification_log.separator, i32 0, i32 0), i64 2, i1 false)
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @compute_chunk_start_addr(i32 %22)
  store i8* %23, i8** %14, align 8
  %24 = load i32, i32* @RIM_CHUNK_SIZE, align 4
  store i32 %24, i32* %15, align 4
  %25 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %26 = load i8*, i8** @logfilename, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @sprintf(i8* %25, i8* %26, i32 %27)
  %29 = load i32, i32* @logdir, align 4
  %30 = call i32 @strcpy(i8* %20, i32 %29)
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %32 = call i32 @strcat(i8* %20, i8* %31)
  %33 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %34 = call i32 @strcat(i8* %20, i8* %33)
  %35 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %4
  %39 = call i32 @err_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32**, i32*** @fp, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* %41, i32** %45, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* @rim_process_pid, align 4
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = ptrtoint i32* %62 to i64
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @compute_chunk_start_addr(i32) #3

declare dso_local i32 @sprintf(i8*, i8*, i32) #3

declare dso_local i32 @strcpy(i8*, i32) #3

declare dso_local i32 @strcat(i8*, i8*) #3

declare dso_local i32* @fopen(i8*, i8*) #3

declare dso_local i32 @err_msg(i8*) #3

declare dso_local i32 @fprintf(i32*, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
