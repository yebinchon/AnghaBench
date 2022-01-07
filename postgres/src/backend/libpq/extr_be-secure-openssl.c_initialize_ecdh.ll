; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_initialize_ecdh.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-openssl.c_initialize_ecdh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSLECDHCurve = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ECDH: unrecognized curve name: %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ECDH: could not create key\00", align 1
@SSL_OP_SINGLE_ECDH_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @initialize_ecdh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_ecdh(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @SSLECDHCurve, align 4
  %9 = call i32 @OBJ_sn2nid(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @FATAL, align 4
  br label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @LOG, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = load i32, i32* @SSLECDHCurve, align 4
  %24 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @ereport(i32 %20, i32 %24)
  store i32 0, i32* %3, align 4
  br label %53

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = call i32* @EC_KEY_new_by_curve_name(i32 %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @FATAL, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @LOG, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %39, i32 %42)
  store i32 0, i32* %3, align 4
  br label %53

44:                                               ; preds = %26
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @SSL_OP_SINGLE_ECDH_USE, align 4
  %47 = call i32 @SSL_CTX_set_options(i32* %45, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @SSL_CTX_set_tmp_ecdh(i32* %48, i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @EC_KEY_free(i32* %51)
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %44, %38, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @OBJ_sn2nid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32* @EC_KEY_new_by_curve_name(i32) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_tmp_ecdh(i32*, i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
