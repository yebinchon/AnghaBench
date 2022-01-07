; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_print_chain_flags.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_print_chain_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@chain_flags = common dso_local global %struct.TYPE_3__* null, align 8
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\09%s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"NOT OK\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\09Suite B: \00", align 1
@SSL_CERT_FLAG_SUITEB_128_LOS = common dso_local global i32 0, align 4
@CERT_PKEY_SUITEB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"NOT OK\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"not tested\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_chain_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_chain_flags(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chain_flags, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %5, align 8
  br label %7

7:                                                ; preds = %26, %2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load i32, i32* @bio_err, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 (i32, i8*, ...) @BIO_printf(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %16, i8* %24)
  br label %26

26:                                               ; preds = %12
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 1
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %5, align 8
  br label %7

29:                                               ; preds = %7
  %30 = load i32, i32* @bio_err, align 4
  %31 = call i32 (i32, i8*, ...) @BIO_printf(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @SSL_set_cert_flags(i32* %32, i32 0)
  %34 = load i32, i32* @SSL_CERT_FLAG_SUITEB_128_LOS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load i32, i32* @bio_err, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CERT_PKEY_SUITEB, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %45 = call i32 @BIO_puts(i32 %38, i8* %44)
  br label %49

46:                                               ; preds = %29
  %47 = load i32, i32* @bio_err, align 4
  %48 = call i32 (i32, i8*, ...) @BIO_printf(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %37
  ret void
}

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @SSL_set_cert_flags(i32*, i32) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
