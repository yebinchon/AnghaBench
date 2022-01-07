; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_check_crl_dir.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_check_crl_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }

@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@OS_SPECIFIC_DIRSEP = common dso_local global i32 0, align 4
@D_HANDSHAKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"VERIFY CRL: filename overflow\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"VERIFY CRL: certificate serial number %s is revoked\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @verify_check_crl_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_check_crl_dir(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.gc_arena, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @FAILURE, align 4
  store i32 %10, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  %11 = call i32 (...) @gc_new()
  %12 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @backend_x509_get_serial(i32* %13, %struct.gc_arena* %8)
  store i8* %14, i8** %9, align 8
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @OS_SPECIFIC_DIRSEP, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @openvpn_snprintf(i8* %15, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @D_HANDSHAKE, align 4
  %23 = call i32 (i32, i8*, ...) @msg(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %36

24:                                               ; preds = %2
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = call i32 @platform_open(i8* %25, i32 %26, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @D_HANDSHAKE, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 (i32, i8*, ...) @msg(i32 %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @SUCCESS, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %30, %21
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @close(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = call i32 @gc_free(%struct.gc_arena* %8)
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i8* @backend_x509_get_serial(i32*, %struct.gc_arena*) #1

declare dso_local i32 @openvpn_snprintf(i8*, i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @platform_open(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
