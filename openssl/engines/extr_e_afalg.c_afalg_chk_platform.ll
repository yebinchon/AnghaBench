; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_afalg.c_afalg_chk_platform.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_afalg.c_afalg_chk_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i32* }

@__const.afalg_chk_platform.kver = private unnamed_addr constant [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@AFALG_F_AFALG_CHK_PLATFORM = common dso_local global i32 0, align 4
@AFALG_R_FAILED_TO_GET_PLATFORM_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@K_MAJ = common dso_local global i32 0, align 4
@K_MIN1 = common dso_local global i32 0, align 4
@K_MIN2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ASYNC AFALG not supported this kernel(%d.%d.%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"ASYNC AFALG requires kernel version %d.%d.%d or later\0A\00", align 1
@AFALG_R_KERNEL_DOES_NOT_SUPPORT_ASYNC_AFALG = common dso_local global i32 0, align 4
@AF_ALG = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@AFALG_R_SOCKET_CREATE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @afalg_chk_platform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afalg_chk_platform() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.utsname, align 8
  %8 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([3 x i32]* @__const.afalg_chk_platform.kver to i8*), i64 12, i1 false)
  %9 = call i32 @uname(%struct.utsname* %7)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i32, i32* @AFALG_F_AFALG_CHK_PLATFORM, align 4
  %14 = load i32, i32* @AFALG_R_FAILED_TO_GET_PLATFORM_INFO, align 4
  %15 = call i32 @AFALGerr(i32 %13, i32 %14)
  store i32 0, i32* %1, align 4
  br label %79

16:                                               ; preds = %0
  %17 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i8* @strtok(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %6, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %35, %16
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br i1 %27, label %28, label %38

28:                                               ; preds = %26
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @atoi(i8* %29)
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = call i8* @strtok(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %20

38:                                               ; preds = %26
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @KERNEL_VERSION(i32 %40, i32 %42, i32 %44)
  %46 = load i32, i32* @K_MAJ, align 4
  %47 = load i32, i32* @K_MIN1, align 4
  %48 = load i32, i32* @K_MIN2, align 4
  %49 = call i64 @KERNEL_VERSION(i32 %46, i32 %47, i32 %48)
  %50 = icmp slt i64 %45, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %38
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ALG_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %55, i32 %57)
  %59 = load i32, i32* @K_MAJ, align 4
  %60 = load i32, i32* @K_MIN1, align 4
  %61 = load i32, i32* @K_MIN2, align 4
  %62 = call i32 @ALG_ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @AFALG_F_AFALG_CHK_PLATFORM, align 4
  %64 = load i32, i32* @AFALG_R_KERNEL_DOES_NOT_SUPPORT_ASYNC_AFALG, align 4
  %65 = call i32 @AFALGerr(i32 %63, i32 %64)
  store i32 0, i32* %1, align 4
  br label %79

66:                                               ; preds = %38
  %67 = load i32, i32* @AF_ALG, align 4
  %68 = load i32, i32* @SOCK_SEQPACKET, align 4
  %69 = call i32 @socket(i32 %67, i32 %68, i32 0)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @AFALG_F_AFALG_CHK_PLATFORM, align 4
  %74 = load i32, i32* @AFALG_R_SOCKET_CREATE_FAILED, align 4
  %75 = call i32 @AFALGerr(i32 %73, i32 %74)
  store i32 0, i32* %1, align 4
  br label %79

76:                                               ; preds = %66
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @close(i32 %77)
  store i32 1, i32* %1, align 4
  br label %79

79:                                               ; preds = %76, %72, %51, %12
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @uname(%struct.utsname*) #2

declare dso_local i32 @AFALGerr(i32, i32) #2

declare dso_local i8* @strtok(i32*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i64 @KERNEL_VERSION(i32, i32, i32) #2

declare dso_local i32 @ALG_ERR(i8*, i32, i32, i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
