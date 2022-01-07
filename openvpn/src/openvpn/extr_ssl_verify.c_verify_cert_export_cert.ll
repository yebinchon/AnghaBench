; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_cert_export_cert.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_cert_export_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pcf\00", align 1
@M_NONFATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to create peer cert file\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@M_ERRNO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to open temporary file: %s\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"Error writing PEM file containing certificate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, %struct.gc_arena*)* @verify_cert_export_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @verify_cert_export_cert(i32* %0, i8* %1, %struct.gc_arena* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gc_arena*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.gc_arena* %2, %struct.gc_arena** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.gc_arena*, %struct.gc_arena** %7, align 8
  %15 = call i8* @platform_create_temp_file(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.gc_arena* %14)
  store i8* %15, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @M_NONFATAL, align 4
  %19 = call i32 (i32, i8*, ...) @msg(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %46

20:                                               ; preds = %12
  %21 = load i8*, i8** %9, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @M_NONFATAL, align 4
  %27 = load i32, i32* @M_ERRNO, align 4
  %28 = or i32 %26, %27
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 (i32, i8*, ...) @msg(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  store i8* null, i8** %4, align 8
  br label %46

31:                                               ; preds = %20
  %32 = load i64, i64* @SUCCESS, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @x509_write_pem(i32* %33, i32* %34)
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* @M_NONFATAL, align 4
  %39 = call i32 (i32, i8*, ...) @msg(i32 %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @platform_unlink(i8* %40)
  store i8* null, i8** %9, align 8
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @fclose(i32* %43)
  %45 = load i8*, i8** %9, align 8
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %42, %25, %17
  %47 = load i8*, i8** %4, align 8
  ret i8* %47
}

declare dso_local i8* @platform_create_temp_file(i8*, i8*, %struct.gc_arena*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @x509_write_pem(i32*, i32*) #1

declare dso_local i32 @platform_unlink(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
