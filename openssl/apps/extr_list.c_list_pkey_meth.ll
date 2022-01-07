; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_list.c_list_pkey_meth.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_list.c_list_pkey_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\09Type: %s Algorithm\0A\00", align 1
@ASN1_PKEY_DYNAMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Builtin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_pkey_meth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_pkey_meth() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i64 (...) @EVP_PKEY_meth_get_count()
  store i64 %6, i64* %2, align 8
  store i64 0, i64* %1, align 8
  br label %7

7:                                                ; preds = %28, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = call i32* @EVP_PKEY_meth_get0(i64 %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @EVP_PKEY_meth_get0_info(i32* %4, i32* %5, i32* %14)
  %16 = load i32, i32* @bio_out, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @OBJ_nid2ln(i32 %17)
  %19 = call i32 @BIO_printf(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @bio_out, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ASN1_PKEY_DYNAMIC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %27 = call i32 @BIO_printf(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %11
  %29 = load i64, i64* %1, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %1, align 8
  br label %7

31:                                               ; preds = %7
  ret void
}

declare dso_local i64 @EVP_PKEY_meth_get_count(...) #1

declare dso_local i32* @EVP_PKEY_meth_get0(i64) #1

declare dso_local i32 @EVP_PKEY_meth_get0_info(i32*, i32*, i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i8* @OBJ_nid2ln(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
